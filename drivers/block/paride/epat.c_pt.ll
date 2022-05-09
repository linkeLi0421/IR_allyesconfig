; ModuleID = '/llk/IR_all_yes/drivers/block/paride/epat.c_pt.bc'
source_filename = "../drivers/block/paride/epat.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.41 }
%union.anon.41 = type { ptr }
%struct.pi_protocol = type { [8 x i8], i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pi_adapter = type { ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, %struct.wait_queue_head, ptr, ptr, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }

@__param_str_epatc8 = internal constant [12 x i8] c"epat.epatc8\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@epatc8 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_epatc8 = internal constant %struct.kernel_param { ptr @__param_str_epatc8, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.41 { ptr @epatc8 } }, section "__param", align 4
@__UNIQUE_ID_epatc8type160 = internal constant [25 x i8] c"epat.parmtype=epatc8:int\00", section ".modinfo", align 1
@__UNIQUE_ID_epatc8161 = internal constant [107 x i8] c"epat.parm=epatc8:support for the Shuttle EP1284 chip, used in any recent Imation SuperDisk (LS-120) drive.\00", section ".modinfo", align 1
@epat = internal global { %struct.pi_protocol, [48 x i8] } { %struct.pi_protocol { [8 x i8] c"epat\00\00\00\00", i32 0, i32 6, i32 3, i32 1, i32 1, ptr @epat_write_regr, ptr @epat_read_regr, ptr @epat_write_block, ptr @epat_read_block, ptr @epat_connect, ptr @epat_disconnect, ptr null, ptr null, ptr @epat_test_proto, ptr @epat_log_adapter, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_file162 = internal constant [36 x i8] c"epat.file=drivers/block/paride/epat\00", section ".modinfo", align 1
@__UNIQUE_ID_license163 = internal constant [17 x i8] c"epat.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_epat__164_339_epat_init6 = internal global ptr @epat_init, section ".initcall6.init", align 4
@__exitcall_epat_exit = internal global ptr @epat_exit, section ".exitcall.exit", align 4
@cont_map = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 24, i32 16, i32 0], [20 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@epat_test_proto._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 284, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"%s: epat: port 0x%x, mode %d, ccr %x, test=(%d,%d,%d)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"epat_test_proto\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/block/paride/epat.c\00", [36 x i8] zeroinitializer }, align 32
@epat_test_proto._entry_ptr = internal global ptr @epat_test_proto._entry, section ".printk_index", align 4
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"4-bit\00", [26 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"5/3\00", [28 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"8-bit\00", [26 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"EPP-8\00", [26 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"EPP-16\00", [25 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"EPP-32\00", [25 x i8] zeroinitializer }, align 32
@__const.epat_log_adapter.mode_string = private unnamed_addr constant [6 x ptr] [ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], align 4
@epat_log_adapter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 302, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: epat %s, Shuttle EPAT chip %x at 0x%x, \00", [52 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"epat_log_adapter\00", [47 x i8] zeroinitializer }, align 32
@epat_log_adapter._entry_ptr = internal global ptr @epat_log_adapter._entry, section ".printk_index", align 4
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"1.02\00", [27 x i8] zeroinitializer }, align 32
@epat_log_adapter._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.10, ptr @.str.2, i32 304, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mode %d (%s), delay %d\0A\00", [40 x i8] zeroinitializer }, align 32
@epat_log_adapter._entry_ptr.14 = internal global ptr @epat_log_adapter._entry.12, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.15 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.16 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.17 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@___asan_gen_.18 = private unnamed_addr constant [7 x i8] c"epatc8\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 34, i32 12 }
@___asan_gen_.21 = private unnamed_addr constant [5 x i8] c"epat\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 308, i32 27 }
@___asan_gen_.24 = private unnamed_addr constant [9 x i8] c"cont_map\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 45, i32 12 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 283, i32 13 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 294, i32 7 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 294, i32 15 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 294, i32 21 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 294, i32 29 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 294, i32 37 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 294, i32 46 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 301, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.72 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.73 = private constant [31 x i8] c"../drivers/block/paride/epat.c\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 303, i32 2 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @__UNIQUE_ID_epatc8161, ptr @__UNIQUE_ID_epatc8type160, ptr @__UNIQUE_ID_file162, ptr @__UNIQUE_ID_license163, ptr @__exitcall_epat_exit, ptr @__initcall__kmod_epat__164_339_epat_init6, ptr @__param_epatc8, ptr @epat_exit, ptr @epat_log_adapter._entry, ptr @epat_log_adapter._entry.12, ptr @epat_log_adapter._entry_ptr, ptr @epat_log_adapter._entry_ptr.14, ptr @epat_test_proto._entry, ptr @epat_test_proto._entry_ptr, ptr @epatc8, ptr @epat, ptr @cont_map, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @epatc8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @epat to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cont_map to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @epat_test_proto._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @epat_log_adapter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @epat_log_adapter._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @epat_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @paride_unregister(ptr noundef nonnull @epat) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @paride_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @epat_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  store i32 1, ptr @epatc8, align 4
  %call = tail call i32 @paride_register(ptr noundef nonnull @epat) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @epat_write_regr(ptr nocapture noundef readonly %pi, i32 noundef %cont, i32 noundef %regr, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
    i32 1, label %entry.do.body_crit_edge194
    i32 2, label %entry.do.body_crit_edge195
    i32 3, label %entry.do.body95_crit_edge
    i32 4, label %entry.do.body95_crit_edge196
    i32 5, label %entry.do.body95_crit_edge197
  ]

entry.do.body95_crit_edge197:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body95

entry.do.body95_crit_edge196:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body95

entry.do.body95_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body95

entry.do.body_crit_edge195:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

entry.do.body_crit_edge194:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.body:                                          ; preds = %entry.do.body_crit_edge, %entry.do.body_crit_edge194, %entry.do.body_crit_edge195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !56
  tail call void @arm_heavy_mb() #5
  %5 = trunc i32 %add to i8
  %conv = add i8 %5, 96
  %port = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %6 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port, align 4
  %and = and i32 %7, 1048575
  %add3 = or i32 %and, -18874368
  %8 = inttoptr i32 %add3 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 %conv) #5, !srcloc !57
  %delay = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %9 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %do.body.do.body15_crit_edge, label %cond.false10

do.body.do.body15_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body15

cond.false10:                                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %11(i32 noundef %10) #5
  br label %do.body15

do.body15:                                        ; preds = %cond.false10, %do.body.do.body15_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !58
  tail call void @arm_heavy_mb() #5
  %12 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port, align 4
  %add19 = add i32 %13, 2
  %and20 = and i32 %add19, 1048575
  %add21 = or i32 %and20, -18874368
  %14 = inttoptr i32 %add21 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 1) #5, !srcloc !57
  %15 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool24.not = icmp eq i32 %16, 0
  br i1 %tobool24.not, label %do.body15.do.body41_crit_edge, label %cond.false36

do.body15.do.body41_crit_edge:                    ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body41

cond.false36:                                     ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %17(i32 noundef %16) #5
  br label %do.body41

do.body41:                                        ; preds = %cond.false36, %do.body15.do.body41_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !59
  tail call void @arm_heavy_mb() #5
  %conv44 = trunc i32 %val to i8
  %18 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %port, align 4
  %and47 = and i32 %19, 1048575
  %add48 = or i32 %and47, -18874368
  %20 = inttoptr i32 %add48 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 %conv44) #5, !srcloc !57
  %21 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool51.not = icmp eq i32 %22, 0
  br i1 %tobool51.not, label %do.body41.do.body68_crit_edge, label %cond.false63

do.body41.do.body68_crit_edge:                    ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body68

cond.false63:                                     ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %23(i32 noundef %22) #5
  br label %do.body68

do.body68:                                        ; preds = %cond.false63, %do.body41.do.body68_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  tail call void @arm_heavy_mb() #5
  %24 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %port, align 4
  %add72 = add i32 %25, 2
  %and73 = and i32 %add72, 1048575
  %add74 = or i32 %and73, -18874368
  %26 = inttoptr i32 %add74 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %26, i8 4) #5, !srcloc !57
  %27 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool77.not = icmp eq i32 %28, 0
  br i1 %tobool77.not, label %do.body68.sw.epilog_crit_edge, label %do.body68.sw.epilog.sink.split_crit_edge

do.body68.sw.epilog.sink.split_crit_edge:         ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

do.body68.sw.epilog_crit_edge:                    ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.body95:                                        ; preds = %entry.do.body95_crit_edge, %entry.do.body95_crit_edge196, %entry.do.body95_crit_edge197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !61
  tail call void @arm_heavy_mb() #5
  %29 = trunc i32 %add to i8
  %conv99 = add i8 %29, 64
  %port100 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %30 = ptrtoint ptr %port100 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %port100, align 4
  %add101 = add i32 %31, 3
  %and102 = and i32 %add101, 1048575
  %add103 = or i32 %and102, -18874368
  %32 = inttoptr i32 %add103 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %32, i8 %conv99) #5, !srcloc !57
  %delay105 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %33 = ptrtoint ptr %delay105 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %delay105, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool106.not = icmp eq i32 %34, 0
  br i1 %tobool106.not, label %do.body95.do.body123_crit_edge, label %cond.false118

do.body95.do.body123_crit_edge:                   ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body123

cond.false118:                                    ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %35(i32 noundef %34) #5
  br label %do.body123

do.body123:                                       ; preds = %cond.false118, %do.body95.do.body123_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !62
  tail call void @arm_heavy_mb() #5
  %conv126 = trunc i32 %val to i8
  %36 = ptrtoint ptr %port100 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %port100, align 4
  %add128 = add i32 %37, 4
  %and129 = and i32 %add128, 1048575
  %add130 = or i32 %and129, -18874368
  %38 = inttoptr i32 %add130 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %38, i8 %conv126) #5, !srcloc !57
  %39 = ptrtoint ptr %delay105 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %delay105, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool133.not = icmp eq i32 %40, 0
  br i1 %tobool133.not, label %do.body123.sw.epilog_crit_edge, label %do.body123.sw.epilog.sink.split_crit_edge

do.body123.sw.epilog.sink.split_crit_edge:        ; preds = %do.body123
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

do.body123.sw.epilog_crit_edge:                   ; preds = %do.body123
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.epilog.sink.split:                             ; preds = %do.body123.sw.epilog.sink.split_crit_edge, %do.body68.sw.epilog.sink.split_crit_edge
  %.sink = phi i32 [ %28, %do.body68.sw.epilog.sink.split_crit_edge ], [ %40, %do.body123.sw.epilog.sink.split_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %41(i32 noundef %.sink) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %do.body123.sw.epilog_crit_edge, %do.body68.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @epat_read_regr(ptr nocapture noundef readonly %pi, i32 noundef %cont, i32 noundef %regr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 0, label %do.body
    i32 1, label %do.body150
    i32 2, label %do.body317
    i32 3, label %entry.do.body452_crit_edge
    i32 4, label %entry.do.body452_crit_edge724
    i32 5, label %entry.do.body452_crit_edge725
  ]

entry.do.body452_crit_edge725:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body452

entry.do.body452_crit_edge724:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body452

entry.do.body452_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body452

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !63
  tail call void @arm_heavy_mb() #5
  %conv = trunc i32 %add to i8
  %port = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %5 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %port, align 4
  %and = and i32 %6, 1048575
  %add2 = or i32 %and, -18874368
  %7 = inttoptr i32 %add2 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %7, i8 %conv) #5, !srcloc !57
  %delay = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %8 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %do.body.do.body14_crit_edge, label %cond.false9

do.body.do.body14_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body14

cond.false9:                                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %10(i32 noundef %9) #5
  br label %do.body14

do.body14:                                        ; preds = %cond.false9, %do.body.do.body14_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !64
  tail call void @arm_heavy_mb() #5
  %11 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %port, align 4
  %add18 = add i32 %12, 2
  %and19 = and i32 %add18, 1048575
  %add20 = or i32 %and19, -18874368
  %13 = inttoptr i32 %add20 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 1) #5, !srcloc !57
  %14 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool23.not = icmp eq i32 %15, 0
  br i1 %tobool23.not, label %do.body14.do.body40_crit_edge, label %cond.false35

do.body14.do.body40_crit_edge:                    ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body40

cond.false35:                                     ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %16(i32 noundef %15) #5
  br label %do.body40

do.body40:                                        ; preds = %cond.false35, %do.body14.do.body40_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !65
  tail call void @arm_heavy_mb() #5
  %17 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %port, align 4
  %add44 = add i32 %18, 2
  %and45 = and i32 %add44, 1048575
  %add46 = or i32 %and45, -18874368
  %19 = inttoptr i32 %add46 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %19, i8 3) #5, !srcloc !57
  %20 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool49.not = icmp eq i32 %21, 0
  br i1 %tobool49.not, label %do.body40.cond.end83_crit_edge, label %cond.false61

do.body40.cond.end83_crit_edge:                   ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end83

cond.false61:                                     ; preds = %do.body40
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %22(i32 noundef %21) #5
  %23 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pr = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool67.not = icmp eq i32 %.pr, 0
  br i1 %tobool67.not, label %cond.false61.cond.end83_crit_edge, label %cond.false79

cond.false61.cond.end83_crit_edge:                ; preds = %cond.false61
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end83

cond.false79:                                     ; preds = %cond.false61
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %24(i32 noundef %.pr) #5
  br label %cond.end83

cond.end83:                                       ; preds = %cond.false79, %cond.false61.cond.end83_crit_edge, %do.body40.cond.end83_crit_edge
  %25 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %port, align 4
  %add85 = add i32 %26, 1
  %and86 = and i32 %add85, 1048575
  %add87 = or i32 %and86, -18874368
  %27 = inttoptr i32 %add87 to ptr
  %28 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %27) #5, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !68
  tail call void @arm_heavy_mb() #5
  %29 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %port, align 4
  %add96 = add i32 %30, 2
  %and97 = and i32 %add96, 1048575
  %add98 = or i32 %and97, -18874368
  %31 = inttoptr i32 %add98 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %31, i8 4) #5, !srcloc !57
  %32 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool101.not = icmp eq i32 %33, 0
  br i1 %tobool101.not, label %cond.end83.cond.end135_crit_edge, label %cond.false113

cond.end83.cond.end135_crit_edge:                 ; preds = %cond.end83
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end135

cond.false113:                                    ; preds = %cond.end83
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %34(i32 noundef %33) #5
  %35 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %35)
  %.pr716 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr716)
  %tobool119.not = icmp eq i32 %.pr716, 0
  br i1 %tobool119.not, label %cond.false113.cond.end135_crit_edge, label %cond.false131

cond.false113.cond.end135_crit_edge:              ; preds = %cond.false113
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end135

cond.false131:                                    ; preds = %cond.false113
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %36(i32 noundef %.pr716) #5
  br label %cond.end135

cond.end135:                                      ; preds = %cond.false131, %cond.false113.cond.end135_crit_edge, %cond.end83.cond.end135_crit_edge
  %37 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %port, align 4
  %add138 = add i32 %38, 1
  %and139 = and i32 %add138, 1048575
  %add140 = or i32 %and139, -18874368
  %39 = inttoptr i32 %add140 to ptr
  %40 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %39) #5, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !69
  %41 = lshr i8 %28, 4
  %42 = and i8 %40, -16
  %add148714 = or i8 %42, %41
  %add148 = zext i8 %add148714 to i32
  br label %cleanup

do.body150:                                       ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !70
  tail call void @arm_heavy_mb() #5
  %43 = trunc i32 %add to i8
  %conv154 = add i8 %43, 64
  %port155 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %44 = ptrtoint ptr %port155 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %port155, align 4
  %and157 = and i32 %45, 1048575
  %add158 = or i32 %and157, -18874368
  %46 = inttoptr i32 %add158 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %46, i8 %conv154) #5, !srcloc !57
  %delay160 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %47 = ptrtoint ptr %delay160 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %delay160, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool161.not = icmp eq i32 %48, 0
  br i1 %tobool161.not, label %do.body150.do.body178_crit_edge, label %cond.false173

do.body150.do.body178_crit_edge:                  ; preds = %do.body150
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body178

cond.false173:                                    ; preds = %do.body150
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %49(i32 noundef %48) #5
  br label %do.body178

do.body178:                                       ; preds = %cond.false173, %do.body150.do.body178_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  tail call void @arm_heavy_mb() #5
  %50 = ptrtoint ptr %port155 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %port155, align 4
  %add182 = add i32 %51, 2
  %and183 = and i32 %add182, 1048575
  %add184 = or i32 %and183, -18874368
  %52 = inttoptr i32 %add184 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %52, i8 1) #5, !srcloc !57
  %53 = ptrtoint ptr %delay160 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %delay160, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool187.not = icmp eq i32 %54, 0
  br i1 %tobool187.not, label %do.body178.do.body204_crit_edge, label %cond.false199

do.body178.do.body204_crit_edge:                  ; preds = %do.body178
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body204

cond.false199:                                    ; preds = %do.body178
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %55 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %55(i32 noundef %54) #5
  br label %do.body204

do.body204:                                       ; preds = %cond.false199, %do.body178.do.body204_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !72
  tail call void @arm_heavy_mb() #5
  %56 = ptrtoint ptr %port155 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %port155, align 4
  %add208 = add i32 %57, 2
  %and209 = and i32 %add208, 1048575
  %add210 = or i32 %and209, -18874368
  %58 = inttoptr i32 %add210 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %58, i8 4) #5, !srcloc !57
  %59 = ptrtoint ptr %delay160 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %delay160, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool213.not = icmp eq i32 %60, 0
  br i1 %tobool213.not, label %do.body204.cond.end247_crit_edge, label %cond.false225

do.body204.cond.end247_crit_edge:                 ; preds = %do.body204
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end247

cond.false225:                                    ; preds = %do.body204
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %61 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %61(i32 noundef %60) #5
  %62 = ptrtoint ptr %delay160 to i32
  call void @__asan_load4_noabort(i32 %62)
  %.pr718 = load i32, ptr %delay160, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr718)
  %tobool231.not = icmp eq i32 %.pr718, 0
  br i1 %tobool231.not, label %cond.false225.cond.end247_crit_edge, label %cond.false243

cond.false225.cond.end247_crit_edge:              ; preds = %cond.false225
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end247

cond.false243:                                    ; preds = %cond.false225
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %63 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %63(i32 noundef %.pr718) #5
  br label %cond.end247

cond.end247:                                      ; preds = %cond.false243, %cond.false225.cond.end247_crit_edge, %do.body204.cond.end247_crit_edge
  %64 = ptrtoint ptr %port155 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %port155, align 4
  %add250 = add i32 %65, 1
  %and251 = and i32 %add250, 1048575
  %add252 = or i32 %and251, -18874368
  %66 = inttoptr i32 %add252 to ptr
  %67 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %66) #5, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !73
  %68 = ptrtoint ptr %delay160 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %delay160, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool259.not = icmp eq i32 %69, 0
  br i1 %tobool259.not, label %cond.end247.cond.end275_crit_edge, label %cond.false271

cond.end247.cond.end275_crit_edge:                ; preds = %cond.end247
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end275

cond.false271:                                    ; preds = %cond.end247
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %70 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %70(i32 noundef %69) #5
  br label %cond.end275

cond.end275:                                      ; preds = %cond.false271, %cond.end247.cond.end275_crit_edge
  %71 = ptrtoint ptr %port155 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %port155, align 4
  %add278 = add i32 %72, 2
  %and279 = and i32 %add278, 1048575
  %add280 = or i32 %and279, -18874368
  %73 = inttoptr i32 %add280 to ptr
  %74 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %73) #5, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !74
  %conv284 = zext i8 %74 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !75
  tail call void @arm_heavy_mb() #5
  %75 = ptrtoint ptr %port155 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %port155, align 4
  %and291 = and i32 %76, 1048575
  %add292 = or i32 %and291, -18874368
  %77 = inttoptr i32 %add292 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %77, i8 -1) #5, !srcloc !57
  %78 = ptrtoint ptr %delay160 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %delay160, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool295.not = icmp eq i32 %79, 0
  br i1 %tobool295.not, label %cond.end275.cond.end311_crit_edge, label %cond.false307

cond.end275.cond.end311_crit_edge:                ; preds = %cond.end275
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end311

cond.false307:                                    ; preds = %cond.end275
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %80 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %80(i32 noundef %79) #5
  br label %cond.end311

cond.end311:                                      ; preds = %cond.false307, %cond.end275.cond.end311_crit_edge
  %81 = lshr i8 %67, 3
  %82 = zext i8 %81 to i32
  %shl = shl nuw nsw i32 %conv284, 4
  %and314 = and i32 %shl, 224
  %add315 = or i32 %and314, %82
  br label %cleanup

do.body317:                                       ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !76
  tail call void @arm_heavy_mb() #5
  %83 = trunc i32 %add to i8
  %conv321 = add i8 %83, 32
  %port322 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %84 = ptrtoint ptr %port322 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %port322, align 4
  %and324 = and i32 %85, 1048575
  %add325 = or i32 %and324, -18874368
  %86 = inttoptr i32 %add325 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %86, i8 %conv321) #5, !srcloc !57
  %delay327 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %87 = ptrtoint ptr %delay327 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %delay327, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool328.not = icmp eq i32 %88, 0
  br i1 %tobool328.not, label %do.body317.do.body345_crit_edge, label %cond.false340

do.body317.do.body345_crit_edge:                  ; preds = %do.body317
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body345

cond.false340:                                    ; preds = %do.body317
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %89 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %89(i32 noundef %88) #5
  br label %do.body345

do.body345:                                       ; preds = %cond.false340, %do.body317.do.body345_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !77
  tail call void @arm_heavy_mb() #5
  %90 = ptrtoint ptr %port322 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %port322, align 4
  %add349 = add i32 %91, 2
  %and350 = and i32 %add349, 1048575
  %add351 = or i32 %and350, -18874368
  %92 = inttoptr i32 %add351 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %92, i8 1) #5, !srcloc !57
  %93 = ptrtoint ptr %delay327 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %delay327, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool354.not = icmp eq i32 %94, 0
  br i1 %tobool354.not, label %do.body345.do.body371_crit_edge, label %cond.false366

do.body345.do.body371_crit_edge:                  ; preds = %do.body345
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body371

cond.false366:                                    ; preds = %do.body345
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %95 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %95(i32 noundef %94) #5
  br label %do.body371

do.body371:                                       ; preds = %cond.false366, %do.body345.do.body371_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !78
  tail call void @arm_heavy_mb() #5
  %96 = ptrtoint ptr %port322 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %port322, align 4
  %add375 = add i32 %97, 2
  %and376 = and i32 %add375, 1048575
  %add377 = or i32 %and376, -18874368
  %98 = inttoptr i32 %add377 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %98, i8 37) #5, !srcloc !57
  %99 = ptrtoint ptr %delay327 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %delay327, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %tobool380.not = icmp eq i32 %100, 0
  br i1 %tobool380.not, label %do.body371.cond.end414_crit_edge, label %cond.false392

do.body371.cond.end414_crit_edge:                 ; preds = %do.body371
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end414

cond.false392:                                    ; preds = %do.body371
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %101 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %101(i32 noundef %100) #5
  %102 = ptrtoint ptr %delay327 to i32
  call void @__asan_load4_noabort(i32 %102)
  %.pr720 = load i32, ptr %delay327, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr720)
  %tobool398.not = icmp eq i32 %.pr720, 0
  br i1 %tobool398.not, label %cond.false392.cond.end414_crit_edge, label %cond.false410

cond.false392.cond.end414_crit_edge:              ; preds = %cond.false392
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end414

cond.false410:                                    ; preds = %cond.false392
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %103 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %103(i32 noundef %.pr720) #5
  br label %cond.end414

cond.end414:                                      ; preds = %cond.false410, %cond.false392.cond.end414_crit_edge, %do.body371.cond.end414_crit_edge
  %104 = ptrtoint ptr %port322 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %port322, align 4
  %and418 = and i32 %105, 1048575
  %add419 = or i32 %and418, -18874368
  %106 = inttoptr i32 %add419 to ptr
  %107 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %106) #5, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !79
  %conv423 = zext i8 %107 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !80
  tail call void @arm_heavy_mb() #5
  %108 = ptrtoint ptr %port322 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %port322, align 4
  %add429 = add i32 %109, 2
  %and430 = and i32 %add429, 1048575
  %add431 = or i32 %and430, -18874368
  %110 = inttoptr i32 %add431 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %110, i8 4) #5, !srcloc !57
  %111 = ptrtoint ptr %delay327 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %delay327, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %tobool434.not = icmp eq i32 %112, 0
  br i1 %tobool434.not, label %cond.end414.cleanup_crit_edge, label %cond.false446

cond.end414.cleanup_crit_edge:                    ; preds = %cond.end414
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cond.false446:                                    ; preds = %cond.end414
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %113 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %113(i32 noundef %112) #5
  br label %cleanup

do.body452:                                       ; preds = %entry.do.body452_crit_edge, %entry.do.body452_crit_edge724, %entry.do.body452_crit_edge725
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !81
  tail call void @arm_heavy_mb() #5
  %conv455 = trunc i32 %add to i8
  %port456 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %114 = ptrtoint ptr %port456 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %port456, align 4
  %add457 = add i32 %115, 3
  %and458 = and i32 %add457, 1048575
  %add459 = or i32 %and458, -18874368
  %116 = inttoptr i32 %add459 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %116, i8 %conv455) #5, !srcloc !57
  %delay461 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %117 = ptrtoint ptr %delay461 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %delay461, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %tobool462.not = icmp eq i32 %118, 0
  br i1 %tobool462.not, label %do.body452.do.body479_crit_edge, label %cond.false474

do.body452.do.body479_crit_edge:                  ; preds = %do.body452
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body479

cond.false474:                                    ; preds = %do.body452
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %119 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %119(i32 noundef %118) #5
  br label %do.body479

do.body479:                                       ; preds = %cond.false474, %do.body452.do.body479_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !82
  tail call void @arm_heavy_mb() #5
  %120 = ptrtoint ptr %port456 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %port456, align 4
  %add483 = add i32 %121, 2
  %and484 = and i32 %add483, 1048575
  %add485 = or i32 %and484, -18874368
  %122 = inttoptr i32 %add485 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %122, i8 36) #5, !srcloc !57
  %123 = ptrtoint ptr %delay461 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %delay461, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %tobool488.not = icmp eq i32 %124, 0
  br i1 %tobool488.not, label %do.body479.cond.end522_crit_edge, label %cond.false500

do.body479.cond.end522_crit_edge:                 ; preds = %do.body479
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end522

cond.false500:                                    ; preds = %do.body479
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %125 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %125(i32 noundef %124) #5
  %126 = ptrtoint ptr %delay461 to i32
  call void @__asan_load4_noabort(i32 %126)
  %.pr722 = load i32, ptr %delay461, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr722)
  %tobool506.not = icmp eq i32 %.pr722, 0
  br i1 %tobool506.not, label %cond.false500.cond.end522_crit_edge, label %cond.false518

cond.false500.cond.end522_crit_edge:              ; preds = %cond.false500
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end522

cond.false518:                                    ; preds = %cond.false500
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %127 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %127(i32 noundef %.pr722) #5
  br label %cond.end522

cond.end522:                                      ; preds = %cond.false518, %cond.false500.cond.end522_crit_edge, %do.body479.cond.end522_crit_edge
  %128 = ptrtoint ptr %port456 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %port456, align 4
  %add525 = add i32 %129, 4
  %and526 = and i32 %add525, 1048575
  %add527 = or i32 %and526, -18874368
  %130 = inttoptr i32 %add527 to ptr
  %131 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %130) #5, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !83
  %conv531 = zext i8 %131 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !84
  tail call void @arm_heavy_mb() #5
  %132 = ptrtoint ptr %port456 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %port456, align 4
  %add537 = add i32 %133, 2
  %and538 = and i32 %add537, 1048575
  %add539 = or i32 %and538, -18874368
  %134 = inttoptr i32 %add539 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %134, i8 4) #5, !srcloc !57
  %135 = ptrtoint ptr %delay461 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %delay461, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %136)
  %tobool542.not = icmp eq i32 %136, 0
  br i1 %tobool542.not, label %cond.end522.cleanup_crit_edge, label %cond.false554

cond.end522.cleanup_crit_edge:                    ; preds = %cond.end522
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cond.false554:                                    ; preds = %cond.end522
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %137 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %137(i32 noundef %136) #5
  br label %cleanup

cleanup:                                          ; preds = %cond.false554, %cond.end522.cleanup_crit_edge, %cond.false446, %cond.end414.cleanup_crit_edge, %cond.end311, %cond.end135, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %add315, %cond.end311 ], [ %add148, %cond.end135 ], [ %conv423, %cond.end414.cleanup_crit_edge ], [ %conv423, %cond.false446 ], [ %conv531, %cond.end522.cleanup_crit_edge ], [ %conv531, %cond.false554 ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @epat_write_block(ptr nocapture noundef readonly %pi, ptr nocapture noundef readonly %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mode = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 2
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 0, label %entry.do.body_crit_edge
    i32 1, label %entry.do.body_crit_edge571
    i32 2, label %entry.do.body_crit_edge572
    i32 3, label %do.body168
    i32 4, label %do.body255
    i32 5, label %do.body342
  ]

entry.do.body_crit_edge572:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

entry.do.body_crit_edge571:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.body:                                          ; preds = %entry.do.body_crit_edge, %entry.do.body_crit_edge571, %entry.do.body_crit_edge572
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !85
  tail call void @arm_heavy_mb() #5
  %port = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %3 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %port, align 4
  %and = and i32 %4, 1048575
  %add1 = or i32 %and, -18874368
  %5 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 103) #5, !srcloc !57
  %delay = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %6 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %do.body.do.body12_crit_edge, label %cond.false7

do.body.do.body12_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body12

cond.false7:                                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %8(i32 noundef %7) #5
  br label %do.body12

do.body12:                                        ; preds = %cond.false7, %do.body.do.body12_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !86
  tail call void @arm_heavy_mb() #5
  %9 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %port, align 4
  %add16 = add i32 %10, 2
  %and17 = and i32 %add16, 1048575
  %add18 = or i32 %and17, -18874368
  %11 = inttoptr i32 %add18 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 1) #5, !srcloc !57
  %12 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool21.not = icmp eq i32 %13, 0
  br i1 %tobool21.not, label %do.body12.do.body37_crit_edge, label %cond.false32

do.body12.do.body37_crit_edge:                    ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body37

cond.false32:                                     ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %14(i32 noundef %13) #5
  br label %do.body37

do.body37:                                        ; preds = %cond.false32, %do.body12.do.body37_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !87
  tail call void @arm_heavy_mb() #5
  %15 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %port, align 4
  %add41 = add i32 %16, 2
  %and42 = and i32 %add41, 1048575
  %add43 = or i32 %and42, -18874368
  %17 = inttoptr i32 %add43 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 5) #5, !srcloc !57
  %18 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool46.not = icmp eq i32 %19, 0
  br i1 %tobool46.not, label %do.body37.cond.end61_crit_edge, label %cond.false57

do.body37.cond.end61_crit_edge:                   ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end61

cond.false57:                                     ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %20(i32 noundef %19) #5
  br label %cond.end61

cond.end61:                                       ; preds = %cond.false57, %do.body37.cond.end61_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp62564 = icmp sgt i32 %count, 0
  br i1 %cmp62564, label %cond.end61.do.body63_crit_edge, label %cond.end61.do.body115_crit_edge

cond.end61.do.body115_crit_edge:                  ; preds = %cond.end61
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body115

cond.end61.do.body63_crit_edge:                   ; preds = %cond.end61
  br label %do.body63

do.body63:                                        ; preds = %cond.end114.do.body63_crit_edge, %cond.end61.do.body63_crit_edge
  %k.0566 = phi i32 [ %inc, %cond.end114.do.body63_crit_edge ], [ 0, %cond.end61.do.body63_crit_edge ]
  %ph.0565 = phi i32 [ %sub, %cond.end114.do.body63_crit_edge ], [ 0, %cond.end61.do.body63_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !88
  tail call void @arm_heavy_mb() #5
  %arrayidx = getelementptr i8, ptr %buf, i32 %k.0566
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx, align 1
  %23 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %port, align 4
  %and68 = and i32 %24, 1048575
  %add69 = or i32 %and68, -18874368
  %25 = inttoptr i32 %add69 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %25, i8 %22) #5, !srcloc !57
  %26 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool72.not = icmp eq i32 %27, 0
  br i1 %tobool72.not, label %do.body63.do.body88_crit_edge, label %cond.false83

do.body63.do.body88_crit_edge:                    ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body88

cond.false83:                                     ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %28(i32 noundef %27) #5
  br label %do.body88

do.body88:                                        ; preds = %cond.false83, %do.body63.do.body88_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !89
  tail call void @arm_heavy_mb() #5
  %29 = trunc i32 %ph.0565 to i8
  %conv = add i8 %29, 4
  %30 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %port, align 4
  %add93 = add i32 %31, 2
  %and94 = and i32 %add93, 1048575
  %add95 = or i32 %and94, -18874368
  %32 = inttoptr i32 %add95 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %32, i8 %conv) #5, !srcloc !57
  %33 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool98.not = icmp eq i32 %34, 0
  br i1 %tobool98.not, label %do.body88.cond.end114_crit_edge, label %cond.false110

do.body88.cond.end114_crit_edge:                  ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end114

cond.false110:                                    ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %35(i32 noundef %34) #5
  br label %cond.end114

cond.end114:                                      ; preds = %cond.false110, %do.body88.cond.end114_crit_edge
  %sub = sub i32 1, %ph.0565
  %inc = add nuw nsw i32 %k.0566, 1
  %exitcond569.not = icmp eq i32 %inc, %count
  br i1 %exitcond569.not, label %cond.end114.do.body115_crit_edge, label %cond.end114.do.body63_crit_edge

cond.end114.do.body63_crit_edge:                  ; preds = %cond.end114
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body63

cond.end114.do.body115_crit_edge:                 ; preds = %cond.end114
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body115

do.body115:                                       ; preds = %cond.end114.do.body115_crit_edge, %cond.end61.do.body115_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !90
  tail call void @arm_heavy_mb() #5
  %36 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %port, align 4
  %add119 = add i32 %37, 2
  %and120 = and i32 %add119, 1048575
  %add121 = or i32 %and120, -18874368
  %38 = inttoptr i32 %add121 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %38, i8 7) #5, !srcloc !57
  %39 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool124.not = icmp eq i32 %40, 0
  br i1 %tobool124.not, label %do.body115.do.body141_crit_edge, label %cond.false136

do.body115.do.body141_crit_edge:                  ; preds = %do.body115
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body141

cond.false136:                                    ; preds = %do.body115
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %41(i32 noundef %40) #5
  br label %do.body141

do.body141:                                       ; preds = %cond.false136, %do.body115.do.body141_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !91
  tail call void @arm_heavy_mb() #5
  %42 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %port, align 4
  %add145 = add i32 %43, 2
  %and146 = and i32 %add145, 1048575
  %add147 = or i32 %and146, -18874368
  %44 = inttoptr i32 %add147 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %44, i8 4) #5, !srcloc !57
  %45 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool150.not = icmp eq i32 %46, 0
  br i1 %tobool150.not, label %do.body141.sw.epilog_crit_edge, label %do.body141.sw.epilog.sink.split_crit_edge

do.body141.sw.epilog.sink.split_crit_edge:        ; preds = %do.body141
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

do.body141.sw.epilog_crit_edge:                   ; preds = %do.body141
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.body168:                                       ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !92
  tail call void @arm_heavy_mb() #5
  %port171 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %47 = ptrtoint ptr %port171 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %port171, align 4
  %add172 = add i32 %48, 3
  %and173 = and i32 %add172, 1048575
  %add174 = or i32 %and173, -18874368
  %49 = inttoptr i32 %add174 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %49, i8 -64) #5, !srcloc !57
  %delay176 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %50 = ptrtoint ptr %delay176 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %delay176, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool177.not = icmp eq i32 %51, 0
  br i1 %tobool177.not, label %do.body168.cond.end193_crit_edge, label %cond.false189

do.body168.cond.end193_crit_edge:                 ; preds = %do.body168
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end193

cond.false189:                                    ; preds = %do.body168
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %52(i32 noundef %51) #5
  br label %cond.end193

cond.end193:                                      ; preds = %cond.false189, %do.body168.cond.end193_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp195562 = icmp sgt i32 %count, 0
  br i1 %cmp195562, label %cond.end193.do.body198_crit_edge, label %cond.end193.do.body228_crit_edge

cond.end193.do.body228_crit_edge:                 ; preds = %cond.end193
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body228

cond.end193.do.body198_crit_edge:                 ; preds = %cond.end193
  br label %do.body198

do.body198:                                       ; preds = %for.inc225.do.body198_crit_edge, %cond.end193.do.body198_crit_edge
  %k.1563 = phi i32 [ %inc226, %for.inc225.do.body198_crit_edge ], [ 0, %cond.end193.do.body198_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !93
  tail call void @arm_heavy_mb() #5
  %arrayidx201 = getelementptr i8, ptr %buf, i32 %k.1563
  %53 = ptrtoint ptr %arrayidx201 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx201, align 1
  %55 = ptrtoint ptr %port171 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %port171, align 4
  %add203 = add i32 %56, 4
  %and204 = and i32 %add203, 1048575
  %add205 = or i32 %and204, -18874368
  %57 = inttoptr i32 %add205 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %57, i8 %54) #5, !srcloc !57
  %58 = ptrtoint ptr %delay176 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %delay176, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool208.not = icmp eq i32 %59, 0
  br i1 %tobool208.not, label %do.body198.for.inc225_crit_edge, label %cond.false220

do.body198.for.inc225_crit_edge:                  ; preds = %do.body198
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc225

cond.false220:                                    ; preds = %do.body198
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %60 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %60(i32 noundef %59) #5
  br label %for.inc225

for.inc225:                                       ; preds = %cond.false220, %do.body198.for.inc225_crit_edge
  %inc226 = add nuw nsw i32 %k.1563, 1
  %exitcond568.not = icmp eq i32 %inc226, %count
  br i1 %exitcond568.not, label %for.inc225.do.body228_crit_edge, label %for.inc225.do.body198_crit_edge

for.inc225.do.body198_crit_edge:                  ; preds = %for.inc225
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body198

for.inc225.do.body228_crit_edge:                  ; preds = %for.inc225
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body228

do.body228:                                       ; preds = %for.inc225.do.body228_crit_edge, %cond.end193.do.body228_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !94
  tail call void @arm_heavy_mb() #5
  %61 = ptrtoint ptr %port171 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %port171, align 4
  %add232 = add i32 %62, 2
  %and233 = and i32 %add232, 1048575
  %add234 = or i32 %and233, -18874368
  %63 = inttoptr i32 %add234 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %63, i8 4) #5, !srcloc !57
  %64 = ptrtoint ptr %delay176 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %delay176, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool237.not = icmp eq i32 %65, 0
  br i1 %tobool237.not, label %do.body228.sw.epilog_crit_edge, label %do.body228.sw.epilog.sink.split_crit_edge

do.body228.sw.epilog.sink.split_crit_edge:        ; preds = %do.body228
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

do.body228.sw.epilog_crit_edge:                   ; preds = %do.body228
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.body255:                                       ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !95
  tail call void @arm_heavy_mb() #5
  %port258 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %66 = ptrtoint ptr %port258 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %port258, align 4
  %add259 = add i32 %67, 3
  %and260 = and i32 %add259, 1048575
  %add261 = or i32 %and260, -18874368
  %68 = inttoptr i32 %add261 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %68, i8 -64) #5, !srcloc !57
  %delay263 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %69 = ptrtoint ptr %delay263 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %delay263, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool264.not = icmp eq i32 %70, 0
  br i1 %tobool264.not, label %do.body255.cond.end280_crit_edge, label %cond.false276

do.body255.cond.end280_crit_edge:                 ; preds = %do.body255
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end280

cond.false276:                                    ; preds = %do.body255
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %71 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %71(i32 noundef %70) #5
  br label %cond.end280

cond.end280:                                      ; preds = %cond.false276, %do.body255.cond.end280_crit_edge
  %div = sdiv i32 %count, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %count)
  %cmp282560 = icmp sgt i32 %count, 1
  br i1 %cmp282560, label %cond.end280.do.body285_crit_edge, label %cond.end280.do.body315_crit_edge

cond.end280.do.body315_crit_edge:                 ; preds = %cond.end280
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body315

cond.end280.do.body285_crit_edge:                 ; preds = %cond.end280
  br label %do.body285

do.body285:                                       ; preds = %for.inc312.do.body285_crit_edge, %cond.end280.do.body285_crit_edge
  %k.2561 = phi i32 [ %inc313, %for.inc312.do.body285_crit_edge ], [ 0, %cond.end280.do.body285_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !96
  tail call void @arm_heavy_mb() #5
  %arrayidx288 = getelementptr i16, ptr %buf, i32 %k.2561
  %72 = ptrtoint ptr %arrayidx288 to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %arrayidx288, align 2
  %74 = tail call i16 @llvm.bswap.i16(i16 %73)
  %75 = ptrtoint ptr %port258 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %port258, align 4
  %add290 = add i32 %76, 4
  %and291 = and i32 %add290, 1048575
  %add292 = or i32 %and291, -18874368
  %77 = inttoptr i32 %add292 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %77, i16 %74) #5, !srcloc !97
  %78 = ptrtoint ptr %delay263 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %delay263, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool295.not = icmp eq i32 %79, 0
  br i1 %tobool295.not, label %do.body285.for.inc312_crit_edge, label %cond.false307

do.body285.for.inc312_crit_edge:                  ; preds = %do.body285
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc312

cond.false307:                                    ; preds = %do.body285
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %80 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %80(i32 noundef %79) #5
  br label %for.inc312

for.inc312:                                       ; preds = %cond.false307, %do.body285.for.inc312_crit_edge
  %inc313 = add nuw nsw i32 %k.2561, 1
  %exitcond567.not = icmp eq i32 %inc313, %div
  br i1 %exitcond567.not, label %for.inc312.do.body315_crit_edge, label %for.inc312.do.body285_crit_edge

for.inc312.do.body285_crit_edge:                  ; preds = %for.inc312
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body285

for.inc312.do.body315_crit_edge:                  ; preds = %for.inc312
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body315

do.body315:                                       ; preds = %for.inc312.do.body315_crit_edge, %cond.end280.do.body315_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !98
  tail call void @arm_heavy_mb() #5
  %81 = ptrtoint ptr %port258 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %port258, align 4
  %add319 = add i32 %82, 2
  %and320 = and i32 %add319, 1048575
  %add321 = or i32 %and320, -18874368
  %83 = inttoptr i32 %add321 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %83, i8 4) #5, !srcloc !57
  %84 = ptrtoint ptr %delay263 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %delay263, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool324.not = icmp eq i32 %85, 0
  br i1 %tobool324.not, label %do.body315.sw.epilog_crit_edge, label %do.body315.sw.epilog.sink.split_crit_edge

do.body315.sw.epilog.sink.split_crit_edge:        ; preds = %do.body315
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

do.body315.sw.epilog_crit_edge:                   ; preds = %do.body315
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.body342:                                       ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !99
  tail call void @arm_heavy_mb() #5
  %port345 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %86 = ptrtoint ptr %port345 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %port345, align 4
  %add346 = add i32 %87, 3
  %and347 = and i32 %add346, 1048575
  %add348 = or i32 %and347, -18874368
  %88 = inttoptr i32 %add348 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %88, i8 -64) #5, !srcloc !57
  %delay350 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %89 = ptrtoint ptr %delay350 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %delay350, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool351.not = icmp eq i32 %90, 0
  br i1 %tobool351.not, label %do.body342.cond.end367_crit_edge, label %cond.false363

do.body342.cond.end367_crit_edge:                 ; preds = %do.body342
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end367

cond.false363:                                    ; preds = %do.body342
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %91 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %91(i32 noundef %90) #5
  br label %cond.end367

cond.end367:                                      ; preds = %cond.false363, %do.body342.cond.end367_crit_edge
  %div369 = sdiv i32 %count, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %count)
  %cmp370558 = icmp sgt i32 %count, 3
  br i1 %cmp370558, label %cond.end367.do.body373_crit_edge, label %cond.end367.do.body403_crit_edge

cond.end367.do.body403_crit_edge:                 ; preds = %cond.end367
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body403

cond.end367.do.body373_crit_edge:                 ; preds = %cond.end367
  br label %do.body373

do.body373:                                       ; preds = %for.inc400.do.body373_crit_edge, %cond.end367.do.body373_crit_edge
  %k.3559 = phi i32 [ %inc401, %for.inc400.do.body373_crit_edge ], [ 0, %cond.end367.do.body373_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !100
  tail call void @arm_heavy_mb() #5
  %arrayidx376 = getelementptr i32, ptr %buf, i32 %k.3559
  %92 = ptrtoint ptr %arrayidx376 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx376, align 4
  %94 = tail call i32 @llvm.bswap.i32(i32 %93)
  %95 = ptrtoint ptr %port345 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %port345, align 4
  %add378 = add i32 %96, 4
  %and379 = and i32 %add378, 1048575
  %add380 = or i32 %and379, -18874368
  %97 = inttoptr i32 %add380 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %97, i32 %94) #5, !srcloc !101
  %98 = ptrtoint ptr %delay350 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %delay350, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %tobool383.not = icmp eq i32 %99, 0
  br i1 %tobool383.not, label %do.body373.for.inc400_crit_edge, label %cond.false395

do.body373.for.inc400_crit_edge:                  ; preds = %do.body373
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc400

cond.false395:                                    ; preds = %do.body373
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %100 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %100(i32 noundef %99) #5
  br label %for.inc400

for.inc400:                                       ; preds = %cond.false395, %do.body373.for.inc400_crit_edge
  %inc401 = add nuw nsw i32 %k.3559, 1
  %exitcond.not = icmp eq i32 %inc401, %div369
  br i1 %exitcond.not, label %for.inc400.do.body403_crit_edge, label %for.inc400.do.body373_crit_edge

for.inc400.do.body373_crit_edge:                  ; preds = %for.inc400
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body373

for.inc400.do.body403_crit_edge:                  ; preds = %for.inc400
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body403

do.body403:                                       ; preds = %for.inc400.do.body403_crit_edge, %cond.end367.do.body403_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !102
  tail call void @arm_heavy_mb() #5
  %101 = ptrtoint ptr %port345 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %port345, align 4
  %add407 = add i32 %102, 2
  %and408 = and i32 %add407, 1048575
  %add409 = or i32 %and408, -18874368
  %103 = inttoptr i32 %add409 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %103, i8 4) #5, !srcloc !57
  %104 = ptrtoint ptr %delay350 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %delay350, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %tobool412.not = icmp eq i32 %105, 0
  br i1 %tobool412.not, label %do.body403.sw.epilog_crit_edge, label %do.body403.sw.epilog.sink.split_crit_edge

do.body403.sw.epilog.sink.split_crit_edge:        ; preds = %do.body403
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

do.body403.sw.epilog_crit_edge:                   ; preds = %do.body403
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.epilog.sink.split:                             ; preds = %do.body403.sw.epilog.sink.split_crit_edge, %do.body315.sw.epilog.sink.split_crit_edge, %do.body228.sw.epilog.sink.split_crit_edge, %do.body141.sw.epilog.sink.split_crit_edge
  %.sink = phi i32 [ %46, %do.body141.sw.epilog.sink.split_crit_edge ], [ %65, %do.body228.sw.epilog.sink.split_crit_edge ], [ %85, %do.body315.sw.epilog.sink.split_crit_edge ], [ %105, %do.body403.sw.epilog.sink.split_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %106 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %106(i32 noundef %.sink) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %do.body403.sw.epilog_crit_edge, %do.body315.sw.epilog_crit_edge, %do.body228.sw.epilog_crit_edge, %do.body141.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @epat_read_block(ptr nocapture noundef readonly %pi, ptr nocapture noundef writeonly %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mode = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 2
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 0, label %do.body
    i32 1, label %do.body285
    i32 2, label %do.body571
    i32 3, label %do.body878
    i32 4, label %do.body1104
    i32 5, label %do.body1361
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !103
  tail call void @arm_heavy_mb() #5
  %port = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %3 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %port, align 4
  %and = and i32 %4, 1048575
  %add1 = or i32 %and, -18874368
  %5 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 7) #5, !srcloc !57
  %delay = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %6 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %do.body.do.body12_crit_edge, label %cond.false7

do.body.do.body12_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body12

cond.false7:                                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %8(i32 noundef %7) #5
  br label %do.body12

do.body12:                                        ; preds = %cond.false7, %do.body.do.body12_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  tail call void @arm_heavy_mb() #5
  %9 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %port, align 4
  %add16 = add i32 %10, 2
  %and17 = and i32 %add16, 1048575
  %add18 = or i32 %and17, -18874368
  %11 = inttoptr i32 %add18 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 1) #5, !srcloc !57
  %12 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool21.not = icmp eq i32 %13, 0
  br i1 %tobool21.not, label %do.body12.do.body37_crit_edge, label %cond.false32

do.body12.do.body37_crit_edge:                    ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body37

cond.false32:                                     ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %14(i32 noundef %13) #5
  br label %do.body37

do.body37:                                        ; preds = %cond.false32, %do.body12.do.body37_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  %15 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %port, align 4
  %add41 = add i32 %16, 2
  %and42 = and i32 %add41, 1048575
  %add43 = or i32 %and42, -18874368
  %17 = inttoptr i32 %add43 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 3) #5, !srcloc !57
  %18 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool46.not = icmp eq i32 %19, 0
  br i1 %tobool46.not, label %do.body37.do.body62_crit_edge, label %cond.false57

do.body37.do.body62_crit_edge:                    ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body62

cond.false57:                                     ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %20(i32 noundef %19) #5
  br label %do.body62

do.body62:                                        ; preds = %cond.false57, %do.body37.do.body62_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !106
  tail call void @arm_heavy_mb() #5
  %21 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %port, align 4
  %and67 = and i32 %22, 1048575
  %add68 = or i32 %and67, -18874368
  %23 = inttoptr i32 %add68 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %23, i8 -1) #5, !srcloc !57
  %24 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool71.not = icmp eq i32 %25, 0
  br i1 %tobool71.not, label %do.body62.cond.end86_crit_edge, label %cond.false82

do.body62.cond.end86_crit_edge:                   ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end86

cond.false82:                                     ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %26(i32 noundef %25) #5
  br label %cond.end86

cond.end86:                                       ; preds = %cond.false82, %do.body62.cond.end86_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp872117 = icmp sgt i32 %count, 0
  br i1 %cmp872117, label %for.body.lr.ph, label %cond.end86.do.body232_crit_edge

cond.end86.do.body232_crit_edge:                  ; preds = %cond.end86
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body232

for.body.lr.ph:                                   ; preds = %cond.end86
  %sub = add nsw i32 %count, -1
  br label %for.body

for.body:                                         ; preds = %if.end226.for.body_crit_edge, %for.body.lr.ph
  %k.02119 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end226.for.body_crit_edge ]
  %ph.02118 = phi i32 [ 0, %for.body.lr.ph ], [ %sub231, %if.end226.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %k.02119, i32 %sub)
  %cmp88 = icmp eq i32 %k.02119, %sub
  br i1 %cmp88, label %do.body89, label %for.body.do.body114_crit_edge

for.body.do.body114_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body114

do.body89:                                        ; preds = %for.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !107
  tail call void @arm_heavy_mb() #5
  %27 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %port, align 4
  %and94 = and i32 %28, 1048575
  %add95 = or i32 %and94, -18874368
  %29 = inttoptr i32 %add95 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %29, i8 -3) #5, !srcloc !57
  %30 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool98.not = icmp eq i32 %31, 0
  br i1 %tobool98.not, label %do.body89.do.body114_crit_edge, label %cond.false109

do.body89.do.body114_crit_edge:                   ; preds = %do.body89
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body114

cond.false109:                                    ; preds = %do.body89
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %32(i32 noundef %31) #5
  br label %do.body114

do.body114:                                       ; preds = %cond.false109, %do.body89.do.body114_crit_edge, %for.body.do.body114_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !108
  tail call void @arm_heavy_mb() #5
  %33 = trunc i32 %ph.02118 to i8
  %conv = add i8 %33, 6
  %34 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %port, align 4
  %add119 = add i32 %35, 2
  %and120 = and i32 %add119, 1048575
  %add121 = or i32 %and120, -18874368
  %36 = inttoptr i32 %add121 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %36, i8 %conv) #5, !srcloc !57
  %37 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool124.not = icmp eq i32 %38, 0
  br i1 %tobool124.not, label %do.body114.cond.end158_crit_edge, label %cond.false136

do.body114.cond.end158_crit_edge:                 ; preds = %do.body114
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end158

cond.false136:                                    ; preds = %do.body114
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %39(i32 noundef %38) #5
  %40 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %40)
  %.pr = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool142.not = icmp eq i32 %.pr, 0
  br i1 %tobool142.not, label %cond.false136.cond.end158_crit_edge, label %cond.false154

cond.false136.cond.end158_crit_edge:              ; preds = %cond.false136
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end158

cond.false154:                                    ; preds = %cond.false136
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %41(i32 noundef %.pr) #5
  br label %cond.end158

cond.end158:                                      ; preds = %cond.false154, %cond.false136.cond.end158_crit_edge, %do.body114.cond.end158_crit_edge
  %42 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %port, align 4
  %add160 = add i32 %43, 1
  %and161 = and i32 %add160, 1048575
  %add162 = or i32 %and161, -18874368
  %44 = inttoptr i32 %add162 to ptr
  %45 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %44) #5, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !109
  %46 = and i8 %45, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool168.not = icmp eq i8 %46, 0
  br i1 %tobool168.not, label %do.body170, label %cond.end158.if.end226_crit_edge

cond.end158.if.end226_crit_edge:                  ; preds = %cond.end158
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end226

do.body170:                                       ; preds = %cond.end158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !110
  tail call void @arm_heavy_mb() #5
  %conv174 = add i8 %33, 4
  %47 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %port, align 4
  %add176 = add i32 %48, 2
  %and177 = and i32 %add176, 1048575
  %add178 = or i32 %and177, -18874368
  %49 = inttoptr i32 %add178 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %49, i8 %conv174) #5, !srcloc !57
  %50 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool181.not = icmp eq i32 %51, 0
  br i1 %tobool181.not, label %do.body170.cond.end215_crit_edge, label %cond.false193

do.body170.cond.end215_crit_edge:                 ; preds = %do.body170
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end215

cond.false193:                                    ; preds = %do.body170
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %52(i32 noundef %51) #5
  %53 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %53)
  %.pr2087 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr2087)
  %tobool199.not = icmp eq i32 %.pr2087, 0
  br i1 %tobool199.not, label %cond.false193.cond.end215_crit_edge, label %cond.false211

cond.false193.cond.end215_crit_edge:              ; preds = %cond.false193
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end215

cond.false211:                                    ; preds = %cond.false193
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %54 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %54(i32 noundef %.pr2087) #5
  br label %cond.end215

cond.end215:                                      ; preds = %cond.false211, %cond.false193.cond.end215_crit_edge, %do.body170.cond.end215_crit_edge
  %55 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %port, align 4
  %add218 = add i32 %56, 1
  %and219 = and i32 %add218, 1048575
  %add220 = or i32 %and219, -18874368
  %57 = inttoptr i32 %add220 to ptr
  %58 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %57) #5, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !111
  br label %if.end226

if.end226:                                        ; preds = %cond.end215, %cond.end158.if.end226_crit_edge
  %b.0 = phi i8 [ %58, %cond.end215 ], [ %45, %cond.end158.if.end226_crit_edge ]
  %59 = lshr i8 %45, 4
  %and228 = and i8 %b.0, -16
  %add229 = or i8 %and228, %59
  %arrayidx = getelementptr i8, ptr %buf, i32 %k.02119
  %60 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %add229, ptr %arrayidx, align 1
  %sub231 = sub i32 1, %ph.02118
  %inc = add nuw nsw i32 %k.02119, 1
  %exitcond2126.not = icmp eq i32 %inc, %count
  br i1 %exitcond2126.not, label %if.end226.do.body232_crit_edge, label %if.end226.for.body_crit_edge

if.end226.for.body_crit_edge:                     ; preds = %if.end226
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

if.end226.do.body232_crit_edge:                   ; preds = %if.end226
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body232

do.body232:                                       ; preds = %if.end226.do.body232_crit_edge, %cond.end86.do.body232_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !112
  tail call void @arm_heavy_mb() #5
  %61 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %port, align 4
  %and237 = and i32 %62, 1048575
  %add238 = or i32 %and237, -18874368
  %63 = inttoptr i32 %add238 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %63, i8 0) #5, !srcloc !57
  %64 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool241.not = icmp eq i32 %65, 0
  br i1 %tobool241.not, label %do.body232.do.body258_crit_edge, label %cond.false253

do.body232.do.body258_crit_edge:                  ; preds = %do.body232
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body258

cond.false253:                                    ; preds = %do.body232
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %66 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %66(i32 noundef %65) #5
  br label %do.body258

do.body258:                                       ; preds = %cond.false253, %do.body232.do.body258_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !113
  tail call void @arm_heavy_mb() #5
  %67 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %port, align 4
  %add262 = add i32 %68, 2
  %and263 = and i32 %add262, 1048575
  %add264 = or i32 %and263, -18874368
  %69 = inttoptr i32 %add264 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %69, i8 4) #5, !srcloc !57
  %70 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool267.not = icmp eq i32 %71, 0
  br i1 %tobool267.not, label %do.body258.sw.epilog_crit_edge, label %do.body258.sw.epilog.sink.split_crit_edge

do.body258.sw.epilog.sink.split_crit_edge:        ; preds = %do.body258
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

do.body258.sw.epilog_crit_edge:                   ; preds = %do.body258
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.body285:                                       ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !114
  tail call void @arm_heavy_mb() #5
  %port288 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %72 = ptrtoint ptr %port288 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %port288, align 4
  %and290 = and i32 %73, 1048575
  %add291 = or i32 %and290, -18874368
  %74 = inttoptr i32 %add291 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %74, i8 71) #5, !srcloc !57
  %delay293 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %75 = ptrtoint ptr %delay293 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %delay293, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool294.not = icmp eq i32 %76, 0
  br i1 %tobool294.not, label %do.body285.do.body311_crit_edge, label %cond.false306

do.body285.do.body311_crit_edge:                  ; preds = %do.body285
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body311

cond.false306:                                    ; preds = %do.body285
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %77 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %77(i32 noundef %76) #5
  br label %do.body311

do.body311:                                       ; preds = %cond.false306, %do.body285.do.body311_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !115
  tail call void @arm_heavy_mb() #5
  %78 = ptrtoint ptr %port288 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %port288, align 4
  %add315 = add i32 %79, 2
  %and316 = and i32 %add315, 1048575
  %add317 = or i32 %and316, -18874368
  %80 = inttoptr i32 %add317 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %80, i8 1) #5, !srcloc !57
  %81 = ptrtoint ptr %delay293 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %delay293, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool320.not = icmp eq i32 %82, 0
  br i1 %tobool320.not, label %do.body311.do.body337_crit_edge, label %cond.false332

do.body311.do.body337_crit_edge:                  ; preds = %do.body311
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body337

cond.false332:                                    ; preds = %do.body311
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %83 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %83(i32 noundef %82) #5
  br label %do.body337

do.body337:                                       ; preds = %cond.false332, %do.body311.do.body337_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !116
  tail call void @arm_heavy_mb() #5
  %84 = ptrtoint ptr %port288 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %port288, align 4
  %add341 = add i32 %85, 2
  %and342 = and i32 %add341, 1048575
  %add343 = or i32 %and342, -18874368
  %86 = inttoptr i32 %add343 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %86, i8 5) #5, !srcloc !57
  %87 = ptrtoint ptr %delay293 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %delay293, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool346.not = icmp eq i32 %88, 0
  br i1 %tobool346.not, label %do.body337.do.body363_crit_edge, label %cond.false358

do.body337.do.body363_crit_edge:                  ; preds = %do.body337
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body363

cond.false358:                                    ; preds = %do.body337
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %89 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %89(i32 noundef %88) #5
  br label %do.body363

do.body363:                                       ; preds = %cond.false358, %do.body337.do.body363_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !117
  tail call void @arm_heavy_mb() #5
  %90 = ptrtoint ptr %port288 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %port288, align 4
  %and368 = and i32 %91, 1048575
  %add369 = or i32 %and368, -18874368
  %92 = inttoptr i32 %add369 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %92, i8 -1) #5, !srcloc !57
  %93 = ptrtoint ptr %delay293 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %delay293, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool372.not = icmp eq i32 %94, 0
  br i1 %tobool372.not, label %do.body363.cond.end388_crit_edge, label %cond.false384

do.body363.cond.end388_crit_edge:                 ; preds = %do.body363
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end388

cond.false384:                                    ; preds = %do.body363
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %95 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %95(i32 noundef %94) #5
  br label %cond.end388

cond.end388:                                      ; preds = %cond.false384, %do.body363.cond.end388_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp3902114 = icmp sgt i32 %count, 0
  br i1 %cmp3902114, label %for.body392.lr.ph, label %cond.end388.do.body518_crit_edge

cond.end388.do.body518_crit_edge:                 ; preds = %cond.end388
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body518

for.body392.lr.ph:                                ; preds = %cond.end388
  %sub393 = add nsw i32 %count, -1
  br label %for.body392

for.body392:                                      ; preds = %cond.end497.for.body392_crit_edge, %for.body392.lr.ph
  %k.12116 = phi i32 [ 0, %for.body392.lr.ph ], [ %inc516, %cond.end497.for.body392_crit_edge ]
  %ph.12115 = phi i32 [ 0, %for.body392.lr.ph ], [ %sub514, %cond.end497.for.body392_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %k.12116, i32 %sub393)
  %cmp394 = icmp eq i32 %k.12116, %sub393
  br i1 %cmp394, label %do.body397, label %for.body392.do.body424_crit_edge

for.body392.do.body424_crit_edge:                 ; preds = %for.body392
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body424

do.body397:                                       ; preds = %for.body392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !118
  tail call void @arm_heavy_mb() #5
  %96 = ptrtoint ptr %port288 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %port288, align 4
  %and402 = and i32 %97, 1048575
  %add403 = or i32 %and402, -18874368
  %98 = inttoptr i32 %add403 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %98, i8 -3) #5, !srcloc !57
  %99 = ptrtoint ptr %delay293 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %delay293, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %tobool406.not = icmp eq i32 %100, 0
  br i1 %tobool406.not, label %do.body397.do.body424_crit_edge, label %cond.false418

do.body397.do.body424_crit_edge:                  ; preds = %do.body397
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body424

cond.false418:                                    ; preds = %do.body397
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %101 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %101(i32 noundef %100) #5
  br label %do.body424

do.body424:                                       ; preds = %cond.false418, %do.body397.do.body424_crit_edge, %for.body392.do.body424_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !119
  tail call void @arm_heavy_mb() #5
  %102 = trunc i32 %ph.12115 to i8
  %conv428 = add i8 %102, 4
  %103 = ptrtoint ptr %port288 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %port288, align 4
  %add430 = add i32 %104, 2
  %and431 = and i32 %add430, 1048575
  %add432 = or i32 %and431, -18874368
  %105 = inttoptr i32 %add432 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %105, i8 %conv428) #5, !srcloc !57
  %106 = ptrtoint ptr %delay293 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %delay293, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %tobool435.not = icmp eq i32 %107, 0
  br i1 %tobool435.not, label %do.body424.cond.end469_crit_edge, label %cond.false447

do.body424.cond.end469_crit_edge:                 ; preds = %do.body424
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end469

cond.false447:                                    ; preds = %do.body424
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %108 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %108(i32 noundef %107) #5
  %109 = ptrtoint ptr %delay293 to i32
  call void @__asan_load4_noabort(i32 %109)
  %.pr2089 = load i32, ptr %delay293, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr2089)
  %tobool453.not = icmp eq i32 %.pr2089, 0
  br i1 %tobool453.not, label %cond.false447.cond.end469_crit_edge, label %cond.false465

cond.false447.cond.end469_crit_edge:              ; preds = %cond.false447
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end469

cond.false465:                                    ; preds = %cond.false447
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %110 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %110(i32 noundef %.pr2089) #5
  br label %cond.end469

cond.end469:                                      ; preds = %cond.false465, %cond.false447.cond.end469_crit_edge, %do.body424.cond.end469_crit_edge
  %111 = ptrtoint ptr %port288 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %port288, align 4
  %add472 = add i32 %112, 1
  %and473 = and i32 %add472, 1048575
  %add474 = or i32 %and473, -18874368
  %113 = inttoptr i32 %add474 to ptr
  %114 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %113) #5, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !120
  %115 = ptrtoint ptr %delay293 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %delay293, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %tobool481.not = icmp eq i32 %116, 0
  br i1 %tobool481.not, label %cond.end469.cond.end497_crit_edge, label %cond.false493

cond.end469.cond.end497_crit_edge:                ; preds = %cond.end469
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end497

cond.false493:                                    ; preds = %cond.end469
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %117 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %117(i32 noundef %116) #5
  br label %cond.end497

cond.end497:                                      ; preds = %cond.false493, %cond.end469.cond.end497_crit_edge
  %118 = ptrtoint ptr %port288 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %port288, align 4
  %add500 = add i32 %119, 2
  %and501 = and i32 %add500, 1048575
  %add502 = or i32 %and501, -18874368
  %120 = inttoptr i32 %add502 to ptr
  %121 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %120) #5, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !121
  %122 = lshr i8 %114, 3
  %shl = shl i8 %121, 4
  %and510 = and i8 %shl, -32
  %add511 = or i8 %and510, %122
  %arrayidx513 = getelementptr i8, ptr %buf, i32 %k.12116
  %123 = ptrtoint ptr %arrayidx513 to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 %add511, ptr %arrayidx513, align 1
  %sub514 = sub i32 1, %ph.12115
  %inc516 = add nuw nsw i32 %k.12116, 1
  %exitcond2125.not = icmp eq i32 %inc516, %count
  br i1 %exitcond2125.not, label %cond.end497.do.body518_crit_edge, label %cond.end497.for.body392_crit_edge

cond.end497.for.body392_crit_edge:                ; preds = %cond.end497
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body392

cond.end497.do.body518_crit_edge:                 ; preds = %cond.end497
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body518

do.body518:                                       ; preds = %cond.end497.do.body518_crit_edge, %cond.end388.do.body518_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !122
  tail call void @arm_heavy_mb() #5
  %124 = ptrtoint ptr %port288 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %port288, align 4
  %and523 = and i32 %125, 1048575
  %add524 = or i32 %and523, -18874368
  %126 = inttoptr i32 %add524 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %126, i8 0) #5, !srcloc !57
  %127 = ptrtoint ptr %delay293 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %delay293, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %128)
  %tobool527.not = icmp eq i32 %128, 0
  br i1 %tobool527.not, label %do.body518.do.body544_crit_edge, label %cond.false539

do.body518.do.body544_crit_edge:                  ; preds = %do.body518
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body544

cond.false539:                                    ; preds = %do.body518
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %129 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %129(i32 noundef %128) #5
  br label %do.body544

do.body544:                                       ; preds = %cond.false539, %do.body518.do.body544_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !123
  tail call void @arm_heavy_mb() #5
  %130 = ptrtoint ptr %port288 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %port288, align 4
  %add548 = add i32 %131, 2
  %and549 = and i32 %add548, 1048575
  %add550 = or i32 %and549, -18874368
  %132 = inttoptr i32 %add550 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %132, i8 4) #5, !srcloc !57
  %133 = ptrtoint ptr %delay293 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %delay293, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %134)
  %tobool553.not = icmp eq i32 %134, 0
  br i1 %tobool553.not, label %do.body544.sw.epilog_crit_edge, label %do.body544.sw.epilog.sink.split_crit_edge

do.body544.sw.epilog.sink.split_crit_edge:        ; preds = %do.body544
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

do.body544.sw.epilog_crit_edge:                   ; preds = %do.body544
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.body571:                                       ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !124
  tail call void @arm_heavy_mb() #5
  %port574 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %135 = ptrtoint ptr %port574 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %port574, align 4
  %and576 = and i32 %136, 1048575
  %add577 = or i32 %and576, -18874368
  %137 = inttoptr i32 %add577 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %137, i8 39) #5, !srcloc !57
  %delay579 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %138 = ptrtoint ptr %delay579 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %delay579, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %139)
  %tobool580.not = icmp eq i32 %139, 0
  br i1 %tobool580.not, label %do.body571.do.body597_crit_edge, label %cond.false592

do.body571.do.body597_crit_edge:                  ; preds = %do.body571
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body597

cond.false592:                                    ; preds = %do.body571
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %140 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %140(i32 noundef %139) #5
  br label %do.body597

do.body597:                                       ; preds = %cond.false592, %do.body571.do.body597_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !125
  tail call void @arm_heavy_mb() #5
  %141 = ptrtoint ptr %port574 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %port574, align 4
  %add601 = add i32 %142, 2
  %and602 = and i32 %add601, 1048575
  %add603 = or i32 %and602, -18874368
  %143 = inttoptr i32 %add603 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %143, i8 1) #5, !srcloc !57
  %144 = ptrtoint ptr %delay579 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %delay579, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %145)
  %tobool606.not = icmp eq i32 %145, 0
  br i1 %tobool606.not, label %do.body597.do.body623_crit_edge, label %cond.false618

do.body597.do.body623_crit_edge:                  ; preds = %do.body597
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body623

cond.false618:                                    ; preds = %do.body597
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %146 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %146(i32 noundef %145) #5
  br label %do.body623

do.body623:                                       ; preds = %cond.false618, %do.body597.do.body623_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !126
  tail call void @arm_heavy_mb() #5
  %147 = ptrtoint ptr %port574 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %port574, align 4
  %add627 = add i32 %148, 2
  %and628 = and i32 %add627, 1048575
  %add629 = or i32 %and628, -18874368
  %149 = inttoptr i32 %add629 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %149, i8 37) #5, !srcloc !57
  %150 = ptrtoint ptr %delay579 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %delay579, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %151)
  %tobool632.not = icmp eq i32 %151, 0
  br i1 %tobool632.not, label %do.body623.do.body649_crit_edge, label %cond.false644

do.body623.do.body649_crit_edge:                  ; preds = %do.body623
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body649

cond.false644:                                    ; preds = %do.body623
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %152 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %152(i32 noundef %151) #5
  br label %do.body649

do.body649:                                       ; preds = %cond.false644, %do.body623.do.body649_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !127
  tail call void @arm_heavy_mb() #5
  %153 = ptrtoint ptr %port574 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %port574, align 4
  %and654 = and i32 %154, 1048575
  %add655 = or i32 %and654, -18874368
  %155 = inttoptr i32 %add655 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %155, i8 0) #5, !srcloc !57
  %156 = ptrtoint ptr %delay579 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %delay579, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %157)
  %tobool658.not = icmp eq i32 %157, 0
  br i1 %tobool658.not, label %do.body649.cond.end674_crit_edge, label %cond.false670

do.body649.cond.end674_crit_edge:                 ; preds = %do.body649
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end674

cond.false670:                                    ; preds = %do.body649
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %158 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %158(i32 noundef %157) #5
  br label %cond.end674

cond.end674:                                      ; preds = %cond.false670, %do.body649.cond.end674_crit_edge
  %sub676 = add i32 %count, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub676)
  %cmp6772110 = icmp sgt i32 %sub676, 0
  br i1 %cmp6772110, label %cond.end674.do.body680_crit_edge, label %cond.end674.do.body742_crit_edge

cond.end674.do.body742_crit_edge:                 ; preds = %cond.end674
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body742

cond.end674.do.body680_crit_edge:                 ; preds = %cond.end674
  br label %do.body680

do.body680:                                       ; preds = %cond.end725.do.body680_crit_edge, %cond.end674.do.body680_crit_edge
  %k.22112 = phi i32 [ %inc740, %cond.end725.do.body680_crit_edge ], [ 0, %cond.end674.do.body680_crit_edge ]
  %ph.22111 = phi i32 [ %sub738, %cond.end725.do.body680_crit_edge ], [ 0, %cond.end674.do.body680_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !128
  tail call void @arm_heavy_mb() #5
  %159 = trunc i32 %ph.22111 to i8
  %conv684 = add i8 %159, 36
  %160 = ptrtoint ptr %port574 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %port574, align 4
  %add686 = add i32 %161, 2
  %and687 = and i32 %add686, 1048575
  %add688 = or i32 %and687, -18874368
  %162 = inttoptr i32 %add688 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %162, i8 %conv684) #5, !srcloc !57
  %163 = ptrtoint ptr %delay579 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %delay579, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %164)
  %tobool691.not = icmp eq i32 %164, 0
  br i1 %tobool691.not, label %do.body680.cond.end725_crit_edge, label %cond.false703

do.body680.cond.end725_crit_edge:                 ; preds = %do.body680
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end725

cond.false703:                                    ; preds = %do.body680
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %165 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %165(i32 noundef %164) #5
  %166 = ptrtoint ptr %delay579 to i32
  call void @__asan_load4_noabort(i32 %166)
  %.pr2091 = load i32, ptr %delay579, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr2091)
  %tobool709.not = icmp eq i32 %.pr2091, 0
  br i1 %tobool709.not, label %cond.false703.cond.end725_crit_edge, label %cond.false721

cond.false703.cond.end725_crit_edge:              ; preds = %cond.false703
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end725

cond.false721:                                    ; preds = %cond.false703
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %167 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %167(i32 noundef %.pr2091) #5
  br label %cond.end725

cond.end725:                                      ; preds = %cond.false721, %cond.false703.cond.end725_crit_edge, %do.body680.cond.end725_crit_edge
  %168 = ptrtoint ptr %port574 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %port574, align 4
  %and729 = and i32 %169, 1048575
  %add730 = or i32 %and729, -18874368
  %170 = inttoptr i32 %add730 to ptr
  %171 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %170) #5, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !129
  %arrayidx737 = getelementptr i8, ptr %buf, i32 %k.22112
  %172 = ptrtoint ptr %arrayidx737 to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 %171, ptr %arrayidx737, align 1
  %sub738 = sub i32 1, %ph.22111
  %inc740 = add nuw nsw i32 %k.22112, 1
  %exitcond2124.not = icmp eq i32 %inc740, %sub676
  br i1 %exitcond2124.not, label %cond.end725.do.body742_crit_edge, label %cond.end725.do.body680_crit_edge

cond.end725.do.body680_crit_edge:                 ; preds = %cond.end725
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body680

cond.end725.do.body742_crit_edge:                 ; preds = %cond.end725
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body742

do.body742:                                       ; preds = %cond.end725.do.body742_crit_edge, %cond.end674.do.body742_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !130
  tail call void @arm_heavy_mb() #5
  %173 = ptrtoint ptr %port574 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %port574, align 4
  %add746 = add i32 %174, 2
  %and747 = and i32 %add746, 1048575
  %add748 = or i32 %and747, -18874368
  %175 = inttoptr i32 %add748 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %175, i8 38) #5, !srcloc !57
  %176 = ptrtoint ptr %delay579 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %delay579, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %177)
  %tobool751.not = icmp eq i32 %177, 0
  br i1 %tobool751.not, label %do.body742.do.body768_crit_edge, label %cond.false763

do.body742.do.body768_crit_edge:                  ; preds = %do.body742
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body768

cond.false763:                                    ; preds = %do.body742
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %178 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %178(i32 noundef %177) #5
  br label %do.body768

do.body768:                                       ; preds = %cond.false763, %do.body742.do.body768_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !131
  tail call void @arm_heavy_mb() #5
  %179 = ptrtoint ptr %port574 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %port574, align 4
  %add772 = add i32 %180, 2
  %and773 = and i32 %add772, 1048575
  %add774 = or i32 %and773, -18874368
  %181 = inttoptr i32 %add774 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %181, i8 39) #5, !srcloc !57
  %182 = ptrtoint ptr %delay579 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %delay579, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %183)
  %tobool777.not = icmp eq i32 %183, 0
  br i1 %tobool777.not, label %do.body768.cond.end811_crit_edge, label %cond.false789

do.body768.cond.end811_crit_edge:                 ; preds = %do.body768
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end811

cond.false789:                                    ; preds = %do.body768
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %184 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %184(i32 noundef %183) #5
  %185 = ptrtoint ptr %delay579 to i32
  call void @__asan_load4_noabort(i32 %185)
  %.pr2093 = load i32, ptr %delay579, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr2093)
  %tobool795.not = icmp eq i32 %.pr2093, 0
  br i1 %tobool795.not, label %cond.false789.cond.end811_crit_edge, label %cond.false807

cond.false789.cond.end811_crit_edge:              ; preds = %cond.false789
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end811

cond.false807:                                    ; preds = %cond.false789
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %186 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %186(i32 noundef %.pr2093) #5
  br label %cond.end811

cond.end811:                                      ; preds = %cond.false807, %cond.false789.cond.end811_crit_edge, %do.body768.cond.end811_crit_edge
  %187 = ptrtoint ptr %port574 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %port574, align 4
  %and815 = and i32 %188, 1048575
  %add816 = or i32 %and815, -18874368
  %189 = inttoptr i32 %add816 to ptr
  %190 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %189) #5, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !132
  %arrayidx824 = getelementptr i8, ptr %buf, i32 %sub676
  %191 = ptrtoint ptr %arrayidx824 to i32
  call void @__asan_store1_noabort(i32 %191)
  store i8 %190, ptr %arrayidx824, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !133
  tail call void @arm_heavy_mb() #5
  %192 = ptrtoint ptr %port574 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %port574, align 4
  %add829 = add i32 %193, 2
  %and830 = and i32 %add829, 1048575
  %add831 = or i32 %and830, -18874368
  %194 = inttoptr i32 %add831 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %194, i8 37) #5, !srcloc !57
  %195 = ptrtoint ptr %delay579 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %delay579, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %196)
  %tobool834.not = icmp eq i32 %196, 0
  br i1 %tobool834.not, label %cond.end811.do.body851_crit_edge, label %cond.false846

cond.end811.do.body851_crit_edge:                 ; preds = %cond.end811
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body851

cond.false846:                                    ; preds = %cond.end811
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %197 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %197(i32 noundef %196) #5
  br label %do.body851

do.body851:                                       ; preds = %cond.false846, %cond.end811.do.body851_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !134
  tail call void @arm_heavy_mb() #5
  %198 = ptrtoint ptr %port574 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %port574, align 4
  %add855 = add i32 %199, 2
  %and856 = and i32 %add855, 1048575
  %add857 = or i32 %and856, -18874368
  %200 = inttoptr i32 %add857 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %200, i8 4) #5, !srcloc !57
  %201 = ptrtoint ptr %delay579 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %delay579, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %202)
  %tobool860.not = icmp eq i32 %202, 0
  br i1 %tobool860.not, label %do.body851.sw.epilog_crit_edge, label %do.body851.sw.epilog.sink.split_crit_edge

do.body851.sw.epilog.sink.split_crit_edge:        ; preds = %do.body851
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

do.body851.sw.epilog_crit_edge:                   ; preds = %do.body851
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.body878:                                       ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !135
  tail call void @arm_heavy_mb() #5
  %port881 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %203 = ptrtoint ptr %port881 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %port881, align 4
  %add882 = add i32 %204, 3
  %and883 = and i32 %add882, 1048575
  %add884 = or i32 %and883, -18874368
  %205 = inttoptr i32 %add884 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %205, i8 -128) #5, !srcloc !57
  %delay886 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %206 = ptrtoint ptr %delay886 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %delay886, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %207)
  %tobool887.not = icmp eq i32 %207, 0
  br i1 %tobool887.not, label %do.body878.do.body904_crit_edge, label %cond.false899

do.body878.do.body904_crit_edge:                  ; preds = %do.body878
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body904

cond.false899:                                    ; preds = %do.body878
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %208 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %208(i32 noundef %207) #5
  br label %do.body904

do.body904:                                       ; preds = %cond.false899, %do.body878.do.body904_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !136
  tail call void @arm_heavy_mb() #5
  %209 = ptrtoint ptr %port881 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %port881, align 4
  %add908 = add i32 %210, 2
  %and909 = and i32 %add908, 1048575
  %add910 = or i32 %and909, -18874368
  %211 = inttoptr i32 %add910 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %211, i8 36) #5, !srcloc !57
  %212 = ptrtoint ptr %delay886 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %delay886, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %213)
  %tobool913.not = icmp eq i32 %213, 0
  br i1 %tobool913.not, label %do.body904.cond.end929_crit_edge, label %cond.false925

do.body904.cond.end929_crit_edge:                 ; preds = %do.body904
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end929

cond.false925:                                    ; preds = %do.body904
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %214 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %214(i32 noundef %213) #5
  br label %cond.end929

cond.end929:                                      ; preds = %cond.false925, %do.body904.cond.end929_crit_edge
  %sub931 = add i32 %count, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub931)
  %cmp9322107 = icmp sgt i32 %sub931, 0
  br i1 %cmp9322107, label %cond.end929.for.body934_crit_edge, label %cond.end929.do.body968_crit_edge

cond.end929.do.body968_crit_edge:                 ; preds = %cond.end929
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body968

cond.end929.for.body934_crit_edge:                ; preds = %cond.end929
  br label %for.body934

for.body934:                                      ; preds = %cond.end952.for.body934_crit_edge, %cond.end929.for.body934_crit_edge
  %k.32108 = phi i32 [ %inc966, %cond.end952.for.body934_crit_edge ], [ 0, %cond.end929.for.body934_crit_edge ]
  %215 = ptrtoint ptr %delay886 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %delay886, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %216)
  %tobool936.not = icmp eq i32 %216, 0
  br i1 %tobool936.not, label %for.body934.cond.end952_crit_edge, label %cond.false948

for.body934.cond.end952_crit_edge:                ; preds = %for.body934
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end952

cond.false948:                                    ; preds = %for.body934
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %217 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %217(i32 noundef %216) #5
  br label %cond.end952

cond.end952:                                      ; preds = %cond.false948, %for.body934.cond.end952_crit_edge
  %218 = ptrtoint ptr %port881 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %port881, align 4
  %add955 = add i32 %219, 4
  %and956 = and i32 %add955, 1048575
  %add957 = or i32 %and956, -18874368
  %220 = inttoptr i32 %add957 to ptr
  %221 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %220) #5, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !137
  %arrayidx964 = getelementptr i8, ptr %buf, i32 %k.32108
  %222 = ptrtoint ptr %arrayidx964 to i32
  call void @__asan_store1_noabort(i32 %222)
  store i8 %221, ptr %arrayidx964, align 1
  %inc966 = add nuw nsw i32 %k.32108, 1
  %exitcond2123.not = icmp eq i32 %inc966, %sub931
  br i1 %exitcond2123.not, label %cond.end952.do.body968_crit_edge, label %cond.end952.for.body934_crit_edge

cond.end952.for.body934_crit_edge:                ; preds = %cond.end952
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body934

cond.end952.do.body968_crit_edge:                 ; preds = %cond.end952
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body968

do.body968:                                       ; preds = %cond.end952.do.body968_crit_edge, %cond.end929.do.body968_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !138
  tail call void @arm_heavy_mb() #5
  %223 = ptrtoint ptr %port881 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %port881, align 4
  %add972 = add i32 %224, 2
  %and973 = and i32 %add972, 1048575
  %add974 = or i32 %and973, -18874368
  %225 = inttoptr i32 %add974 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %225, i8 4) #5, !srcloc !57
  %226 = ptrtoint ptr %delay886 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %delay886, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %227)
  %tobool977.not = icmp eq i32 %227, 0
  br i1 %tobool977.not, label %do.body968.do.body994_crit_edge, label %cond.false989

do.body968.do.body994_crit_edge:                  ; preds = %do.body968
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body994

cond.false989:                                    ; preds = %do.body968
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %228 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %228(i32 noundef %227) #5
  br label %do.body994

do.body994:                                       ; preds = %cond.false989, %do.body968.do.body994_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !139
  tail call void @arm_heavy_mb() #5
  %229 = ptrtoint ptr %port881 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %port881, align 4
  %add998 = add i32 %230, 3
  %and999 = and i32 %add998, 1048575
  %add1000 = or i32 %and999, -18874368
  %231 = inttoptr i32 %add1000 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %231, i8 -96) #5, !srcloc !57
  %232 = ptrtoint ptr %delay886 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %delay886, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %233)
  %tobool1003.not = icmp eq i32 %233, 0
  br i1 %tobool1003.not, label %do.body994.do.body1020_crit_edge, label %cond.false1015

do.body994.do.body1020_crit_edge:                 ; preds = %do.body994
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1020

cond.false1015:                                   ; preds = %do.body994
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %234 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %234(i32 noundef %233) #5
  br label %do.body1020

do.body1020:                                      ; preds = %cond.false1015, %do.body994.do.body1020_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  tail call void @arm_heavy_mb() #5
  %235 = ptrtoint ptr %port881 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %port881, align 4
  %add1024 = add i32 %236, 2
  %and1025 = and i32 %add1024, 1048575
  %add1026 = or i32 %and1025, -18874368
  %237 = inttoptr i32 %add1026 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %237, i8 36) #5, !srcloc !57
  %238 = ptrtoint ptr %delay886 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %delay886, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %239)
  %tobool1029.not = icmp eq i32 %239, 0
  br i1 %tobool1029.not, label %do.body1020.cond.end1063_crit_edge, label %cond.false1041

do.body1020.cond.end1063_crit_edge:               ; preds = %do.body1020
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end1063

cond.false1041:                                   ; preds = %do.body1020
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %240 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %240(i32 noundef %239) #5
  %241 = ptrtoint ptr %delay886 to i32
  call void @__asan_load4_noabort(i32 %241)
  %.pr2095 = load i32, ptr %delay886, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr2095)
  %tobool1047.not = icmp eq i32 %.pr2095, 0
  br i1 %tobool1047.not, label %cond.false1041.cond.end1063_crit_edge, label %cond.false1059

cond.false1041.cond.end1063_crit_edge:            ; preds = %cond.false1041
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end1063

cond.false1059:                                   ; preds = %cond.false1041
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %242 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %242(i32 noundef %.pr2095) #5
  br label %cond.end1063

cond.end1063:                                     ; preds = %cond.false1059, %cond.false1041.cond.end1063_crit_edge, %do.body1020.cond.end1063_crit_edge
  %243 = ptrtoint ptr %port881 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %port881, align 4
  %add1066 = add i32 %244, 4
  %and1067 = and i32 %add1066, 1048575
  %add1068 = or i32 %and1067, -18874368
  %245 = inttoptr i32 %add1068 to ptr
  %246 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %245) #5, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !141
  %arrayidx1076 = getelementptr i8, ptr %buf, i32 %sub931
  %247 = ptrtoint ptr %arrayidx1076 to i32
  call void @__asan_store1_noabort(i32 %247)
  store i8 %246, ptr %arrayidx1076, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !142
  tail call void @arm_heavy_mb() #5
  %248 = ptrtoint ptr %port881 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %port881, align 4
  %add1081 = add i32 %249, 2
  %and1082 = and i32 %add1081, 1048575
  %add1083 = or i32 %and1082, -18874368
  %250 = inttoptr i32 %add1083 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %250, i8 4) #5, !srcloc !57
  %251 = ptrtoint ptr %delay886 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %delay886, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %252)
  %tobool1086.not = icmp eq i32 %252, 0
  br i1 %tobool1086.not, label %cond.end1063.sw.epilog_crit_edge, label %cond.end1063.sw.epilog.sink.split_crit_edge

cond.end1063.sw.epilog.sink.split_crit_edge:      ; preds = %cond.end1063
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

cond.end1063.sw.epilog_crit_edge:                 ; preds = %cond.end1063
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.body1104:                                      ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !143
  tail call void @arm_heavy_mb() #5
  %port1107 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %253 = ptrtoint ptr %port1107 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %port1107, align 4
  %add1108 = add i32 %254, 3
  %and1109 = and i32 %add1108, 1048575
  %add1110 = or i32 %and1109, -18874368
  %255 = inttoptr i32 %add1110 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %255, i8 -128) #5, !srcloc !57
  %delay1112 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %256 = ptrtoint ptr %delay1112 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %delay1112, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %257)
  %tobool1113.not = icmp eq i32 %257, 0
  br i1 %tobool1113.not, label %do.body1104.do.body1130_crit_edge, label %cond.false1125

do.body1104.do.body1130_crit_edge:                ; preds = %do.body1104
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1130

cond.false1125:                                   ; preds = %do.body1104
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %258 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %258(i32 noundef %257) #5
  br label %do.body1130

do.body1130:                                      ; preds = %cond.false1125, %do.body1104.do.body1130_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !144
  tail call void @arm_heavy_mb() #5
  %259 = ptrtoint ptr %port1107 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %port1107, align 4
  %add1134 = add i32 %260, 2
  %and1135 = and i32 %add1134, 1048575
  %add1136 = or i32 %and1135, -18874368
  %261 = inttoptr i32 %add1136 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %261, i8 36) #5, !srcloc !57
  %262 = ptrtoint ptr %delay1112 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %delay1112, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %263)
  %tobool1139.not = icmp eq i32 %263, 0
  br i1 %tobool1139.not, label %do.body1130.cond.end1155_crit_edge, label %cond.false1151

do.body1130.cond.end1155_crit_edge:               ; preds = %do.body1130
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end1155

cond.false1151:                                   ; preds = %do.body1130
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %264 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %264(i32 noundef %263) #5
  br label %cond.end1155

cond.end1155:                                     ; preds = %cond.false1151, %do.body1130.cond.end1155_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %count)
  %cmp11582105 = icmp sgt i32 %count, 3
  br i1 %cmp11582105, label %for.body1160.preheader, label %cond.end1155.for.end1193_crit_edge

cond.end1155.for.end1193_crit_edge:               ; preds = %cond.end1155
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end1193

for.body1160.preheader:                           ; preds = %cond.end1155
  %div21272130 = lshr i32 %count, 1
  %265 = add nsw i32 %div21272130, -2
  br label %for.body1160

for.body1160:                                     ; preds = %cond.end1178.for.body1160_crit_edge, %for.body1160.preheader
  %k.42106 = phi i32 [ %inc1192, %cond.end1178.for.body1160_crit_edge ], [ 0, %for.body1160.preheader ]
  %266 = ptrtoint ptr %delay1112 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %delay1112, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %267)
  %tobool1162.not = icmp eq i32 %267, 0
  br i1 %tobool1162.not, label %for.body1160.cond.end1178_crit_edge, label %cond.false1174

for.body1160.cond.end1178_crit_edge:              ; preds = %for.body1160
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end1178

cond.false1174:                                   ; preds = %for.body1160
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %268 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %268(i32 noundef %267) #5
  br label %cond.end1178

cond.end1178:                                     ; preds = %cond.false1174, %for.body1160.cond.end1178_crit_edge
  %269 = ptrtoint ptr %port1107 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %port1107, align 4
  %add1181 = add i32 %270, 4
  %and1182 = and i32 %add1181, 1048575
  %add1183 = or i32 %and1182, -18874368
  %271 = inttoptr i32 %add1183 to ptr
  %272 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %271) #5, !srcloc !145
  %273 = tail call i16 @llvm.bswap.i16(i16 %272)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !146
  %arrayidx1190 = getelementptr i16, ptr %buf, i32 %k.42106
  %274 = ptrtoint ptr %arrayidx1190 to i32
  call void @__asan_store2_noabort(i32 %274)
  store i16 %273, ptr %arrayidx1190, align 2
  %inc1192 = add nuw nsw i32 %k.42106, 1
  %exitcond2122.not = icmp eq i32 %k.42106, %265
  br i1 %exitcond2122.not, label %cond.end1178.for.end1193_crit_edge, label %cond.end1178.for.body1160_crit_edge

cond.end1178.for.body1160_crit_edge:              ; preds = %cond.end1178
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body1160

cond.end1178.for.end1193_crit_edge:               ; preds = %cond.end1178
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end1193

for.end1193:                                      ; preds = %cond.end1178.for.end1193_crit_edge, %cond.end1155.for.end1193_crit_edge
  %275 = ptrtoint ptr %delay1112 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %delay1112, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %276)
  %tobool1195.not = icmp eq i32 %276, 0
  br i1 %tobool1195.not, label %for.end1193.cond.end1211_crit_edge, label %cond.false1207

for.end1193.cond.end1211_crit_edge:               ; preds = %for.end1193
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end1211

cond.false1207:                                   ; preds = %for.end1193
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %277 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %277(i32 noundef %276) #5
  br label %cond.end1211

cond.end1211:                                     ; preds = %cond.false1207, %for.end1193.cond.end1211_crit_edge
  %278 = ptrtoint ptr %port1107 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %port1107, align 4
  %add1214 = add i32 %279, 4
  %and1215 = and i32 %add1214, 1048575
  %add1216 = or i32 %and1215, -18874368
  %280 = inttoptr i32 %add1216 to ptr
  %281 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %280) #5, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !147
  %sub1223 = add i32 %count, -2
  %arrayidx1224 = getelementptr i8, ptr %buf, i32 %sub1223
  %282 = ptrtoint ptr %arrayidx1224 to i32
  call void @__asan_store1_noabort(i32 %282)
  store i8 %281, ptr %arrayidx1224, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !148
  tail call void @arm_heavy_mb() #5
  %283 = ptrtoint ptr %port1107 to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %port1107, align 4
  %add1229 = add i32 %284, 2
  %and1230 = and i32 %add1229, 1048575
  %add1231 = or i32 %and1230, -18874368
  %285 = inttoptr i32 %add1231 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %285, i8 4) #5, !srcloc !57
  %286 = ptrtoint ptr %delay1112 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %delay1112, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %287)
  %tobool1234.not = icmp eq i32 %287, 0
  br i1 %tobool1234.not, label %cond.end1211.do.body1251_crit_edge, label %cond.false1246

cond.end1211.do.body1251_crit_edge:               ; preds = %cond.end1211
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1251

cond.false1246:                                   ; preds = %cond.end1211
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %288 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %288(i32 noundef %287) #5
  br label %do.body1251

do.body1251:                                      ; preds = %cond.false1246, %cond.end1211.do.body1251_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !149
  tail call void @arm_heavy_mb() #5
  %289 = ptrtoint ptr %port1107 to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %port1107, align 4
  %add1255 = add i32 %290, 3
  %and1256 = and i32 %add1255, 1048575
  %add1257 = or i32 %and1256, -18874368
  %291 = inttoptr i32 %add1257 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %291, i8 -96) #5, !srcloc !57
  %292 = ptrtoint ptr %delay1112 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load i32, ptr %delay1112, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %293)
  %tobool1260.not = icmp eq i32 %293, 0
  br i1 %tobool1260.not, label %do.body1251.do.body1277_crit_edge, label %cond.false1272

do.body1251.do.body1277_crit_edge:                ; preds = %do.body1251
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1277

cond.false1272:                                   ; preds = %do.body1251
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %294 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %294(i32 noundef %293) #5
  br label %do.body1277

do.body1277:                                      ; preds = %cond.false1272, %do.body1251.do.body1277_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !150
  tail call void @arm_heavy_mb() #5
  %295 = ptrtoint ptr %port1107 to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load i32, ptr %port1107, align 4
  %add1281 = add i32 %296, 2
  %and1282 = and i32 %add1281, 1048575
  %add1283 = or i32 %and1282, -18874368
  %297 = inttoptr i32 %add1283 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %297, i8 36) #5, !srcloc !57
  %298 = ptrtoint ptr %delay1112 to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %delay1112, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %299)
  %tobool1286.not = icmp eq i32 %299, 0
  br i1 %tobool1286.not, label %do.body1277.cond.end1320_crit_edge, label %cond.false1298

do.body1277.cond.end1320_crit_edge:               ; preds = %do.body1277
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end1320

cond.false1298:                                   ; preds = %do.body1277
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %300 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %300(i32 noundef %299) #5
  %301 = ptrtoint ptr %delay1112 to i32
  call void @__asan_load4_noabort(i32 %301)
  %.pr2097 = load i32, ptr %delay1112, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr2097)
  %tobool1304.not = icmp eq i32 %.pr2097, 0
  br i1 %tobool1304.not, label %cond.false1298.cond.end1320_crit_edge, label %cond.false1316

cond.false1298.cond.end1320_crit_edge:            ; preds = %cond.false1298
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end1320

cond.false1316:                                   ; preds = %cond.false1298
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %302 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %302(i32 noundef %.pr2097) #5
  br label %cond.end1320

cond.end1320:                                     ; preds = %cond.false1316, %cond.false1298.cond.end1320_crit_edge, %do.body1277.cond.end1320_crit_edge
  %303 = ptrtoint ptr %port1107 to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load i32, ptr %port1107, align 4
  %add1323 = add i32 %304, 4
  %and1324 = and i32 %add1323, 1048575
  %add1325 = or i32 %and1324, -18874368
  %305 = inttoptr i32 %add1325 to ptr
  %306 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %305) #5, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !151
  %sub1332 = add i32 %count, -1
  %arrayidx1333 = getelementptr i8, ptr %buf, i32 %sub1332
  %307 = ptrtoint ptr %arrayidx1333 to i32
  call void @__asan_store1_noabort(i32 %307)
  store i8 %306, ptr %arrayidx1333, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !152
  tail call void @arm_heavy_mb() #5
  %308 = ptrtoint ptr %port1107 to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load i32, ptr %port1107, align 4
  %add1338 = add i32 %309, 2
  %and1339 = and i32 %add1338, 1048575
  %add1340 = or i32 %and1339, -18874368
  %310 = inttoptr i32 %add1340 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %310, i8 4) #5, !srcloc !57
  %311 = ptrtoint ptr %delay1112 to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load i32, ptr %delay1112, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %312)
  %tobool1343.not = icmp eq i32 %312, 0
  br i1 %tobool1343.not, label %cond.end1320.sw.epilog_crit_edge, label %cond.end1320.sw.epilog.sink.split_crit_edge

cond.end1320.sw.epilog.sink.split_crit_edge:      ; preds = %cond.end1320
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

cond.end1320.sw.epilog_crit_edge:                 ; preds = %cond.end1320
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.body1361:                                      ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !153
  tail call void @arm_heavy_mb() #5
  %port1364 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %313 = ptrtoint ptr %port1364 to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load i32, ptr %port1364, align 4
  %add1365 = add i32 %314, 3
  %and1366 = and i32 %add1365, 1048575
  %add1367 = or i32 %and1366, -18874368
  %315 = inttoptr i32 %add1367 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %315, i8 -128) #5, !srcloc !57
  %delay1369 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %316 = ptrtoint ptr %delay1369 to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load i32, ptr %delay1369, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %317)
  %tobool1370.not = icmp eq i32 %317, 0
  br i1 %tobool1370.not, label %do.body1361.do.body1387_crit_edge, label %cond.false1382

do.body1361.do.body1387_crit_edge:                ; preds = %do.body1361
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1387

cond.false1382:                                   ; preds = %do.body1361
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %318 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %318(i32 noundef %317) #5
  br label %do.body1387

do.body1387:                                      ; preds = %cond.false1382, %do.body1361.do.body1387_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !154
  tail call void @arm_heavy_mb() #5
  %319 = ptrtoint ptr %port1364 to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load i32, ptr %port1364, align 4
  %add1391 = add i32 %320, 2
  %and1392 = and i32 %add1391, 1048575
  %add1393 = or i32 %and1392, -18874368
  %321 = inttoptr i32 %add1393 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %321, i8 36) #5, !srcloc !57
  %322 = ptrtoint ptr %delay1369 to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load i32, ptr %delay1369, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %323)
  %tobool1396.not = icmp eq i32 %323, 0
  br i1 %tobool1396.not, label %do.body1387.cond.end1412_crit_edge, label %cond.false1408

do.body1387.cond.end1412_crit_edge:               ; preds = %do.body1387
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end1412

cond.false1408:                                   ; preds = %do.body1387
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %324 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %324(i32 noundef %323) #5
  br label %cond.end1412

cond.end1412:                                     ; preds = %cond.false1408, %do.body1387.cond.end1412_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %count)
  %cmp14162101 = icmp sgt i32 %count, 7
  br i1 %cmp14162101, label %for.body1418.preheader, label %cond.end1412.for.end1449_crit_edge

cond.end1412.for.end1449_crit_edge:               ; preds = %cond.end1412
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end1449

for.body1418.preheader:                           ; preds = %cond.end1412
  %div141421282129 = lshr i32 %count, 2
  %325 = add nsw i32 %div141421282129, -2
  br label %for.body1418

for.body1418:                                     ; preds = %cond.end1436.for.body1418_crit_edge, %for.body1418.preheader
  %k.52102 = phi i32 [ %inc1448, %cond.end1436.for.body1418_crit_edge ], [ 0, %for.body1418.preheader ]
  %326 = ptrtoint ptr %delay1369 to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load i32, ptr %delay1369, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %327)
  %tobool1420.not = icmp eq i32 %327, 0
  br i1 %tobool1420.not, label %for.body1418.cond.end1436_crit_edge, label %cond.false1432

for.body1418.cond.end1436_crit_edge:              ; preds = %for.body1418
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end1436

cond.false1432:                                   ; preds = %for.body1418
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %328 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %328(i32 noundef %327) #5
  br label %cond.end1436

cond.end1436:                                     ; preds = %cond.false1432, %for.body1418.cond.end1436_crit_edge
  %329 = ptrtoint ptr %port1364 to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load i32, ptr %port1364, align 4
  %add1439 = add i32 %330, 4
  %and1440 = and i32 %add1439, 1048575
  %add1441 = or i32 %and1440, -18874368
  %331 = inttoptr i32 %add1441 to ptr
  %332 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %331) #5, !srcloc !155
  %333 = tail call i32 @llvm.bswap.i32(i32 %332)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !156
  %arrayidx1446 = getelementptr i32, ptr %buf, i32 %k.52102
  %334 = ptrtoint ptr %arrayidx1446 to i32
  call void @__asan_store4_noabort(i32 %334)
  store i32 %333, ptr %arrayidx1446, align 4
  %inc1448 = add nuw nsw i32 %k.52102, 1
  %exitcond.not = icmp eq i32 %k.52102, %325
  br i1 %exitcond.not, label %cond.end1436.for.end1449_crit_edge, label %cond.end1436.for.body1418_crit_edge

cond.end1436.for.body1418_crit_edge:              ; preds = %cond.end1436
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body1418

cond.end1436.for.end1449_crit_edge:               ; preds = %cond.end1436
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end1449

for.end1449:                                      ; preds = %cond.end1436.for.end1449_crit_edge, %cond.end1412.for.end1449_crit_edge
  %sub1450 = add i32 %count, -4
  %sub1452 = add i32 %count, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub1450, i32 %sub1452)
  %cmp14532103 = icmp slt i32 %sub1450, %sub1452
  br i1 %cmp14532103, label %for.body1455.preheader, label %for.end1449.do.body1489_crit_edge

for.end1449.do.body1489_crit_edge:                ; preds = %for.end1449
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1489

for.body1455.preheader:                           ; preds = %for.end1449
  %335 = ptrtoint ptr %delay1369 to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load i32, ptr %delay1369, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %336)
  %tobool1457.not = icmp eq i32 %336, 0
  br i1 %tobool1457.not, label %for.body1455.preheader.cond.end1473_crit_edge, label %cond.false1469

for.body1455.preheader.cond.end1473_crit_edge:    ; preds = %for.body1455.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end1473

cond.false1469:                                   ; preds = %for.body1455.preheader
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %337 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %337(i32 noundef %336) #5
  br label %cond.end1473

cond.end1473:                                     ; preds = %cond.false1469, %for.body1455.preheader.cond.end1473_crit_edge
  %338 = ptrtoint ptr %port1364 to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load i32, ptr %port1364, align 4
  %add1476 = add i32 %339, 4
  %and1477 = and i32 %add1476, 1048575
  %add1478 = or i32 %and1477, -18874368
  %340 = inttoptr i32 %add1478 to ptr
  %341 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %340) #5, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !157
  %arrayidx1485 = getelementptr i8, ptr %buf, i32 %sub1450
  %342 = ptrtoint ptr %arrayidx1485 to i32
  call void @__asan_store1_noabort(i32 %342)
  store i8 %341, ptr %arrayidx1485, align 1
  %inc1487 = add i32 %count, -3
  %343 = ptrtoint ptr %delay1369 to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load i32, ptr %delay1369, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %344)
  %tobool1457.not.1 = icmp eq i32 %344, 0
  br i1 %tobool1457.not.1, label %cond.end1473.cond.end1473.1_crit_edge, label %cond.false1469.1

cond.end1473.cond.end1473.1_crit_edge:            ; preds = %cond.end1473
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end1473.1

cond.false1469.1:                                 ; preds = %cond.end1473
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %345 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %345(i32 noundef %344) #5
  br label %cond.end1473.1

cond.end1473.1:                                   ; preds = %cond.false1469.1, %cond.end1473.cond.end1473.1_crit_edge
  %346 = ptrtoint ptr %port1364 to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load i32, ptr %port1364, align 4
  %add1476.1 = add i32 %347, 4
  %and1477.1 = and i32 %add1476.1, 1048575
  %add1478.1 = or i32 %and1477.1, -18874368
  %348 = inttoptr i32 %add1478.1 to ptr
  %349 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %348) #5, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !157
  %arrayidx1485.1 = getelementptr i8, ptr %buf, i32 %inc1487
  %350 = ptrtoint ptr %arrayidx1485.1 to i32
  call void @__asan_store1_noabort(i32 %350)
  store i8 %349, ptr %arrayidx1485.1, align 1
  %inc1487.1 = add i32 %count, -2
  %351 = ptrtoint ptr %delay1369 to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load i32, ptr %delay1369, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %352)
  %tobool1457.not.2 = icmp eq i32 %352, 0
  br i1 %tobool1457.not.2, label %cond.end1473.1.cond.end1473.2_crit_edge, label %cond.false1469.2

cond.end1473.1.cond.end1473.2_crit_edge:          ; preds = %cond.end1473.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end1473.2

cond.false1469.2:                                 ; preds = %cond.end1473.1
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %353 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %353(i32 noundef %352) #5
  br label %cond.end1473.2

cond.end1473.2:                                   ; preds = %cond.false1469.2, %cond.end1473.1.cond.end1473.2_crit_edge
  %354 = ptrtoint ptr %port1364 to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load i32, ptr %port1364, align 4
  %add1476.2 = add i32 %355, 4
  %and1477.2 = and i32 %add1476.2, 1048575
  %add1478.2 = or i32 %and1477.2, -18874368
  %356 = inttoptr i32 %add1478.2 to ptr
  %357 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %356) #5, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !157
  %arrayidx1485.2 = getelementptr i8, ptr %buf, i32 %inc1487.1
  %358 = ptrtoint ptr %arrayidx1485.2 to i32
  call void @__asan_store1_noabort(i32 %358)
  store i8 %357, ptr %arrayidx1485.2, align 1
  br label %do.body1489

do.body1489:                                      ; preds = %cond.end1473.2, %for.end1449.do.body1489_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !158
  tail call void @arm_heavy_mb() #5
  %359 = ptrtoint ptr %port1364 to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load i32, ptr %port1364, align 4
  %add1493 = add i32 %360, 2
  %and1494 = and i32 %add1493, 1048575
  %add1495 = or i32 %and1494, -18874368
  %361 = inttoptr i32 %add1495 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %361, i8 4) #5, !srcloc !57
  %362 = ptrtoint ptr %delay1369 to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load i32, ptr %delay1369, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %363)
  %tobool1498.not = icmp eq i32 %363, 0
  br i1 %tobool1498.not, label %do.body1489.do.body1515_crit_edge, label %cond.false1510

do.body1489.do.body1515_crit_edge:                ; preds = %do.body1489
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1515

cond.false1510:                                   ; preds = %do.body1489
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %364 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %364(i32 noundef %363) #5
  br label %do.body1515

do.body1515:                                      ; preds = %cond.false1510, %do.body1489.do.body1515_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !159
  tail call void @arm_heavy_mb() #5
  %365 = ptrtoint ptr %port1364 to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load i32, ptr %port1364, align 4
  %add1519 = add i32 %366, 3
  %and1520 = and i32 %add1519, 1048575
  %add1521 = or i32 %and1520, -18874368
  %367 = inttoptr i32 %add1521 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %367, i8 -96) #5, !srcloc !57
  %368 = ptrtoint ptr %delay1369 to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load i32, ptr %delay1369, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %369)
  %tobool1524.not = icmp eq i32 %369, 0
  br i1 %tobool1524.not, label %do.body1515.do.body1541_crit_edge, label %cond.false1536

do.body1515.do.body1541_crit_edge:                ; preds = %do.body1515
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1541

cond.false1536:                                   ; preds = %do.body1515
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %370 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %370(i32 noundef %369) #5
  br label %do.body1541

do.body1541:                                      ; preds = %cond.false1536, %do.body1515.do.body1541_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !160
  tail call void @arm_heavy_mb() #5
  %371 = ptrtoint ptr %port1364 to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load i32, ptr %port1364, align 4
  %add1545 = add i32 %372, 2
  %and1546 = and i32 %add1545, 1048575
  %add1547 = or i32 %and1546, -18874368
  %373 = inttoptr i32 %add1547 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %373, i8 36) #5, !srcloc !57
  %374 = ptrtoint ptr %delay1369 to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load i32, ptr %delay1369, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %375)
  %tobool1550.not = icmp eq i32 %375, 0
  br i1 %tobool1550.not, label %do.body1541.cond.end1584_crit_edge, label %cond.false1562

do.body1541.cond.end1584_crit_edge:               ; preds = %do.body1541
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end1584

cond.false1562:                                   ; preds = %do.body1541
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %376 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %376(i32 noundef %375) #5
  %377 = ptrtoint ptr %delay1369 to i32
  call void @__asan_load4_noabort(i32 %377)
  %.pr2099 = load i32, ptr %delay1369, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr2099)
  %tobool1568.not = icmp eq i32 %.pr2099, 0
  br i1 %tobool1568.not, label %cond.false1562.cond.end1584_crit_edge, label %cond.false1580

cond.false1562.cond.end1584_crit_edge:            ; preds = %cond.false1562
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end1584

cond.false1580:                                   ; preds = %cond.false1562
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %378 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %378(i32 noundef %.pr2099) #5
  br label %cond.end1584

cond.end1584:                                     ; preds = %cond.false1580, %cond.false1562.cond.end1584_crit_edge, %do.body1541.cond.end1584_crit_edge
  %379 = ptrtoint ptr %port1364 to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load i32, ptr %port1364, align 4
  %add1587 = add i32 %380, 4
  %and1588 = and i32 %add1587, 1048575
  %add1589 = or i32 %and1588, -18874368
  %381 = inttoptr i32 %add1589 to ptr
  %382 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %381) #5, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !161
  %arrayidx1597 = getelementptr i8, ptr %buf, i32 %sub1452
  %383 = ptrtoint ptr %arrayidx1597 to i32
  call void @__asan_store1_noabort(i32 %383)
  store i8 %382, ptr %arrayidx1597, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !162
  tail call void @arm_heavy_mb() #5
  %384 = ptrtoint ptr %port1364 to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load i32, ptr %port1364, align 4
  %add1602 = add i32 %385, 2
  %and1603 = and i32 %add1602, 1048575
  %add1604 = or i32 %and1603, -18874368
  %386 = inttoptr i32 %add1604 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %386, i8 4) #5, !srcloc !57
  %387 = ptrtoint ptr %delay1369 to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load i32, ptr %delay1369, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %388)
  %tobool1607.not = icmp eq i32 %388, 0
  br i1 %tobool1607.not, label %cond.end1584.sw.epilog_crit_edge, label %cond.end1584.sw.epilog.sink.split_crit_edge

cond.end1584.sw.epilog.sink.split_crit_edge:      ; preds = %cond.end1584
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

cond.end1584.sw.epilog_crit_edge:                 ; preds = %cond.end1584
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.epilog.sink.split:                             ; preds = %cond.end1584.sw.epilog.sink.split_crit_edge, %cond.end1320.sw.epilog.sink.split_crit_edge, %cond.end1063.sw.epilog.sink.split_crit_edge, %do.body851.sw.epilog.sink.split_crit_edge, %do.body544.sw.epilog.sink.split_crit_edge, %do.body258.sw.epilog.sink.split_crit_edge
  %.sink = phi i32 [ %71, %do.body258.sw.epilog.sink.split_crit_edge ], [ %134, %do.body544.sw.epilog.sink.split_crit_edge ], [ %202, %do.body851.sw.epilog.sink.split_crit_edge ], [ %252, %cond.end1063.sw.epilog.sink.split_crit_edge ], [ %312, %cond.end1320.sw.epilog.sink.split_crit_edge ], [ %388, %cond.end1584.sw.epilog.sink.split_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %389 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %389(i32 noundef %.sink) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %cond.end1584.sw.epilog_crit_edge, %cond.end1320.sw.epilog_crit_edge, %cond.end1063.sw.epilog_crit_edge, %do.body851.sw.epilog_crit_edge, %do.body544.sw.epilog_crit_edge, %do.body258.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @epat_connect(ptr noundef %pi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %delay = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %0 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cond.end10_crit_edge, label %cond.false6

entry.cond.end10_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end10

cond.false6:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %2(i32 noundef %1) #5
  br label %cond.end10

cond.end10:                                       ; preds = %cond.false6, %entry.cond.end10_crit_edge
  %port = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %3 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %port, align 4
  %and = and i32 %4, 1048575
  %add11 = or i32 %and, -18874368
  %5 = inttoptr i32 %add11 to ptr
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %5) #5, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !163
  %conv = zext i8 %6 to i32
  %saved_r0 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 7
  %7 = ptrtoint ptr %saved_r0 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv, ptr %saved_r0, align 4
  %8 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool15.not = icmp eq i32 %9, 0
  br i1 %tobool15.not, label %cond.end10.cond.end31_crit_edge, label %cond.false27

cond.end10.cond.end31_crit_edge:                  ; preds = %cond.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end31

cond.false27:                                     ; preds = %cond.end10
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %10(i32 noundef %9) #5
  br label %cond.end31

cond.end31:                                       ; preds = %cond.false27, %cond.end10.cond.end31_crit_edge
  %11 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %port, align 4
  %add34 = add i32 %12, 2
  %and35 = and i32 %add34, 1048575
  %add36 = or i32 %and35, -18874368
  %13 = inttoptr i32 %add36 to ptr
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %13) #5, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !164
  %conv40 = zext i8 %14 to i32
  %saved_r2 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 8
  %15 = ptrtoint ptr %saved_r2 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv40, ptr %saved_r2, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !165
  tail call void @arm_heavy_mb() #5
  %16 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %port, align 4
  %add43 = add i32 %17, 2
  %and44 = and i32 %add43, 1048575
  %add45 = or i32 %and44, -18874368
  %18 = inttoptr i32 %add45 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %18, i8 4) #5, !srcloc !57
  %19 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool48.not = icmp eq i32 %20, 0
  br i1 %tobool48.not, label %cond.end31.do.body65_crit_edge, label %cond.false60

cond.end31.do.body65_crit_edge:                   ; preds = %cond.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body65

cond.false60:                                     ; preds = %cond.end31
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %21(i32 noundef %20) #5
  br label %do.body65

do.body65:                                        ; preds = %cond.false60, %cond.end31.do.body65_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !166
  tail call void @arm_heavy_mb() #5
  %22 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %port, align 4
  %and69 = and i32 %23, 1048575
  %add70 = or i32 %and69, -18874368
  %24 = inttoptr i32 %add70 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %24, i8 34) #5, !srcloc !57
  %25 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool73.not = icmp eq i32 %26, 0
  br i1 %tobool73.not, label %do.body65.do.body90_crit_edge, label %cond.false85

do.body65.do.body90_crit_edge:                    ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body90

cond.false85:                                     ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %27(i32 noundef %26) #5
  br label %do.body90

do.body90:                                        ; preds = %cond.false85, %do.body65.do.body90_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !167
  tail call void @arm_heavy_mb() #5
  %28 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %port, align 4
  %and94 = and i32 %29, 1048575
  %add95 = or i32 %and94, -18874368
  %30 = inttoptr i32 %add95 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %30, i8 -86) #5, !srcloc !57
  %31 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool98.not = icmp eq i32 %32, 0
  br i1 %tobool98.not, label %do.body90.do.body115_crit_edge, label %cond.false110

do.body90.do.body115_crit_edge:                   ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body115

cond.false110:                                    ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %33(i32 noundef %32) #5
  br label %do.body115

do.body115:                                       ; preds = %cond.false110, %do.body90.do.body115_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !168
  tail call void @arm_heavy_mb() #5
  %34 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %port, align 4
  %and119 = and i32 %35, 1048575
  %add120 = or i32 %and119, -18874368
  %36 = inttoptr i32 %add120 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %36, i8 85) #5, !srcloc !57
  %37 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool123.not = icmp eq i32 %38, 0
  br i1 %tobool123.not, label %do.body115.do.body140_crit_edge, label %cond.false135

do.body115.do.body140_crit_edge:                  ; preds = %do.body115
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body140

cond.false135:                                    ; preds = %do.body115
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %39(i32 noundef %38) #5
  br label %do.body140

do.body140:                                       ; preds = %cond.false135, %do.body115.do.body140_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !169
  tail call void @arm_heavy_mb() #5
  %40 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %port, align 4
  %and144 = and i32 %41, 1048575
  %add145 = or i32 %and144, -18874368
  %42 = inttoptr i32 %add145 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %42, i8 0) #5, !srcloc !57
  %43 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool148.not = icmp eq i32 %44, 0
  br i1 %tobool148.not, label %do.body140.do.body165_crit_edge, label %cond.false160

do.body140.do.body165_crit_edge:                  ; preds = %do.body140
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body165

cond.false160:                                    ; preds = %do.body140
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %45(i32 noundef %44) #5
  br label %do.body165

do.body165:                                       ; preds = %cond.false160, %do.body140.do.body165_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !170
  tail call void @arm_heavy_mb() #5
  %46 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %port, align 4
  %and169 = and i32 %47, 1048575
  %add170 = or i32 %and169, -18874368
  %48 = inttoptr i32 %add170 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %48, i8 -1) #5, !srcloc !57
  %49 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool173.not = icmp eq i32 %50, 0
  br i1 %tobool173.not, label %do.body165.do.body190_crit_edge, label %cond.false185

do.body165.do.body190_crit_edge:                  ; preds = %do.body165
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body190

cond.false185:                                    ; preds = %do.body165
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %51(i32 noundef %50) #5
  br label %do.body190

do.body190:                                       ; preds = %cond.false185, %do.body165.do.body190_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !171
  tail call void @arm_heavy_mb() #5
  %52 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %port, align 4
  %and194 = and i32 %53, 1048575
  %add195 = or i32 %and194, -18874368
  %54 = inttoptr i32 %add195 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %54, i8 -121) #5, !srcloc !57
  %55 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool198.not = icmp eq i32 %56, 0
  br i1 %tobool198.not, label %do.body190.do.body215_crit_edge, label %cond.false210

do.body190.do.body215_crit_edge:                  ; preds = %do.body190
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body215

cond.false210:                                    ; preds = %do.body190
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %57 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %57(i32 noundef %56) #5
  br label %do.body215

do.body215:                                       ; preds = %cond.false210, %do.body190.do.body215_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !172
  tail call void @arm_heavy_mb() #5
  %58 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %port, align 4
  %and219 = and i32 %59, 1048575
  %add220 = or i32 %and219, -18874368
  %60 = inttoptr i32 %add220 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %60, i8 120) #5, !srcloc !57
  %61 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool223.not = icmp eq i32 %62, 0
  br i1 %tobool223.not, label %do.body215.do.body240_crit_edge, label %cond.false235

do.body215.do.body240_crit_edge:                  ; preds = %do.body215
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body240

cond.false235:                                    ; preds = %do.body215
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %63 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %63(i32 noundef %62) #5
  br label %do.body240

do.body240:                                       ; preds = %cond.false235, %do.body215.do.body240_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !173
  tail call void @arm_heavy_mb() #5
  %64 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %port, align 4
  %and244 = and i32 %65, 1048575
  %add245 = or i32 %and244, -18874368
  %66 = inttoptr i32 %add245 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %66, i8 0) #5, !srcloc !57
  %67 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool248.not = icmp eq i32 %68, 0
  br i1 %tobool248.not, label %do.body240.do.body265_crit_edge, label %cond.false260

do.body240.do.body265_crit_edge:                  ; preds = %do.body240
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body265

cond.false260:                                    ; preds = %do.body240
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %69 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %69(i32 noundef %68) #5
  br label %do.body265

do.body265:                                       ; preds = %cond.false260, %do.body240.do.body265_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !174
  tail call void @arm_heavy_mb() #5
  %70 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %port, align 4
  %add268 = add i32 %71, 2
  %and269 = and i32 %add268, 1048575
  %add270 = or i32 %and269, -18874368
  %72 = inttoptr i32 %add270 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %72, i8 4) #5, !srcloc !57
  %73 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool273.not = icmp eq i32 %74, 0
  br i1 %tobool273.not, label %do.body265.do.body290_crit_edge, label %cond.false285

do.body265.do.body290_crit_edge:                  ; preds = %do.body265
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body290

cond.false285:                                    ; preds = %do.body265
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %75 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %75(i32 noundef %74) #5
  br label %do.body290

do.body290:                                       ; preds = %cond.false285, %do.body265.do.body290_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !175
  tail call void @arm_heavy_mb() #5
  %76 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %port, align 4
  %add293 = add i32 %77, 2
  %and294 = and i32 %add293, 1048575
  %add295 = or i32 %and294, -18874368
  %78 = inttoptr i32 %add295 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %78, i8 5) #5, !srcloc !57
  %79 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool298.not = icmp eq i32 %80, 0
  br i1 %tobool298.not, label %do.body290.do.body315_crit_edge, label %cond.false310

do.body290.do.body315_crit_edge:                  ; preds = %do.body290
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body315

cond.false310:                                    ; preds = %do.body290
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %81 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %81(i32 noundef %80) #5
  br label %do.body315

do.body315:                                       ; preds = %cond.false310, %do.body290.do.body315_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !176
  tail call void @arm_heavy_mb() #5
  %82 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %port, align 4
  %add318 = add i32 %83, 2
  %and319 = and i32 %add318, 1048575
  %add320 = or i32 %and319, -18874368
  %84 = inttoptr i32 %add320 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %84, i8 4) #5, !srcloc !57
  %85 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool323.not = icmp eq i32 %86, 0
  br i1 %tobool323.not, label %do.body315.do.body340_crit_edge, label %cond.false335

do.body315.do.body340_crit_edge:                  ; preds = %do.body315
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body340

cond.false335:                                    ; preds = %do.body315
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %87 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %87(i32 noundef %86) #5
  br label %do.body340

do.body340:                                       ; preds = %cond.false335, %do.body315.do.body340_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !177
  tail call void @arm_heavy_mb() #5
  %88 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %port, align 4
  %and344 = and i32 %89, 1048575
  %add345 = or i32 %and344, -18874368
  %90 = inttoptr i32 %add345 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %90, i8 -1) #5, !srcloc !57
  %91 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool348.not = icmp eq i32 %92, 0
  br i1 %tobool348.not, label %do.body340.cond.end364_crit_edge, label %cond.false360

do.body340.cond.end364_crit_edge:                 ; preds = %do.body340
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end364

cond.false360:                                    ; preds = %do.body340
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %93 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %93(i32 noundef %92) #5
  br label %cond.end364

cond.end364:                                      ; preds = %cond.false360, %do.body340.cond.end364_crit_edge
  %94 = load i32, ptr @epatc8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool365.not = icmp eq i32 %94, 0
  br i1 %tobool365.not, label %cond.end364.do.body1091_crit_edge, label %do.body366

cond.end364.do.body1091_crit_edge:                ; preds = %cond.end364
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1091

do.body366:                                       ; preds = %cond.end364
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !178
  tail call void @arm_heavy_mb() #5
  %95 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %port, align 4
  %add369 = add i32 %96, 2
  %and370 = and i32 %add369, 1048575
  %add371 = or i32 %and370, -18874368
  %97 = inttoptr i32 %add371 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %97, i8 4) #5, !srcloc !57
  %98 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %tobool374.not = icmp eq i32 %99, 0
  br i1 %tobool374.not, label %do.body366.do.body391_crit_edge, label %cond.false386

do.body366.do.body391_crit_edge:                  ; preds = %do.body366
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body391

cond.false386:                                    ; preds = %do.body366
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %100 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %100(i32 noundef %99) #5
  br label %do.body391

do.body391:                                       ; preds = %cond.false386, %do.body366.do.body391_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !179
  tail call void @arm_heavy_mb() #5
  %101 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %port, align 4
  %and395 = and i32 %102, 1048575
  %add396 = or i32 %and395, -18874368
  %103 = inttoptr i32 %add396 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %103, i8 34) #5, !srcloc !57
  %104 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %tobool399.not = icmp eq i32 %105, 0
  br i1 %tobool399.not, label %do.body391.do.body416_crit_edge, label %cond.false411

do.body391.do.body416_crit_edge:                  ; preds = %do.body391
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body416

cond.false411:                                    ; preds = %do.body391
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %106 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %106(i32 noundef %105) #5
  br label %do.body416

do.body416:                                       ; preds = %cond.false411, %do.body391.do.body416_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !180
  tail call void @arm_heavy_mb() #5
  %107 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %port, align 4
  %and420 = and i32 %108, 1048575
  %add421 = or i32 %and420, -18874368
  %109 = inttoptr i32 %add421 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %109, i8 -86) #5, !srcloc !57
  %110 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %tobool424.not = icmp eq i32 %111, 0
  br i1 %tobool424.not, label %do.body416.do.body441_crit_edge, label %cond.false436

do.body416.do.body441_crit_edge:                  ; preds = %do.body416
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body441

cond.false436:                                    ; preds = %do.body416
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %112 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %112(i32 noundef %111) #5
  br label %do.body441

do.body441:                                       ; preds = %cond.false436, %do.body416.do.body441_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !181
  tail call void @arm_heavy_mb() #5
  %113 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %port, align 4
  %and445 = and i32 %114, 1048575
  %add446 = or i32 %and445, -18874368
  %115 = inttoptr i32 %add446 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %115, i8 85) #5, !srcloc !57
  %116 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %tobool449.not = icmp eq i32 %117, 0
  br i1 %tobool449.not, label %do.body441.do.body466_crit_edge, label %cond.false461

do.body441.do.body466_crit_edge:                  ; preds = %do.body441
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body466

cond.false461:                                    ; preds = %do.body441
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %118 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %118(i32 noundef %117) #5
  br label %do.body466

do.body466:                                       ; preds = %cond.false461, %do.body441.do.body466_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !182
  tail call void @arm_heavy_mb() #5
  %119 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %port, align 4
  %and470 = and i32 %120, 1048575
  %add471 = or i32 %and470, -18874368
  %121 = inttoptr i32 %add471 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %121, i8 0) #5, !srcloc !57
  %122 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %123)
  %tobool474.not = icmp eq i32 %123, 0
  br i1 %tobool474.not, label %do.body466.do.body491_crit_edge, label %cond.false486

do.body466.do.body491_crit_edge:                  ; preds = %do.body466
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body491

cond.false486:                                    ; preds = %do.body466
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %124 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %124(i32 noundef %123) #5
  br label %do.body491

do.body491:                                       ; preds = %cond.false486, %do.body466.do.body491_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !183
  tail call void @arm_heavy_mb() #5
  %125 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %port, align 4
  %and495 = and i32 %126, 1048575
  %add496 = or i32 %and495, -18874368
  %127 = inttoptr i32 %add496 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %127, i8 -1) #5, !srcloc !57
  %128 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %129)
  %tobool499.not = icmp eq i32 %129, 0
  br i1 %tobool499.not, label %do.body491.do.body516_crit_edge, label %cond.false511

do.body491.do.body516_crit_edge:                  ; preds = %do.body491
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body516

cond.false511:                                    ; preds = %do.body491
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %130 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %130(i32 noundef %129) #5
  br label %do.body516

do.body516:                                       ; preds = %cond.false511, %do.body491.do.body516_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !184
  tail call void @arm_heavy_mb() #5
  %131 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %port, align 4
  %and520 = and i32 %132, 1048575
  %add521 = or i32 %and520, -18874368
  %133 = inttoptr i32 %add521 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %133, i8 -121) #5, !srcloc !57
  %134 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %135)
  %tobool524.not = icmp eq i32 %135, 0
  br i1 %tobool524.not, label %do.body516.do.body541_crit_edge, label %cond.false536

do.body516.do.body541_crit_edge:                  ; preds = %do.body516
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body541

cond.false536:                                    ; preds = %do.body516
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %136 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %136(i32 noundef %135) #5
  br label %do.body541

do.body541:                                       ; preds = %cond.false536, %do.body516.do.body541_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !185
  tail call void @arm_heavy_mb() #5
  %137 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %port, align 4
  %and545 = and i32 %138, 1048575
  %add546 = or i32 %and545, -18874368
  %139 = inttoptr i32 %add546 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %139, i8 120) #5, !srcloc !57
  %140 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %141)
  %tobool549.not = icmp eq i32 %141, 0
  br i1 %tobool549.not, label %do.body541.do.body566_crit_edge, label %cond.false561

do.body541.do.body566_crit_edge:                  ; preds = %do.body541
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body566

cond.false561:                                    ; preds = %do.body541
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %142 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %142(i32 noundef %141) #5
  br label %do.body566

do.body566:                                       ; preds = %cond.false561, %do.body541.do.body566_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !186
  tail call void @arm_heavy_mb() #5
  %143 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %port, align 4
  %and570 = and i32 %144, 1048575
  %add571 = or i32 %and570, -18874368
  %145 = inttoptr i32 %add571 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %145, i8 64) #5, !srcloc !57
  %146 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %147)
  %tobool574.not = icmp eq i32 %147, 0
  br i1 %tobool574.not, label %do.body566.do.body591_crit_edge, label %cond.false586

do.body566.do.body591_crit_edge:                  ; preds = %do.body566
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body591

cond.false586:                                    ; preds = %do.body566
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %148 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %148(i32 noundef %147) #5
  br label %do.body591

do.body591:                                       ; preds = %cond.false586, %do.body566.do.body591_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !187
  tail call void @arm_heavy_mb() #5
  %149 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %port, align 4
  %add594 = add i32 %150, 2
  %and595 = and i32 %add594, 1048575
  %add596 = or i32 %and595, -18874368
  %151 = inttoptr i32 %add596 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %151, i8 4) #5, !srcloc !57
  %152 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %153)
  %tobool599.not = icmp eq i32 %153, 0
  br i1 %tobool599.not, label %do.body591.do.body616_crit_edge, label %cond.false611

do.body591.do.body616_crit_edge:                  ; preds = %do.body591
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body616

cond.false611:                                    ; preds = %do.body591
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %154 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %154(i32 noundef %153) #5
  br label %do.body616

do.body616:                                       ; preds = %cond.false611, %do.body591.do.body616_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !188
  tail call void @arm_heavy_mb() #5
  %155 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %port, align 4
  %add619 = add i32 %156, 2
  %and620 = and i32 %add619, 1048575
  %add621 = or i32 %and620, -18874368
  %157 = inttoptr i32 %add621 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %157, i8 5) #5, !srcloc !57
  %158 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %159)
  %tobool624.not = icmp eq i32 %159, 0
  br i1 %tobool624.not, label %do.body616.do.body641_crit_edge, label %cond.false636

do.body616.do.body641_crit_edge:                  ; preds = %do.body616
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body641

cond.false636:                                    ; preds = %do.body616
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %160 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %160(i32 noundef %159) #5
  br label %do.body641

do.body641:                                       ; preds = %cond.false636, %do.body616.do.body641_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !189
  tail call void @arm_heavy_mb() #5
  %161 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %port, align 4
  %add644 = add i32 %162, 2
  %and645 = and i32 %add644, 1048575
  %add646 = or i32 %and645, -18874368
  %163 = inttoptr i32 %add646 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %163, i8 4) #5, !srcloc !57
  %164 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %165)
  %tobool649.not = icmp eq i32 %165, 0
  br i1 %tobool649.not, label %do.body641.do.body666_crit_edge, label %cond.false661

do.body641.do.body666_crit_edge:                  ; preds = %do.body641
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body666

cond.false661:                                    ; preds = %do.body641
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %166 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %166(i32 noundef %165) #5
  br label %do.body666

do.body666:                                       ; preds = %cond.false661, %do.body641.do.body666_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !190
  tail call void @arm_heavy_mb() #5
  %167 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %port, align 4
  %and670 = and i32 %168, 1048575
  %add671 = or i32 %and670, -18874368
  %169 = inttoptr i32 %add671 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %169, i8 -1) #5, !srcloc !57
  %170 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %171)
  %tobool674.not = icmp eq i32 %171, 0
  br i1 %tobool674.not, label %do.body666.do.body691_crit_edge, label %cond.false686

do.body666.do.body691_crit_edge:                  ; preds = %do.body666
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body691

cond.false686:                                    ; preds = %do.body666
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %172 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %172(i32 noundef %171) #5
  br label %do.body691

do.body691:                                       ; preds = %cond.false686, %do.body666.do.body691_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !191
  tail call void @arm_heavy_mb() #5
  %173 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %port, align 4
  %add694 = add i32 %174, 2
  %and695 = and i32 %add694, 1048575
  %add696 = or i32 %and695, -18874368
  %175 = inttoptr i32 %add696 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %175, i8 4) #5, !srcloc !57
  %176 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %177)
  %tobool699.not = icmp eq i32 %177, 0
  br i1 %tobool699.not, label %do.body691.do.body716_crit_edge, label %cond.false711

do.body691.do.body716_crit_edge:                  ; preds = %do.body691
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body716

cond.false711:                                    ; preds = %do.body691
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %178 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %178(i32 noundef %177) #5
  br label %do.body716

do.body716:                                       ; preds = %cond.false711, %do.body691.do.body716_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !192
  tail call void @arm_heavy_mb() #5
  %179 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %port, align 4
  %and720 = and i32 %180, 1048575
  %add721 = or i32 %and720, -18874368
  %181 = inttoptr i32 %add721 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %181, i8 34) #5, !srcloc !57
  %182 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %183)
  %tobool724.not = icmp eq i32 %183, 0
  br i1 %tobool724.not, label %do.body716.do.body741_crit_edge, label %cond.false736

do.body716.do.body741_crit_edge:                  ; preds = %do.body716
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body741

cond.false736:                                    ; preds = %do.body716
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %184 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %184(i32 noundef %183) #5
  br label %do.body741

do.body741:                                       ; preds = %cond.false736, %do.body716.do.body741_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !193
  tail call void @arm_heavy_mb() #5
  %185 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %port, align 4
  %and745 = and i32 %186, 1048575
  %add746 = or i32 %and745, -18874368
  %187 = inttoptr i32 %add746 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %187, i8 -86) #5, !srcloc !57
  %188 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %189)
  %tobool749.not = icmp eq i32 %189, 0
  br i1 %tobool749.not, label %do.body741.do.body766_crit_edge, label %cond.false761

do.body741.do.body766_crit_edge:                  ; preds = %do.body741
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body766

cond.false761:                                    ; preds = %do.body741
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %190 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %190(i32 noundef %189) #5
  br label %do.body766

do.body766:                                       ; preds = %cond.false761, %do.body741.do.body766_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !194
  tail call void @arm_heavy_mb() #5
  %191 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %port, align 4
  %and770 = and i32 %192, 1048575
  %add771 = or i32 %and770, -18874368
  %193 = inttoptr i32 %add771 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %193, i8 85) #5, !srcloc !57
  %194 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %195)
  %tobool774.not = icmp eq i32 %195, 0
  br i1 %tobool774.not, label %do.body766.do.body791_crit_edge, label %cond.false786

do.body766.do.body791_crit_edge:                  ; preds = %do.body766
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body791

cond.false786:                                    ; preds = %do.body766
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %196 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %196(i32 noundef %195) #5
  br label %do.body791

do.body791:                                       ; preds = %cond.false786, %do.body766.do.body791_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !195
  tail call void @arm_heavy_mb() #5
  %197 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %port, align 4
  %and795 = and i32 %198, 1048575
  %add796 = or i32 %and795, -18874368
  %199 = inttoptr i32 %add796 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %199, i8 0) #5, !srcloc !57
  %200 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %201)
  %tobool799.not = icmp eq i32 %201, 0
  br i1 %tobool799.not, label %do.body791.do.body816_crit_edge, label %cond.false811

do.body791.do.body816_crit_edge:                  ; preds = %do.body791
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body816

cond.false811:                                    ; preds = %do.body791
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %202 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %202(i32 noundef %201) #5
  br label %do.body816

do.body816:                                       ; preds = %cond.false811, %do.body791.do.body816_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !196
  tail call void @arm_heavy_mb() #5
  %203 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %port, align 4
  %and820 = and i32 %204, 1048575
  %add821 = or i32 %and820, -18874368
  %205 = inttoptr i32 %add821 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %205, i8 -1) #5, !srcloc !57
  %206 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %207)
  %tobool824.not = icmp eq i32 %207, 0
  br i1 %tobool824.not, label %do.body816.do.body841_crit_edge, label %cond.false836

do.body816.do.body841_crit_edge:                  ; preds = %do.body816
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body841

cond.false836:                                    ; preds = %do.body816
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %208 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %208(i32 noundef %207) #5
  br label %do.body841

do.body841:                                       ; preds = %cond.false836, %do.body816.do.body841_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !197
  tail call void @arm_heavy_mb() #5
  %209 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %port, align 4
  %and845 = and i32 %210, 1048575
  %add846 = or i32 %and845, -18874368
  %211 = inttoptr i32 %add846 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %211, i8 -121) #5, !srcloc !57
  %212 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %213)
  %tobool849.not = icmp eq i32 %213, 0
  br i1 %tobool849.not, label %do.body841.do.body866_crit_edge, label %cond.false861

do.body841.do.body866_crit_edge:                  ; preds = %do.body841
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body866

cond.false861:                                    ; preds = %do.body841
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %214 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %214(i32 noundef %213) #5
  br label %do.body866

do.body866:                                       ; preds = %cond.false861, %do.body841.do.body866_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !198
  tail call void @arm_heavy_mb() #5
  %215 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %port, align 4
  %and870 = and i32 %216, 1048575
  %add871 = or i32 %and870, -18874368
  %217 = inttoptr i32 %add871 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %217, i8 120) #5, !srcloc !57
  %218 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %219)
  %tobool874.not = icmp eq i32 %219, 0
  br i1 %tobool874.not, label %do.body866.do.body891_crit_edge, label %cond.false886

do.body866.do.body891_crit_edge:                  ; preds = %do.body866
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body891

cond.false886:                                    ; preds = %do.body866
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %220 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %220(i32 noundef %219) #5
  br label %do.body891

do.body891:                                       ; preds = %cond.false886, %do.body866.do.body891_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !199
  tail call void @arm_heavy_mb() #5
  %221 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %port, align 4
  %and895 = and i32 %222, 1048575
  %add896 = or i32 %and895, -18874368
  %223 = inttoptr i32 %add896 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %223, i8 -32) #5, !srcloc !57
  %224 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %225)
  %tobool899.not = icmp eq i32 %225, 0
  br i1 %tobool899.not, label %do.body891.do.body916_crit_edge, label %cond.false911

do.body891.do.body916_crit_edge:                  ; preds = %do.body891
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body916

cond.false911:                                    ; preds = %do.body891
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %226 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %226(i32 noundef %225) #5
  br label %do.body916

do.body916:                                       ; preds = %cond.false911, %do.body891.do.body916_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !200
  tail call void @arm_heavy_mb() #5
  %227 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %port, align 4
  %add919 = add i32 %228, 2
  %and920 = and i32 %add919, 1048575
  %add921 = or i32 %and920, -18874368
  %229 = inttoptr i32 %add921 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %229, i8 4) #5, !srcloc !57
  %230 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %231)
  %tobool924.not = icmp eq i32 %231, 0
  br i1 %tobool924.not, label %do.body916.do.body941_crit_edge, label %cond.false936

do.body916.do.body941_crit_edge:                  ; preds = %do.body916
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body941

cond.false936:                                    ; preds = %do.body916
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %232 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %232(i32 noundef %231) #5
  br label %do.body941

do.body941:                                       ; preds = %cond.false936, %do.body916.do.body941_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !201
  tail call void @arm_heavy_mb() #5
  %233 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %port, align 4
  %add944 = add i32 %234, 2
  %and945 = and i32 %add944, 1048575
  %add946 = or i32 %and945, -18874368
  %235 = inttoptr i32 %add946 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %235, i8 5) #5, !srcloc !57
  %236 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %237)
  %tobool949.not = icmp eq i32 %237, 0
  br i1 %tobool949.not, label %do.body941.do.body966_crit_edge, label %cond.false961

do.body941.do.body966_crit_edge:                  ; preds = %do.body941
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body966

cond.false961:                                    ; preds = %do.body941
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %238 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %238(i32 noundef %237) #5
  br label %do.body966

do.body966:                                       ; preds = %cond.false961, %do.body941.do.body966_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !202
  tail call void @arm_heavy_mb() #5
  %239 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %port, align 4
  %add969 = add i32 %240, 2
  %and970 = and i32 %add969, 1048575
  %add971 = or i32 %and970, -18874368
  %241 = inttoptr i32 %add971 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %241, i8 4) #5, !srcloc !57
  %242 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %243)
  %tobool974.not = icmp eq i32 %243, 0
  br i1 %tobool974.not, label %do.body966.do.body991_crit_edge, label %cond.false986

do.body966.do.body991_crit_edge:                  ; preds = %do.body966
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body991

cond.false986:                                    ; preds = %do.body966
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %244 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %244(i32 noundef %243) #5
  br label %do.body991

do.body991:                                       ; preds = %cond.false986, %do.body966.do.body991_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !203
  tail call void @arm_heavy_mb() #5
  %245 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %port, align 4
  %and995 = and i32 %246, 1048575
  %add996 = or i32 %and995, -18874368
  %247 = inttoptr i32 %add996 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %247, i8 -1) #5, !srcloc !57
  %248 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %249)
  %tobool999.not = icmp eq i32 %249, 0
  br i1 %tobool999.not, label %do.body991.do.body1016_crit_edge, label %cond.false1011

do.body991.do.body1016_crit_edge:                 ; preds = %do.body991
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1016

cond.false1011:                                   ; preds = %do.body991
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %250 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %250(i32 noundef %249) #5
  br label %do.body1016

do.body1016:                                      ; preds = %cond.false1011, %do.body991.do.body1016_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !204
  tail call void @arm_heavy_mb() #5
  %251 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %port, align 4
  %and1020 = and i32 %252, 1048575
  %add1021 = or i32 %and1020, -18874368
  %253 = inttoptr i32 %add1021 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %253, i8 0) #5, !srcloc !57
  %254 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %255)
  %tobool1024.not = icmp eq i32 %255, 0
  br i1 %tobool1024.not, label %do.body1016.do.body1041_crit_edge, label %cond.false1036

do.body1016.do.body1041_crit_edge:                ; preds = %do.body1016
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1041

cond.false1036:                                   ; preds = %do.body1016
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %256 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %256(i32 noundef %255) #5
  br label %do.body1041

do.body1041:                                      ; preds = %cond.false1036, %do.body1016.do.body1041_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !205
  tail call void @arm_heavy_mb() #5
  %257 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %port, align 4
  %add1044 = add i32 %258, 2
  %and1045 = and i32 %add1044, 1048575
  %add1046 = or i32 %and1045, -18874368
  %259 = inttoptr i32 %add1046 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %259, i8 1) #5, !srcloc !57
  %260 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %261)
  %tobool1049.not = icmp eq i32 %261, 0
  br i1 %tobool1049.not, label %do.body1041.do.body1066_crit_edge, label %cond.false1061

do.body1041.do.body1066_crit_edge:                ; preds = %do.body1041
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1066

cond.false1061:                                   ; preds = %do.body1041
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %262 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %262(i32 noundef %261) #5
  br label %do.body1066

do.body1066:                                      ; preds = %cond.false1061, %do.body1041.do.body1066_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !206
  tail call void @arm_heavy_mb() #5
  %263 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %port, align 4
  %add1069 = add i32 %264, 2
  %and1070 = and i32 %add1069, 1048575
  %add1071 = or i32 %and1070, -18874368
  %265 = inttoptr i32 %add1071 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %265, i8 4) #5, !srcloc !57
  %266 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %267)
  %tobool1074.not = icmp eq i32 %267, 0
  br i1 %tobool1074.not, label %do.body1066.cond.end1090_crit_edge, label %cond.false1086

do.body1066.cond.end1090_crit_edge:               ; preds = %do.body1066
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end1090

cond.false1086:                                   ; preds = %do.body1066
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %268 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %268(i32 noundef %267) #5
  br label %cond.end1090

cond.end1090:                                     ; preds = %cond.false1086, %do.body1066.cond.end1090_crit_edge
  tail call void @epat_write_regr(ptr noundef %pi, i32 noundef 2, i32 noundef 8, i32 noundef 18)
  tail call void @epat_write_regr(ptr noundef %pi, i32 noundef 2, i32 noundef 12, i32 noundef 20)
  tail call void @epat_write_regr(ptr noundef %pi, i32 noundef 2, i32 noundef 18, i32 noundef 16)
  tail call void @epat_write_regr(ptr noundef %pi, i32 noundef 2, i32 noundef 14, i32 noundef 15)
  tail call void @epat_write_regr(ptr noundef %pi, i32 noundef 2, i32 noundef 15, i32 noundef 4)
  tail call void @epat_write_regr(ptr noundef %pi, i32 noundef 2, i32 noundef 14, i32 noundef 13)
  tail call void @epat_write_regr(ptr noundef %pi, i32 noundef 2, i32 noundef 15, i32 noundef 0)
  br label %do.body1091

do.body1091:                                      ; preds = %cond.end1090, %cond.end364.do.body1091_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !207
  tail call void @arm_heavy_mb() #5
  %269 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %port, align 4
  %add1094 = add i32 %270, 2
  %and1095 = and i32 %add1094, 1048575
  %add1096 = or i32 %and1095, -18874368
  %271 = inttoptr i32 %add1096 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %271, i8 4) #5, !srcloc !57
  %272 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %273)
  %tobool1099.not = icmp eq i32 %273, 0
  br i1 %tobool1099.not, label %do.body1091.do.body1116_crit_edge, label %cond.false1111

do.body1091.do.body1116_crit_edge:                ; preds = %do.body1091
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1116

cond.false1111:                                   ; preds = %do.body1091
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %274 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %274(i32 noundef %273) #5
  br label %do.body1116

do.body1116:                                      ; preds = %cond.false1111, %do.body1091.do.body1116_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !208
  tail call void @arm_heavy_mb() #5
  %275 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %port, align 4
  %and1120 = and i32 %276, 1048575
  %add1121 = or i32 %and1120, -18874368
  %277 = inttoptr i32 %add1121 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %277, i8 34) #5, !srcloc !57
  %278 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %279)
  %tobool1124.not = icmp eq i32 %279, 0
  br i1 %tobool1124.not, label %do.body1116.do.body1141_crit_edge, label %cond.false1136

do.body1116.do.body1141_crit_edge:                ; preds = %do.body1116
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1141

cond.false1136:                                   ; preds = %do.body1116
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %280 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %280(i32 noundef %279) #5
  br label %do.body1141

do.body1141:                                      ; preds = %cond.false1136, %do.body1116.do.body1141_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !209
  tail call void @arm_heavy_mb() #5
  %281 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load i32, ptr %port, align 4
  %and1145 = and i32 %282, 1048575
  %add1146 = or i32 %and1145, -18874368
  %283 = inttoptr i32 %add1146 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %283, i8 -86) #5, !srcloc !57
  %284 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %285)
  %tobool1149.not = icmp eq i32 %285, 0
  br i1 %tobool1149.not, label %do.body1141.do.body1166_crit_edge, label %cond.false1161

do.body1141.do.body1166_crit_edge:                ; preds = %do.body1141
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1166

cond.false1161:                                   ; preds = %do.body1141
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %286 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %286(i32 noundef %285) #5
  br label %do.body1166

do.body1166:                                      ; preds = %cond.false1161, %do.body1141.do.body1166_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !210
  tail call void @arm_heavy_mb() #5
  %287 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load i32, ptr %port, align 4
  %and1170 = and i32 %288, 1048575
  %add1171 = or i32 %and1170, -18874368
  %289 = inttoptr i32 %add1171 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %289, i8 85) #5, !srcloc !57
  %290 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %291)
  %tobool1174.not = icmp eq i32 %291, 0
  br i1 %tobool1174.not, label %do.body1166.do.body1191_crit_edge, label %cond.false1186

do.body1166.do.body1191_crit_edge:                ; preds = %do.body1166
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1191

cond.false1186:                                   ; preds = %do.body1166
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %292 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %292(i32 noundef %291) #5
  br label %do.body1191

do.body1191:                                      ; preds = %cond.false1186, %do.body1166.do.body1191_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !211
  tail call void @arm_heavy_mb() #5
  %293 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load i32, ptr %port, align 4
  %and1195 = and i32 %294, 1048575
  %add1196 = or i32 %and1195, -18874368
  %295 = inttoptr i32 %add1196 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %295, i8 0) #5, !srcloc !57
  %296 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %297)
  %tobool1199.not = icmp eq i32 %297, 0
  br i1 %tobool1199.not, label %do.body1191.do.body1216_crit_edge, label %cond.false1211

do.body1191.do.body1216_crit_edge:                ; preds = %do.body1191
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1216

cond.false1211:                                   ; preds = %do.body1191
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %298 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %298(i32 noundef %297) #5
  br label %do.body1216

do.body1216:                                      ; preds = %cond.false1211, %do.body1191.do.body1216_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !212
  tail call void @arm_heavy_mb() #5
  %299 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load i32, ptr %port, align 4
  %and1220 = and i32 %300, 1048575
  %add1221 = or i32 %and1220, -18874368
  %301 = inttoptr i32 %add1221 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %301, i8 -1) #5, !srcloc !57
  %302 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %303)
  %tobool1224.not = icmp eq i32 %303, 0
  br i1 %tobool1224.not, label %do.body1216.do.body1241_crit_edge, label %cond.false1236

do.body1216.do.body1241_crit_edge:                ; preds = %do.body1216
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1241

cond.false1236:                                   ; preds = %do.body1216
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %304 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %304(i32 noundef %303) #5
  br label %do.body1241

do.body1241:                                      ; preds = %cond.false1236, %do.body1216.do.body1241_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !213
  tail call void @arm_heavy_mb() #5
  %305 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load i32, ptr %port, align 4
  %and1245 = and i32 %306, 1048575
  %add1246 = or i32 %and1245, -18874368
  %307 = inttoptr i32 %add1246 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %307, i8 -121) #5, !srcloc !57
  %308 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %309)
  %tobool1249.not = icmp eq i32 %309, 0
  br i1 %tobool1249.not, label %do.body1241.do.body1266_crit_edge, label %cond.false1261

do.body1241.do.body1266_crit_edge:                ; preds = %do.body1241
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1266

cond.false1261:                                   ; preds = %do.body1241
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %310 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %310(i32 noundef %309) #5
  br label %do.body1266

do.body1266:                                      ; preds = %cond.false1261, %do.body1241.do.body1266_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !214
  tail call void @arm_heavy_mb() #5
  %311 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load i32, ptr %port, align 4
  %and1270 = and i32 %312, 1048575
  %add1271 = or i32 %and1270, -18874368
  %313 = inttoptr i32 %add1271 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %313, i8 120) #5, !srcloc !57
  %314 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %315)
  %tobool1274.not = icmp eq i32 %315, 0
  br i1 %tobool1274.not, label %do.body1266.do.body1291_crit_edge, label %cond.false1286

do.body1266.do.body1291_crit_edge:                ; preds = %do.body1266
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1291

cond.false1286:                                   ; preds = %do.body1266
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %316 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %316(i32 noundef %315) #5
  br label %do.body1291

do.body1291:                                      ; preds = %cond.false1286, %do.body1266.do.body1291_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !215
  tail call void @arm_heavy_mb() #5
  %317 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load i32, ptr %port, align 4
  %and1295 = and i32 %318, 1048575
  %add1296 = or i32 %and1295, -18874368
  %319 = inttoptr i32 %add1296 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %319, i8 -32) #5, !srcloc !57
  %320 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %321)
  %tobool1299.not = icmp eq i32 %321, 0
  br i1 %tobool1299.not, label %do.body1291.do.body1316_crit_edge, label %cond.false1311

do.body1291.do.body1316_crit_edge:                ; preds = %do.body1291
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1316

cond.false1311:                                   ; preds = %do.body1291
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %322 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %322(i32 noundef %321) #5
  br label %do.body1316

do.body1316:                                      ; preds = %cond.false1311, %do.body1291.do.body1316_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !216
  tail call void @arm_heavy_mb() #5
  %323 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load i32, ptr %port, align 4
  %add1319 = add i32 %324, 2
  %and1320 = and i32 %add1319, 1048575
  %add1321 = or i32 %and1320, -18874368
  %325 = inttoptr i32 %add1321 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %325, i8 4) #5, !srcloc !57
  %326 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %327)
  %tobool1324.not = icmp eq i32 %327, 0
  br i1 %tobool1324.not, label %do.body1316.do.body1341_crit_edge, label %cond.false1336

do.body1316.do.body1341_crit_edge:                ; preds = %do.body1316
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1341

cond.false1336:                                   ; preds = %do.body1316
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %328 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %328(i32 noundef %327) #5
  br label %do.body1341

do.body1341:                                      ; preds = %cond.false1336, %do.body1316.do.body1341_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !217
  tail call void @arm_heavy_mb() #5
  %329 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load i32, ptr %port, align 4
  %add1344 = add i32 %330, 2
  %and1345 = and i32 %add1344, 1048575
  %add1346 = or i32 %and1345, -18874368
  %331 = inttoptr i32 %add1346 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %331, i8 5) #5, !srcloc !57
  %332 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %333)
  %tobool1349.not = icmp eq i32 %333, 0
  br i1 %tobool1349.not, label %do.body1341.do.body1366_crit_edge, label %cond.false1361

do.body1341.do.body1366_crit_edge:                ; preds = %do.body1341
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1366

cond.false1361:                                   ; preds = %do.body1341
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %334 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %334(i32 noundef %333) #5
  br label %do.body1366

do.body1366:                                      ; preds = %cond.false1361, %do.body1341.do.body1366_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !218
  tail call void @arm_heavy_mb() #5
  %335 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load i32, ptr %port, align 4
  %add1369 = add i32 %336, 2
  %and1370 = and i32 %add1369, 1048575
  %add1371 = or i32 %and1370, -18874368
  %337 = inttoptr i32 %add1371 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %337, i8 4) #5, !srcloc !57
  %338 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %339)
  %tobool1374.not = icmp eq i32 %339, 0
  br i1 %tobool1374.not, label %do.body1366.do.body1391_crit_edge, label %cond.false1386

do.body1366.do.body1391_crit_edge:                ; preds = %do.body1366
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1391

cond.false1386:                                   ; preds = %do.body1366
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %340 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %340(i32 noundef %339) #5
  br label %do.body1391

do.body1391:                                      ; preds = %cond.false1386, %do.body1366.do.body1391_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !219
  tail call void @arm_heavy_mb() #5
  %341 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load i32, ptr %port, align 4
  %and1395 = and i32 %342, 1048575
  %add1396 = or i32 %and1395, -18874368
  %343 = inttoptr i32 %add1396 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %343, i8 -1) #5, !srcloc !57
  %344 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %345)
  %tobool1399.not = icmp eq i32 %345, 0
  br i1 %tobool1399.not, label %do.body1391.do.body1416_crit_edge, label %cond.false1411

do.body1391.do.body1416_crit_edge:                ; preds = %do.body1391
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1416

cond.false1411:                                   ; preds = %do.body1391
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %346 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %346(i32 noundef %345) #5
  br label %do.body1416

do.body1416:                                      ; preds = %cond.false1411, %do.body1391.do.body1416_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !220
  tail call void @arm_heavy_mb() #5
  %347 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load i32, ptr %port, align 4
  %and1420 = and i32 %348, 1048575
  %add1421 = or i32 %and1420, -18874368
  %349 = inttoptr i32 %add1421 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %349, i8 0) #5, !srcloc !57
  %350 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %351)
  %tobool1424.not = icmp eq i32 %351, 0
  br i1 %tobool1424.not, label %do.body1416.do.body1441_crit_edge, label %cond.false1436

do.body1416.do.body1441_crit_edge:                ; preds = %do.body1416
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1441

cond.false1436:                                   ; preds = %do.body1416
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %352 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %352(i32 noundef %351) #5
  br label %do.body1441

do.body1441:                                      ; preds = %cond.false1436, %do.body1416.do.body1441_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !221
  tail call void @arm_heavy_mb() #5
  %353 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load i32, ptr %port, align 4
  %add1444 = add i32 %354, 2
  %and1445 = and i32 %add1444, 1048575
  %add1446 = or i32 %and1445, -18874368
  %355 = inttoptr i32 %add1446 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %355, i8 1) #5, !srcloc !57
  %356 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %357)
  %tobool1449.not = icmp eq i32 %357, 0
  br i1 %tobool1449.not, label %do.body1441.do.body1466_crit_edge, label %cond.false1461

do.body1441.do.body1466_crit_edge:                ; preds = %do.body1441
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1466

cond.false1461:                                   ; preds = %do.body1441
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %358 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %358(i32 noundef %357) #5
  br label %do.body1466

do.body1466:                                      ; preds = %cond.false1461, %do.body1441.do.body1466_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !222
  tail call void @arm_heavy_mb() #5
  %359 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load i32, ptr %port, align 4
  %add1469 = add i32 %360, 2
  %and1470 = and i32 %add1469, 1048575
  %add1471 = or i32 %and1470, -18874368
  %361 = inttoptr i32 %add1471 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %361, i8 4) #5, !srcloc !57
  %362 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %363)
  %tobool1474.not = icmp eq i32 %363, 0
  br i1 %tobool1474.not, label %do.body1466.cond.end1490_crit_edge, label %cond.false1486

do.body1466.cond.end1490_crit_edge:               ; preds = %do.body1466
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end1490

cond.false1486:                                   ; preds = %do.body1466
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %364 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %364(i32 noundef %363) #5
  br label %cond.end1490

cond.end1490:                                     ; preds = %cond.false1486, %do.body1466.cond.end1490_crit_edge
  %mode = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 2
  %365 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %366)
  %cmp1491 = icmp sgt i32 %366, 2
  br i1 %cmp1491, label %do.body1494, label %cond.end1490.if.end1744_crit_edge

cond.end1490.if.end1744_crit_edge:                ; preds = %cond.end1490
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end1744

do.body1494:                                      ; preds = %cond.end1490
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !223
  tail call void @arm_heavy_mb() #5
  %367 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load i32, ptr %port, align 4
  %and1498 = and i32 %368, 1048575
  %add1499 = or i32 %and1498, -18874368
  %369 = inttoptr i32 %add1499 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %369, i8 0) #5, !srcloc !57
  %370 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %371)
  %tobool1502.not = icmp eq i32 %371, 0
  br i1 %tobool1502.not, label %do.body1494.do.body1519_crit_edge, label %cond.false1514

do.body1494.do.body1519_crit_edge:                ; preds = %do.body1494
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1519

cond.false1514:                                   ; preds = %do.body1494
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %372 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %372(i32 noundef %371) #5
  br label %do.body1519

do.body1519:                                      ; preds = %cond.false1514, %do.body1494.do.body1519_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !224
  tail call void @arm_heavy_mb() #5
  %373 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load i32, ptr %port, align 4
  %add1522 = add i32 %374, 2
  %and1523 = and i32 %add1522, 1048575
  %add1524 = or i32 %and1523, -18874368
  %375 = inttoptr i32 %add1524 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %375, i8 1) #5, !srcloc !57
  %376 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %377)
  %tobool1527.not = icmp eq i32 %377, 0
  br i1 %tobool1527.not, label %do.body1519.do.body1544_crit_edge, label %cond.false1539

do.body1519.do.body1544_crit_edge:                ; preds = %do.body1519
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1544

cond.false1539:                                   ; preds = %do.body1519
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %378 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %378(i32 noundef %377) #5
  br label %do.body1544

do.body1544:                                      ; preds = %cond.false1539, %do.body1519.do.body1544_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !225
  tail call void @arm_heavy_mb() #5
  %379 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load i32, ptr %port, align 4
  %add1547 = add i32 %380, 2
  %and1548 = and i32 %add1547, 1048575
  %add1549 = or i32 %and1548, -18874368
  %381 = inttoptr i32 %add1549 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %381, i8 4) #5, !srcloc !57
  %382 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %383)
  %tobool1552.not = icmp eq i32 %383, 0
  br i1 %tobool1552.not, label %do.body1544.do.body1569_crit_edge, label %cond.false1564

do.body1544.do.body1569_crit_edge:                ; preds = %do.body1544
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1569

cond.false1564:                                   ; preds = %do.body1544
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %384 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %384(i32 noundef %383) #5
  br label %do.body1569

do.body1569:                                      ; preds = %cond.false1564, %do.body1544.do.body1569_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !226
  tail call void @arm_heavy_mb() #5
  %385 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load i32, ptr %port, align 4
  %add1572 = add i32 %386, 2
  %and1573 = and i32 %add1572, 1048575
  %add1574 = or i32 %and1573, -18874368
  %387 = inttoptr i32 %add1574 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %387, i8 12) #5, !srcloc !57
  %388 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %389)
  %tobool1577.not = icmp eq i32 %389, 0
  br i1 %tobool1577.not, label %do.body1569.do.body1594_crit_edge, label %cond.false1589

do.body1569.do.body1594_crit_edge:                ; preds = %do.body1569
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1594

cond.false1589:                                   ; preds = %do.body1569
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %390 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %390(i32 noundef %389) #5
  br label %do.body1594

do.body1594:                                      ; preds = %cond.false1589, %do.body1569.do.body1594_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !227
  tail call void @arm_heavy_mb() #5
  %391 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load i32, ptr %port, align 4
  %and1598 = and i32 %392, 1048575
  %add1599 = or i32 %and1598, -18874368
  %393 = inttoptr i32 %add1599 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %393, i8 64) #5, !srcloc !57
  %394 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %395)
  %tobool1602.not = icmp eq i32 %395, 0
  br i1 %tobool1602.not, label %do.body1594.do.body1619_crit_edge, label %cond.false1614

do.body1594.do.body1619_crit_edge:                ; preds = %do.body1594
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1619

cond.false1614:                                   ; preds = %do.body1594
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %396 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %396(i32 noundef %395) #5
  br label %do.body1619

do.body1619:                                      ; preds = %cond.false1614, %do.body1594.do.body1619_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !228
  tail call void @arm_heavy_mb() #5
  %397 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load i32, ptr %port, align 4
  %add1622 = add i32 %398, 2
  %and1623 = and i32 %add1622, 1048575
  %add1624 = or i32 %and1623, -18874368
  %399 = inttoptr i32 %add1624 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %399, i8 6) #5, !srcloc !57
  %400 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %401)
  %tobool1627.not = icmp eq i32 %401, 0
  br i1 %tobool1627.not, label %do.body1619.do.body1644_crit_edge, label %cond.false1639

do.body1619.do.body1644_crit_edge:                ; preds = %do.body1619
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1644

cond.false1639:                                   ; preds = %do.body1619
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %402 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %402(i32 noundef %401) #5
  br label %do.body1644

do.body1644:                                      ; preds = %cond.false1639, %do.body1619.do.body1644_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !229
  tail call void @arm_heavy_mb() #5
  %403 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load i32, ptr %port, align 4
  %add1647 = add i32 %404, 2
  %and1648 = and i32 %add1647, 1048575
  %add1649 = or i32 %and1648, -18874368
  %405 = inttoptr i32 %add1649 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %405, i8 7) #5, !srcloc !57
  %406 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %407)
  %tobool1652.not = icmp eq i32 %407, 0
  br i1 %tobool1652.not, label %do.body1644.do.body1669_crit_edge, label %cond.false1664

do.body1644.do.body1669_crit_edge:                ; preds = %do.body1644
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1669

cond.false1664:                                   ; preds = %do.body1644
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %408 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %408(i32 noundef %407) #5
  br label %do.body1669

do.body1669:                                      ; preds = %cond.false1664, %do.body1644.do.body1669_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !230
  tail call void @arm_heavy_mb() #5
  %409 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load i32, ptr %port, align 4
  %add1672 = add i32 %410, 2
  %and1673 = and i32 %add1672, 1048575
  %add1674 = or i32 %and1673, -18874368
  %411 = inttoptr i32 %add1674 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %411, i8 4) #5, !srcloc !57
  %412 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %413)
  %tobool1677.not = icmp eq i32 %413, 0
  br i1 %tobool1677.not, label %do.body1669.do.body1694_crit_edge, label %cond.false1689

do.body1669.do.body1694_crit_edge:                ; preds = %do.body1669
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1694

cond.false1689:                                   ; preds = %do.body1669
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %414 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %414(i32 noundef %413) #5
  br label %do.body1694

do.body1694:                                      ; preds = %cond.false1689, %do.body1669.do.body1694_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !231
  tail call void @arm_heavy_mb() #5
  %415 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load i32, ptr %port, align 4
  %add1697 = add i32 %416, 2
  %and1698 = and i32 %add1697, 1048575
  %add1699 = or i32 %and1698, -18874368
  %417 = inttoptr i32 %add1699 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %417, i8 12) #5, !srcloc !57
  %418 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %419)
  %tobool1702.not = icmp eq i32 %419, 0
  br i1 %tobool1702.not, label %do.body1694.do.body1719_crit_edge, label %cond.false1714

do.body1694.do.body1719_crit_edge:                ; preds = %do.body1694
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1719

cond.false1714:                                   ; preds = %do.body1694
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %420 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %420(i32 noundef %419) #5
  br label %do.body1719

do.body1719:                                      ; preds = %cond.false1714, %do.body1694.do.body1719_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !232
  tail call void @arm_heavy_mb() #5
  %421 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load i32, ptr %port, align 4
  %add1722 = add i32 %422, 2
  %and1723 = and i32 %add1722, 1048575
  %add1724 = or i32 %and1723, -18874368
  %423 = inttoptr i32 %add1724 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %423, i8 4) #5, !srcloc !57
  %424 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %425)
  %tobool1727.not = icmp eq i32 %425, 0
  br i1 %tobool1727.not, label %do.body1719.if.end1744_crit_edge, label %cond.false1739

do.body1719.if.end1744_crit_edge:                 ; preds = %do.body1719
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end1744

cond.false1739:                                   ; preds = %do.body1719
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %426 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %426(i32 noundef %425) #5
  br label %if.end1744

if.end1744:                                       ; preds = %cond.false1739, %do.body1719.if.end1744_crit_edge, %cond.end1490.if.end1744_crit_edge
  %427 = load i32, ptr @epatc8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %427)
  %tobool1745.not = icmp eq i32 %427, 0
  br i1 %tobool1745.not, label %if.then1746, label %if.end1744.if.end1747_crit_edge

if.end1744.if.end1747_crit_edge:                  ; preds = %if.end1744
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end1747

if.then1746:                                      ; preds = %if.end1744
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @epat_write_regr(ptr noundef %pi, i32 noundef 2, i32 noundef 8, i32 noundef 16)
  tail call void @epat_write_regr(ptr noundef %pi, i32 noundef 2, i32 noundef 12, i32 noundef 20)
  tail call void @epat_write_regr(ptr noundef %pi, i32 noundef 2, i32 noundef 10, i32 noundef 56)
  tail call void @epat_write_regr(ptr noundef %pi, i32 noundef 2, i32 noundef 18, i32 noundef 16)
  br label %if.end1747

if.end1747:                                       ; preds = %if.then1746, %if.end1744.if.end1747_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @epat_disconnect(ptr nocapture noundef readonly %pi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !233
  tail call void @arm_heavy_mb() #5
  %port = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port, align 4
  %add = add i32 %1, 2
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 4) #5, !srcloc !57
  %delay = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %3 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.do.body12_crit_edge, label %cond.false7

entry.do.body12_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body12

cond.false7:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %5(i32 noundef %4) #5
  br label %do.body12

do.body12:                                        ; preds = %cond.false7, %entry.do.body12_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !234
  tail call void @arm_heavy_mb() #5
  %6 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port, align 4
  %and16 = and i32 %7, 1048575
  %add17 = or i32 %and16, -18874368
  %8 = inttoptr i32 %add17 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 34) #5, !srcloc !57
  %9 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool20.not = icmp eq i32 %10, 0
  br i1 %tobool20.not, label %do.body12.do.body36_crit_edge, label %cond.false31

do.body12.do.body36_crit_edge:                    ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body36

cond.false31:                                     ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %11(i32 noundef %10) #5
  br label %do.body36

do.body36:                                        ; preds = %cond.false31, %do.body12.do.body36_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !235
  tail call void @arm_heavy_mb() #5
  %12 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port, align 4
  %and40 = and i32 %13, 1048575
  %add41 = or i32 %and40, -18874368
  %14 = inttoptr i32 %add41 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 -86) #5, !srcloc !57
  %15 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool44.not = icmp eq i32 %16, 0
  br i1 %tobool44.not, label %do.body36.do.body60_crit_edge, label %cond.false55

do.body36.do.body60_crit_edge:                    ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body60

cond.false55:                                     ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %17(i32 noundef %16) #5
  br label %do.body60

do.body60:                                        ; preds = %cond.false55, %do.body36.do.body60_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !236
  tail call void @arm_heavy_mb() #5
  %18 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %port, align 4
  %and64 = and i32 %19, 1048575
  %add65 = or i32 %and64, -18874368
  %20 = inttoptr i32 %add65 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 85) #5, !srcloc !57
  %21 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool68.not = icmp eq i32 %22, 0
  br i1 %tobool68.not, label %do.body60.do.body84_crit_edge, label %cond.false79

do.body60.do.body84_crit_edge:                    ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body84

cond.false79:                                     ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %23(i32 noundef %22) #5
  br label %do.body84

do.body84:                                        ; preds = %cond.false79, %do.body60.do.body84_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !237
  tail call void @arm_heavy_mb() #5
  %24 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %port, align 4
  %and88 = and i32 %25, 1048575
  %add89 = or i32 %and88, -18874368
  %26 = inttoptr i32 %add89 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %26, i8 0) #5, !srcloc !57
  %27 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool92.not = icmp eq i32 %28, 0
  br i1 %tobool92.not, label %do.body84.do.body108_crit_edge, label %cond.false103

do.body84.do.body108_crit_edge:                   ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body108

cond.false103:                                    ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %29(i32 noundef %28) #5
  br label %do.body108

do.body108:                                       ; preds = %cond.false103, %do.body84.do.body108_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !238
  tail call void @arm_heavy_mb() #5
  %30 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %port, align 4
  %and112 = and i32 %31, 1048575
  %add113 = or i32 %and112, -18874368
  %32 = inttoptr i32 %add113 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %32, i8 -1) #5, !srcloc !57
  %33 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool116.not = icmp eq i32 %34, 0
  br i1 %tobool116.not, label %do.body108.do.body132_crit_edge, label %cond.false127

do.body108.do.body132_crit_edge:                  ; preds = %do.body108
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body132

cond.false127:                                    ; preds = %do.body108
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %35(i32 noundef %34) #5
  br label %do.body132

do.body132:                                       ; preds = %cond.false127, %do.body108.do.body132_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !239
  tail call void @arm_heavy_mb() #5
  %36 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %port, align 4
  %and136 = and i32 %37, 1048575
  %add137 = or i32 %and136, -18874368
  %38 = inttoptr i32 %add137 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %38, i8 -121) #5, !srcloc !57
  %39 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool140.not = icmp eq i32 %40, 0
  br i1 %tobool140.not, label %do.body132.do.body156_crit_edge, label %cond.false151

do.body132.do.body156_crit_edge:                  ; preds = %do.body132
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body156

cond.false151:                                    ; preds = %do.body132
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %41(i32 noundef %40) #5
  br label %do.body156

do.body156:                                       ; preds = %cond.false151, %do.body132.do.body156_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !240
  tail call void @arm_heavy_mb() #5
  %42 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %port, align 4
  %and160 = and i32 %43, 1048575
  %add161 = or i32 %and160, -18874368
  %44 = inttoptr i32 %add161 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %44, i8 120) #5, !srcloc !57
  %45 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool164.not = icmp eq i32 %46, 0
  br i1 %tobool164.not, label %do.body156.do.body180_crit_edge, label %cond.false175

do.body156.do.body180_crit_edge:                  ; preds = %do.body156
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body180

cond.false175:                                    ; preds = %do.body156
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %47(i32 noundef %46) #5
  br label %do.body180

do.body180:                                       ; preds = %cond.false175, %do.body156.do.body180_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !241
  tail call void @arm_heavy_mb() #5
  %48 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %port, align 4
  %and184 = and i32 %49, 1048575
  %add185 = or i32 %and184, -18874368
  %50 = inttoptr i32 %add185 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %50, i8 48) #5, !srcloc !57
  %51 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool188.not = icmp eq i32 %52, 0
  br i1 %tobool188.not, label %do.body180.do.body204_crit_edge, label %cond.false199

do.body180.do.body204_crit_edge:                  ; preds = %do.body180
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body204

cond.false199:                                    ; preds = %do.body180
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %53(i32 noundef %52) #5
  br label %do.body204

do.body204:                                       ; preds = %cond.false199, %do.body180.do.body204_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !242
  tail call void @arm_heavy_mb() #5
  %54 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %port, align 4
  %add207 = add i32 %55, 2
  %and208 = and i32 %add207, 1048575
  %add209 = or i32 %and208, -18874368
  %56 = inttoptr i32 %add209 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %56, i8 4) #5, !srcloc !57
  %57 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool212.not = icmp eq i32 %58, 0
  br i1 %tobool212.not, label %do.body204.do.body228_crit_edge, label %cond.false223

do.body204.do.body228_crit_edge:                  ; preds = %do.body204
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body228

cond.false223:                                    ; preds = %do.body204
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %59 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %59(i32 noundef %58) #5
  br label %do.body228

do.body228:                                       ; preds = %cond.false223, %do.body204.do.body228_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !243
  tail call void @arm_heavy_mb() #5
  %60 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %port, align 4
  %add231 = add i32 %61, 2
  %and232 = and i32 %add231, 1048575
  %add233 = or i32 %and232, -18874368
  %62 = inttoptr i32 %add233 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %62, i8 5) #5, !srcloc !57
  %63 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool236.not = icmp eq i32 %64, 0
  br i1 %tobool236.not, label %do.body228.do.body252_crit_edge, label %cond.false247

do.body228.do.body252_crit_edge:                  ; preds = %do.body228
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body252

cond.false247:                                    ; preds = %do.body228
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %65 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %65(i32 noundef %64) #5
  br label %do.body252

do.body252:                                       ; preds = %cond.false247, %do.body228.do.body252_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !244
  tail call void @arm_heavy_mb() #5
  %66 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %port, align 4
  %add255 = add i32 %67, 2
  %and256 = and i32 %add255, 1048575
  %add257 = or i32 %and256, -18874368
  %68 = inttoptr i32 %add257 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %68, i8 4) #5, !srcloc !57
  %69 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool260.not = icmp eq i32 %70, 0
  br i1 %tobool260.not, label %do.body252.do.body276_crit_edge, label %cond.false271

do.body252.do.body276_crit_edge:                  ; preds = %do.body252
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body276

cond.false271:                                    ; preds = %do.body252
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %71 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %71(i32 noundef %70) #5
  br label %do.body276

do.body276:                                       ; preds = %cond.false271, %do.body252.do.body276_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !245
  tail call void @arm_heavy_mb() #5
  %72 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %port, align 4
  %and280 = and i32 %73, 1048575
  %add281 = or i32 %and280, -18874368
  %74 = inttoptr i32 %add281 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %74, i8 -1) #5, !srcloc !57
  %75 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool284.not = icmp eq i32 %76, 0
  br i1 %tobool284.not, label %do.body276.do.body300_crit_edge, label %cond.false295

do.body276.do.body300_crit_edge:                  ; preds = %do.body276
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body300

cond.false295:                                    ; preds = %do.body276
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %77 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %77(i32 noundef %76) #5
  br label %do.body300

do.body300:                                       ; preds = %cond.false295, %do.body276.do.body300_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !246
  tail call void @arm_heavy_mb() #5
  %saved_r0 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 7
  %78 = ptrtoint ptr %saved_r0 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %saved_r0, align 4
  %conv = trunc i32 %79 to i8
  %80 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %port, align 4
  %and304 = and i32 %81, 1048575
  %add305 = or i32 %and304, -18874368
  %82 = inttoptr i32 %add305 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %82, i8 %conv) #5, !srcloc !57
  %83 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool308.not = icmp eq i32 %84, 0
  br i1 %tobool308.not, label %do.body300.do.body325_crit_edge, label %cond.false320

do.body300.do.body325_crit_edge:                  ; preds = %do.body300
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body325

cond.false320:                                    ; preds = %do.body300
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %85 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %85(i32 noundef %84) #5
  br label %do.body325

do.body325:                                       ; preds = %cond.false320, %do.body300.do.body325_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !247
  tail call void @arm_heavy_mb() #5
  %saved_r2 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 8
  %86 = ptrtoint ptr %saved_r2 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %saved_r2, align 4
  %conv327 = trunc i32 %87 to i8
  %88 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %port, align 4
  %add329 = add i32 %89, 2
  %and330 = and i32 %add329, 1048575
  %add331 = or i32 %and330, -18874368
  %90 = inttoptr i32 %add331 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %90, i8 %conv327) #5, !srcloc !57
  %91 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool334.not = icmp eq i32 %92, 0
  br i1 %tobool334.not, label %do.body325.cond.end350_crit_edge, label %cond.false346

do.body325.cond.end350_crit_edge:                 ; preds = %do.body325
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end350

cond.false346:                                    ; preds = %do.body325
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %93 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %93(i32 noundef %92) #5
  br label %cond.end350

cond.end350:                                      ; preds = %cond.false346, %do.body325.cond.end350_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @epat_test_proto(ptr noundef %pi, ptr nocapture noundef %scratch, i32 noundef %verbose) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @epat_connect(ptr noundef %pi)
  %call = tail call i32 @epat_read_regr(ptr noundef %pi, i32 noundef 2, i32 noundef 13)
  tail call void @epat_disconnect(ptr noundef %pi)
  tail call void @epat_connect(ptr noundef %pi)
  tail call void @epat_write_regr(ptr noundef %pi, i32 noundef 0, i32 noundef 6, i32 noundef 160)
  br label %for.body3

for.body3:                                        ; preds = %for.body3.for.body3_crit_edge, %entry
  %e.sroa.0.0 = phi i32 [ 0, %entry ], [ %spec.select89, %for.body3.for.body3_crit_edge ]
  %k.080 = phi i32 [ 0, %entry ], [ %inc8, %for.body3.for.body3_crit_edge ]
  %xor = xor i32 %k.080, 170
  tail call void @epat_write_regr(ptr noundef %pi, i32 noundef 0, i32 noundef 2, i32 noundef %xor)
  %xor4 = xor i32 %k.080, 85
  tail call void @epat_write_regr(ptr noundef %pi, i32 noundef 0, i32 noundef 3, i32 noundef %xor4)
  %call5 = tail call i32 @epat_read_regr(ptr noundef %pi, i32 noundef 0, i32 noundef 2)
  call void @__sanitizer_cov_trace_cmp4(i32 %call5, i32 %xor)
  %cmp7.not = icmp ne i32 %call5, %xor
  %inc = zext i1 %cmp7.not to i32
  %spec.select89 = add i32 %e.sroa.0.0, %inc
  %inc8 = add nuw nsw i32 %k.080, 1
  %exitcond.not = icmp eq i32 %inc8, 256
  br i1 %exitcond.not, label %for.inc9, label %for.body3.for.body3_crit_edge

for.body3.for.body3_crit_edge:                    ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body3

for.inc9:                                         ; preds = %for.body3
  tail call void @epat_write_regr(ptr noundef %pi, i32 noundef 0, i32 noundef 6, i32 noundef 176)
  br label %for.body3.1

for.body3.1:                                      ; preds = %for.body3.1.for.body3.1_crit_edge, %for.inc9
  %e.sroa.7.0 = phi i32 [ 0, %for.inc9 ], [ %spec.select90, %for.body3.1.for.body3.1_crit_edge ]
  %k.080.1 = phi i32 [ 0, %for.inc9 ], [ %inc8.1, %for.body3.1.for.body3.1_crit_edge ]
  %xor.1 = xor i32 %k.080.1, 170
  tail call void @epat_write_regr(ptr noundef %pi, i32 noundef 0, i32 noundef 2, i32 noundef %xor.1)
  %xor4.1 = xor i32 %k.080.1, 85
  tail call void @epat_write_regr(ptr noundef %pi, i32 noundef 0, i32 noundef 3, i32 noundef %xor4.1)
  %call5.1 = tail call i32 @epat_read_regr(ptr noundef %pi, i32 noundef 0, i32 noundef 2)
  call void @__sanitizer_cov_trace_cmp4(i32 %call5.1, i32 %xor.1)
  %cmp7.not.1 = icmp ne i32 %call5.1, %xor.1
  %inc.1 = zext i1 %cmp7.not.1 to i32
  %spec.select90 = add i32 %e.sroa.7.0, %inc.1
  %inc8.1 = add nuw nsw i32 %k.080.1, 1
  %exitcond.1.not = icmp eq i32 %inc8.1, 256
  br i1 %exitcond.1.not, label %for.inc9.1, label %for.body3.1.for.body3.1_crit_edge

for.body3.1.for.body3.1_crit_edge:                ; preds = %for.body3.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body3.1

for.inc9.1:                                       ; preds = %for.body3.1
  tail call void @epat_disconnect(ptr noundef %pi)
  tail call void @epat_connect(ptr noundef %pi)
  tail call void @epat_write_regr(ptr noundef %pi, i32 noundef 2, i32 noundef 19, i32 noundef 1)
  tail call void @epat_write_regr(ptr noundef %pi, i32 noundef 2, i32 noundef 19, i32 noundef 0)
  tail call void @epat_write_regr(ptr noundef %pi, i32 noundef 2, i32 noundef 10, i32 noundef 17)
  tail call void @epat_read_block(ptr noundef %pi, ptr noundef %scratch, i32 noundef 512)
  br label %for.body14

for.body14:                                       ; preds = %for.body14.for.body14_crit_edge, %for.inc9.1
  %k.183 = phi i32 [ 0, %for.inc9.1 ], [ %inc33, %for.body14.for.body14_crit_edge ]
  %f.082 = phi i32 [ 0, %for.inc9.1 ], [ %f.2, %for.body14.for.body14_crit_edge ]
  %mul15 = shl nuw i32 %k.183, 1
  %arrayidx16 = getelementptr i8, ptr %scratch, i32 %mul15
  %0 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx16, align 1
  %conv = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %k.183, i32 %conv)
  %cmp17.not = icmp ne i32 %k.183, %conv
  %inc20 = zext i1 %cmp17.not to i32
  %spec.select = add i32 %f.082, %inc20
  %add23 = or i32 %mul15, 1
  %arrayidx24 = getelementptr i8, ptr %scratch, i32 %add23
  %2 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx24, align 1
  %conv25 = zext i8 %3 to i32
  %sub = sub nuw nsw i32 255, %k.183
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %conv25)
  %cmp27.not = icmp ne i32 %sub, %conv25
  %inc30 = zext i1 %cmp27.not to i32
  %f.2 = add i32 %spec.select, %inc30
  %inc33 = add nuw nsw i32 %k.183, 1
  %exitcond85.not = icmp eq i32 %inc33, 256
  br i1 %exitcond85.not, label %for.end34, label %for.body14.for.body14_crit_edge

for.body14.for.body14_crit_edge:                  ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body14

for.end34:                                        ; preds = %for.body14
  tail call void @epat_disconnect(ptr noundef %pi)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %verbose)
  %tobool.not = icmp eq i32 %verbose, 0
  br i1 %tobool.not, label %for.end34.if.end39_crit_edge, label %do.end

for.end34.if.end39_crit_edge:                     ; preds = %for.end34
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end39

do.end:                                           ; preds = %for.end34
  call void @__sanitizer_cov_trace_pc() #7
  %device = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 5
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device, align 4
  %port = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %6 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port, align 4
  %mode = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 2
  %8 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mode, align 4
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef %call, i32 noundef %spec.select89, i32 noundef %spec.select90, i32 noundef %f.2) #8
  br label %if.end39

if.end39:                                         ; preds = %do.end, %for.end34.if.end39_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select89)
  %tobool41.not = icmp ne i32 %spec.select89, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select90)
  %tobool43.not = icmp ne i32 %spec.select90, 0
  %or.cond = select i1 %tobool41.not, i1 %tobool43.not, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %f.2)
  %tobool44 = icmp ne i32 %f.2, 0
  %narrow = select i1 %or.cond, i1 true, i1 %tobool44
  %10 = zext i1 %narrow to i32
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @epat_log_adapter(ptr noundef %pi, ptr nocapture noundef readnone %scratch, i32 noundef %verbose) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @epat_connect(ptr noundef %pi)
  tail call void @epat_write_regr(ptr noundef %pi, i32 noundef 2, i32 noundef 10, i32 noundef 56)
  %call = tail call i32 @epat_read_regr(ptr noundef %pi, i32 noundef 2, i32 noundef 11)
  tail call void @epat_disconnect(ptr noundef %pi)
  %device = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 5
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %port = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port, align 4
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %1, ptr noundef nonnull @.str.11, i32 noundef %call, i32 noundef %3) #8
  %mode = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 2
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mode, align 4
  %arrayidx = getelementptr [6 x ptr], ptr @__const.epat_log_adapter.mode_string, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %delay = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %8 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %delay, align 4
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %5, ptr noundef %7, i32 noundef %9) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @paride_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !17, !19, !21, !22, !23, !24, !25, !27, !29, !31, !33, !35, !37, !39, !40, !41, !42, !43, !45, !46}
!llvm.module.flags = !{!47, !48, !49, !50, !51, !52, !53, !54}
!llvm.ident = !{!55}

!0 = !{ptr @__param_epatc8, !1, !"__param_epatc8", i1 false, i1 false}
!1 = !{!"../drivers/block/paride/epat.c", i32 36, i32 1}
!2 = !{ptr @__UNIQUE_ID_epatc8type160, !1, !"__UNIQUE_ID_epatc8type160", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_epatc8161, !4, !"__UNIQUE_ID_epatc8161", i1 false, i1 false}
!4 = !{!"../drivers/block/paride/epat.c", i32 37, i32 1}
!5 = !{ptr @__UNIQUE_ID_file162, !6, !"__UNIQUE_ID_file162", i1 false, i1 false}
!6 = !{!"../drivers/block/paride/epat.c", i32 338, i32 1}
!7 = !{ptr @__UNIQUE_ID_license163, !6, !"__UNIQUE_ID_license163", i1 false, i1 false}
!8 = !{ptr @__initcall__kmod_epat__164_339_epat_init6, !9, !"__initcall__kmod_epat__164_339_epat_init6", i1 false, i1 false}
!9 = !{!"../drivers/block/paride/epat.c", i32 339, i32 1}
!10 = !{ptr @__exitcall_epat_exit, !11, !"__exitcall_epat_exit", i1 false, i1 false}
!11 = !{!"../drivers/block/paride/epat.c", i32 340, i32 1}
!12 = !{ptr @epatc8, !13, !"epatc8", i1 false, i1 false}
!13 = !{!"../drivers/block/paride/epat.c", i32 34, i32 12}
!14 = !{ptr @__param_str_epatc8, !1, !"__param_str_epatc8", i1 false, i1 false}
!15 = !{ptr @epat, !16, !"epat", i1 false, i1 false}
!16 = !{!"../drivers/block/paride/epat.c", i32 308, i32 27}
!17 = !{ptr @cont_map, !18, !"cont_map", i1 false, i1 false}
!18 = !{!"../drivers/block/paride/epat.c", i32 45, i32 12}
!19 = !{ptr @.str, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/block/paride/epat.c", i32 283, i32 13}
!21 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @epat_test_proto._entry, !20, !"_entry", i1 false, i1 false}
!24 = !{ptr @epat_test_proto._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/block/paride/epat.c", i32 294, i32 7}
!27 = !{ptr @.str.4, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/block/paride/epat.c", i32 294, i32 15}
!29 = !{ptr @.str.5, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/block/paride/epat.c", i32 294, i32 21}
!31 = !{ptr @.str.6, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/block/paride/epat.c", i32 294, i32 29}
!33 = !{ptr @.str.7, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/block/paride/epat.c", i32 294, i32 37}
!35 = !{ptr @.str.8, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/block/paride/epat.c", i32 294, i32 46}
!37 = !{ptr @.str.9, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/block/paride/epat.c", i32 301, i32 2}
!39 = !{ptr @.str.10, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @epat_log_adapter._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @epat_log_adapter._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.13, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/block/paride/epat.c", i32 303, i32 2}
!45 = !{ptr @epat_log_adapter._entry.12, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @epat_log_adapter._entry_ptr.14, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{i32 1, !"wchar_size", i32 2}
!48 = !{i32 1, !"min_enum_size", i32 4}
!49 = !{i32 8, !"branch-target-enforcement", i32 0}
!50 = !{i32 8, !"sign-return-address", i32 0}
!51 = !{i32 8, !"sign-return-address-all", i32 0}
!52 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!53 = !{i32 7, !"uwtable", i32 1}
!54 = !{i32 7, !"frame-pointer", i32 2}
!55 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!56 = !{i64 2152110507}
!57 = !{i64 4535361}
!58 = !{i64 2152111517}
!59 = !{i64 2152112533}
!60 = !{i64 2152113543}
!61 = !{i64 2152114568}
!62 = !{i64 2152115584}
!63 = !{i64 2152116594}
!64 = !{i64 2152117604}
!65 = !{i64 2152118614}
!66 = !{i64 4535756}
!67 = !{i64 2152124370}
!68 = !{i64 2152124638}
!69 = !{i64 2152126333}
!70 = !{i64 2152126645}
!71 = !{i64 2152127655}
!72 = !{i64 2152128665}
!73 = !{i64 2152130360}
!74 = !{i64 2152131313}
!75 = !{i64 2152131590}
!76 = !{i64 2152132649}
!77 = !{i64 2152133659}
!78 = !{i64 2152134678}
!79 = !{i64 2152136373}
!80 = !{i64 2152136641}
!81 = !{i64 2152137651}
!82 = !{i64 2152138670}
!83 = !{i64 2152140365}
!84 = !{i64 2152140633}
!85 = !{i64 2152200448}
!86 = !{i64 2152201458}
!87 = !{i64 2152202468}
!88 = !{i64 2152203493}
!89 = !{i64 2152204512}
!90 = !{i64 2152205522}
!91 = !{i64 2152206532}
!92 = !{i64 2152207551}
!93 = !{i64 2152208576}
!94 = !{i64 2152209586}
!95 = !{i64 2152210605}
!96 = !{i64 2152211656}
!97 = !{i64 4534938}
!98 = !{i64 2152212784}
!99 = !{i64 2152213803}
!100 = !{i64 2152214854}
!101 = !{i64 4535558}
!102 = !{i64 2152215982}
!103 = !{i64 2152141643}
!104 = !{i64 2152142653}
!105 = !{i64 2152143663}
!106 = !{i64 2152144682}
!107 = !{i64 2152145701}
!108 = !{i64 2152146720}
!109 = !{i64 2152148415}
!110 = !{i64 2152148692}
!111 = !{i64 2152150387}
!112 = !{i64 2152150684}
!113 = !{i64 2152151694}
!114 = !{i64 2152152713}
!115 = !{i64 2152153723}
!116 = !{i64 2152154733}
!117 = !{i64 2152155752}
!118 = !{i64 2152156771}
!119 = !{i64 2152157790}
!120 = !{i64 2152159485}
!121 = !{i64 2152160438}
!122 = !{i64 2152160740}
!123 = !{i64 2152161750}
!124 = !{i64 2152162769}
!125 = !{i64 2152163779}
!126 = !{i64 2152164798}
!127 = !{i64 2152165808}
!128 = !{i64 2152166836}
!129 = !{i64 2152168531}
!130 = !{i64 2152168808}
!131 = !{i64 2152169827}
!132 = !{i64 2152171522}
!133 = !{i64 2152171799}
!134 = !{i64 2152172809}
!135 = !{i64 2152173828}
!136 = !{i64 2152174847}
!137 = !{i64 2152176542}
!138 = !{i64 2152176810}
!139 = !{i64 2152177829}
!140 = !{i64 2152178848}
!141 = !{i64 2152180543}
!142 = !{i64 2152180811}
!143 = !{i64 2152181830}
!144 = !{i64 2152182849}
!145 = !{i64 4535138}
!146 = !{i64 2152184896}
!147 = !{i64 2152185849}
!148 = !{i64 2152186117}
!149 = !{i64 2152187136}
!150 = !{i64 2152188155}
!151 = !{i64 2152189850}
!152 = !{i64 2152190118}
!153 = !{i64 2152191137}
!154 = !{i64 2152192156}
!155 = !{i64 4535976}
!156 = !{i64 2152194207}
!157 = !{i64 2152195160}
!158 = !{i64 2152195428}
!159 = !{i64 2152196447}
!160 = !{i64 2152197466}
!161 = !{i64 2152199161}
!162 = !{i64 2152199429}
!163 = !{i64 2152217677}
!164 = !{i64 2152218630}
!165 = !{i64 2152219018}
!166 = !{i64 2152220037}
!167 = !{i64 2152221056}
!168 = !{i64 2152222075}
!169 = !{i64 2152223085}
!170 = !{i64 2152224104}
!171 = !{i64 2152225123}
!172 = !{i64 2152226142}
!173 = !{i64 2152227152}
!174 = !{i64 2152228162}
!175 = !{i64 2152229172}
!176 = !{i64 2152230182}
!177 = !{i64 2152231201}
!178 = !{i64 2152232334}
!179 = !{i64 2152233353}
!180 = !{i64 2152234372}
!181 = !{i64 2152235391}
!182 = !{i64 2152236401}
!183 = !{i64 2152237420}
!184 = !{i64 2152238439}
!185 = !{i64 2152239458}
!186 = !{i64 2152240477}
!187 = !{i64 2152241487}
!188 = !{i64 2152242497}
!189 = !{i64 2152243507}
!190 = !{i64 2152244526}
!191 = !{i64 2152245659}
!192 = !{i64 2152246678}
!193 = !{i64 2152247697}
!194 = !{i64 2152248716}
!195 = !{i64 2152249726}
!196 = !{i64 2152250745}
!197 = !{i64 2152251764}
!198 = !{i64 2152252783}
!199 = !{i64 2152253802}
!200 = !{i64 2152254812}
!201 = !{i64 2152255822}
!202 = !{i64 2152256832}
!203 = !{i64 2152257851}
!204 = !{i64 2152258861}
!205 = !{i64 2152259871}
!206 = !{i64 2152260881}
!207 = !{i64 2152262252}
!208 = !{i64 2152263271}
!209 = !{i64 2152264290}
!210 = !{i64 2152265309}
!211 = !{i64 2152266319}
!212 = !{i64 2152267338}
!213 = !{i64 2152268357}
!214 = !{i64 2152269376}
!215 = !{i64 2152270395}
!216 = !{i64 2152271405}
!217 = !{i64 2152272415}
!218 = !{i64 2152273425}
!219 = !{i64 2152274444}
!220 = !{i64 2152275454}
!221 = !{i64 2152276464}
!222 = !{i64 2152277474}
!223 = !{i64 2152278484}
!224 = !{i64 2152279494}
!225 = !{i64 2152280504}
!226 = !{i64 2152281520}
!227 = !{i64 2152282539}
!228 = !{i64 2152283549}
!229 = !{i64 2152284559}
!230 = !{i64 2152285569}
!231 = !{i64 2152286585}
!232 = !{i64 2152287595}
!233 = !{i64 2152288867}
!234 = !{i64 2152289886}
!235 = !{i64 2152290905}
!236 = !{i64 2152291924}
!237 = !{i64 2152292934}
!238 = !{i64 2152293953}
!239 = !{i64 2152294972}
!240 = !{i64 2152295991}
!241 = !{i64 2152297010}
!242 = !{i64 2152298020}
!243 = !{i64 2152299030}
!244 = !{i64 2152300040}
!245 = !{i64 2152301059}
!246 = !{i64 2152302102}
!247 = !{i64 2152303145}
