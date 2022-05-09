; ModuleID = '/llk/IR_all_yes/drivers/block/paride/frpw.c_pt.bc'
source_filename = "../drivers/block/paride/frpw.c"
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

@frpw = internal global { %struct.pi_protocol, [48 x i8] } { %struct.pi_protocol { [8 x i8] c"frpw\00\00\00\00", i32 0, i32 6, i32 2, i32 2, i32 1, ptr @frpw_write_regr, ptr @frpw_read_regr, ptr @frpw_write_block, ptr @frpw_read_block, ptr @frpw_connect, ptr @frpw_disconnect, ptr null, ptr null, ptr @frpw_test_proto, ptr @frpw_log_adapter, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_file160 = internal constant [36 x i8] c"frpw.file=drivers/block/paride/frpw\00", section ".modinfo", align 1
@__UNIQUE_ID_license161 = internal constant [17 x i8] c"frpw.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_frpw__162_312_frpw_init6 = internal global ptr @frpw_init, section ".initcall6.init", align 4
@__exitcall_frpw_exit = internal global ptr @frpw_exit, section ".exitcall.exit", align 4
@cont_map = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 8, i32 16], [24 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@frpw_test_proto._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 235, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: frpw: Xilinx does not support mode %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"frpw_test_proto\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/block/paride/frpw.c\00", [36 x i8] zeroinitializer }, align 32
@frpw_test_proto._entry_ptr = internal global ptr @frpw_test_proto._entry, section ".printk_index", align 4
@frpw_test_proto._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 242, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: frpw: ASIC does not support mode 2\0A\00", [56 x i8] zeroinitializer }, align 32
@frpw_test_proto._entry_ptr.5 = internal global ptr @frpw_test_proto._entry.3, section ".printk_index", align 4
@frpw_test_proto._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 265, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"%s: frpw: port 0x%x, chip %ld, mode %d, test=(%d,%d,%d)\0A\00", [39 x i8] zeroinitializer }, align 32
@frpw_test_proto._entry_ptr.8 = internal global ptr @frpw_test_proto._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"4-bit\00", [26 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"8-bit\00", [26 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"EPP\00", [28 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"EPP-8\00", [26 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"EPP-16\00", [25 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"EPP-32\00", [25 x i8] zeroinitializer }, align 32
@__const.frpw_log_adapter.mode_string = private unnamed_addr constant [6 x ptr] [ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14], align 4
@frpw_log_adapter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 278, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: frpw %s, Freecom (%s) adapter at 0x%x, \00", [52 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"frpw_log_adapter\00", [47 x i8] zeroinitializer }, align 32
@frpw_log_adapter._entry_ptr = internal global ptr @frpw_log_adapter._entry, section ".printk_index", align 4
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"1.03\00", [27 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Xilinx\00", [25 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ASIC\00", [27 x i8] zeroinitializer }, align 32
@frpw_log_adapter._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.16, ptr @.str.2, i32 280, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mode %d (%s), delay %d\0A\00", [40 x i8] zeroinitializer }, align 32
@frpw_log_adapter._entry_ptr.22 = internal global ptr @frpw_log_adapter._entry.20, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.23 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@___asan_gen_.24 = private unnamed_addr constant [5 x i8] c"frpw\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 284, i32 27 }
@___asan_gen_.27 = private unnamed_addr constant [9 x i8] c"cont_map\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 45, i32 13 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 234, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 241, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 264, i32 13 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 274, i32 36 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 274, i32 44 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 274, i32 52 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 275, i32 8 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 275, i32 16 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 275, i32 25 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 277, i32 9 }
@___asan_gen_.90 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.93 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.94 = private constant [31 x i8] c"../drivers/block/paride/frpw.c\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 279, i32 9 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @__UNIQUE_ID_file160, ptr @__UNIQUE_ID_license161, ptr @__exitcall_frpw_exit, ptr @__initcall__kmod_frpw__162_312_frpw_init6, ptr @frpw_exit, ptr @frpw_log_adapter._entry, ptr @frpw_log_adapter._entry.20, ptr @frpw_log_adapter._entry_ptr, ptr @frpw_log_adapter._entry_ptr.22, ptr @frpw_test_proto._entry, ptr @frpw_test_proto._entry.3, ptr @frpw_test_proto._entry.6, ptr @frpw_test_proto._entry_ptr, ptr @frpw_test_proto._entry_ptr.5, ptr @frpw_test_proto._entry_ptr.8, ptr @frpw, ptr @cont_map, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frpw to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cont_map to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frpw_test_proto._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frpw_test_proto._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frpw_test_proto._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frpw_log_adapter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frpw_log_adapter._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @frpw_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @paride_unregister(ptr noundef nonnull @frpw) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @paride_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @frpw_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @paride_register(ptr noundef nonnull @frpw) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @frpw_write_regr(ptr nocapture noundef readonly %pi, i32 noundef %cont, i32 noundef %regr, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [2 x i32], ptr @cont_map, i32 0, i32 %cont
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %add = add i32 %1, %regr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !58
  tail call void @arm_heavy_mb() #5
  %port = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port, align 4
  %add1 = add i32 %3, 2
  %and = and i32 %add1, 1048575
  %add2 = or i32 %and, -18874368
  %4 = inttoptr i32 %add2 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 4) #5, !srcloc !59
  %delay = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %5 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.do.body13_crit_edge, label %cond.false8

entry.do.body13_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body13

cond.false8:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %7(i32 noundef %6) #5
  br label %do.body13

do.body13:                                        ; preds = %cond.false8, %entry.do.body13_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  tail call void @arm_heavy_mb() #5
  %conv = trunc i32 %add to i8
  %8 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port, align 4
  %and18 = and i32 %9, 1048575
  %add19 = or i32 %and18, -18874368
  %10 = inttoptr i32 %add19 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 %conv) #5, !srcloc !59
  %11 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool22.not = icmp eq i32 %12, 0
  br i1 %tobool22.not, label %do.body13.do.body39_crit_edge, label %cond.false34

do.body13.do.body39_crit_edge:                    ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body39

cond.false34:                                     ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %13(i32 noundef %12) #5
  br label %do.body39

do.body39:                                        ; preds = %cond.false34, %do.body13.do.body39_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !61
  tail call void @arm_heavy_mb() #5
  %14 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %port, align 4
  %add43 = add i32 %15, 2
  %and44 = and i32 %add43, 1048575
  %add45 = or i32 %and44, -18874368
  %16 = inttoptr i32 %add45 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %16, i8 12) #5, !srcloc !59
  %17 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool48.not = icmp eq i32 %18, 0
  br i1 %tobool48.not, label %do.body39.do.body65_crit_edge, label %cond.false60

do.body39.do.body65_crit_edge:                    ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body65

cond.false60:                                     ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %19(i32 noundef %18) #5
  br label %do.body65

do.body65:                                        ; preds = %cond.false60, %do.body39.do.body65_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !62
  tail call void @arm_heavy_mb() #5
  %20 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %port, align 4
  %add69 = add i32 %21, 2
  %and70 = and i32 %add69, 1048575
  %add71 = or i32 %and70, -18874368
  %22 = inttoptr i32 %add71 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %22, i8 14) #5, !srcloc !59
  %23 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool74.not = icmp eq i32 %24, 0
  br i1 %tobool74.not, label %do.body65.do.body91_crit_edge, label %cond.false86

do.body65.do.body91_crit_edge:                    ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body91

cond.false86:                                     ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %25(i32 noundef %24) #5
  br label %do.body91

do.body91:                                        ; preds = %cond.false86, %do.body65.do.body91_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !63
  tail call void @arm_heavy_mb() #5
  %26 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %port, align 4
  %add95 = add i32 %27, 2
  %and96 = and i32 %add95, 1048575
  %add97 = or i32 %and96, -18874368
  %28 = inttoptr i32 %add97 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %28, i8 14) #5, !srcloc !59
  %29 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool100.not = icmp eq i32 %30, 0
  br i1 %tobool100.not, label %do.body91.do.body117_crit_edge, label %cond.false112

do.body91.do.body117_crit_edge:                   ; preds = %do.body91
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body117

cond.false112:                                    ; preds = %do.body91
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %31(i32 noundef %30) #5
  br label %do.body117

do.body117:                                       ; preds = %cond.false112, %do.body91.do.body117_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !64
  tail call void @arm_heavy_mb() #5
  %32 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %port, align 4
  %add121 = add i32 %33, 2
  %and122 = and i32 %add121, 1048575
  %add123 = or i32 %and122, -18874368
  %34 = inttoptr i32 %add123 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %34, i8 12) #5, !srcloc !59
  %35 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool126.not = icmp eq i32 %36, 0
  br i1 %tobool126.not, label %do.body117.do.body143_crit_edge, label %cond.false138

do.body117.do.body143_crit_edge:                  ; preds = %do.body117
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body143

cond.false138:                                    ; preds = %do.body117
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %37(i32 noundef %36) #5
  br label %do.body143

do.body143:                                       ; preds = %cond.false138, %do.body117.do.body143_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !65
  tail call void @arm_heavy_mb() #5
  %38 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %port, align 4
  %add147 = add i32 %39, 2
  %and148 = and i32 %add147, 1048575
  %add149 = or i32 %and148, -18874368
  %40 = inttoptr i32 %add149 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %40, i8 4) #5, !srcloc !59
  %41 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool152.not = icmp eq i32 %42, 0
  br i1 %tobool152.not, label %do.body143.do.body169_crit_edge, label %cond.false164

do.body143.do.body169_crit_edge:                  ; preds = %do.body143
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body169

cond.false164:                                    ; preds = %do.body143
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %43(i32 noundef %42) #5
  br label %do.body169

do.body169:                                       ; preds = %cond.false164, %do.body143.do.body169_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !66
  tail call void @arm_heavy_mb() #5
  %44 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %port, align 4
  %add173 = add i32 %45, 2
  %and174 = and i32 %add173, 1048575
  %add175 = or i32 %and174, -18874368
  %46 = inttoptr i32 %add175 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %46, i8 4) #5, !srcloc !59
  %47 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool178.not = icmp eq i32 %48, 0
  br i1 %tobool178.not, label %do.body169.do.body195_crit_edge, label %cond.false190

do.body169.do.body195_crit_edge:                  ; preds = %do.body169
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body195

cond.false190:                                    ; preds = %do.body169
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %49(i32 noundef %48) #5
  br label %do.body195

do.body195:                                       ; preds = %cond.false190, %do.body169.do.body195_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  tail call void @arm_heavy_mb() #5
  %50 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %port, align 4
  %add199 = add i32 %51, 2
  %and200 = and i32 %add199, 1048575
  %add201 = or i32 %and200, -18874368
  %52 = inttoptr i32 %add201 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %52, i8 4) #5, !srcloc !59
  %53 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool204.not = icmp eq i32 %54, 0
  br i1 %tobool204.not, label %do.body195.do.body221_crit_edge, label %cond.false216

do.body195.do.body221_crit_edge:                  ; preds = %do.body195
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body221

cond.false216:                                    ; preds = %do.body195
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %55 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %55(i32 noundef %54) #5
  br label %do.body221

do.body221:                                       ; preds = %cond.false216, %do.body195.do.body221_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !68
  tail call void @arm_heavy_mb() #5
  %conv224 = trunc i32 %val to i8
  %56 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %port, align 4
  %and227 = and i32 %57, 1048575
  %add228 = or i32 %and227, -18874368
  %58 = inttoptr i32 %add228 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %58, i8 %conv224) #5, !srcloc !59
  %59 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool231.not = icmp eq i32 %60, 0
  br i1 %tobool231.not, label %do.body221.do.body248_crit_edge, label %cond.false243

do.body221.do.body248_crit_edge:                  ; preds = %do.body221
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body248

cond.false243:                                    ; preds = %do.body221
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %61 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %61(i32 noundef %60) #5
  br label %do.body248

do.body248:                                       ; preds = %cond.false243, %do.body221.do.body248_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !69
  tail call void @arm_heavy_mb() #5
  %62 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %port, align 4
  %add252 = add i32 %63, 2
  %and253 = and i32 %add252, 1048575
  %add254 = or i32 %and253, -18874368
  %64 = inttoptr i32 %add254 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %64, i8 5) #5, !srcloc !59
  %65 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool257.not = icmp eq i32 %66, 0
  br i1 %tobool257.not, label %do.body248.do.body274_crit_edge, label %cond.false269

do.body248.do.body274_crit_edge:                  ; preds = %do.body248
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body274

cond.false269:                                    ; preds = %do.body248
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %67 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %67(i32 noundef %66) #5
  br label %do.body274

do.body274:                                       ; preds = %cond.false269, %do.body248.do.body274_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !70
  tail call void @arm_heavy_mb() #5
  %68 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %port, align 4
  %add278 = add i32 %69, 2
  %and279 = and i32 %add278, 1048575
  %add280 = or i32 %and279, -18874368
  %70 = inttoptr i32 %add280 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %70, i8 7) #5, !srcloc !59
  %71 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool283.not = icmp eq i32 %72, 0
  br i1 %tobool283.not, label %do.body274.do.body300_crit_edge, label %cond.false295

do.body274.do.body300_crit_edge:                  ; preds = %do.body274
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body300

cond.false295:                                    ; preds = %do.body274
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %73 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %73(i32 noundef %72) #5
  br label %do.body300

do.body300:                                       ; preds = %cond.false295, %do.body274.do.body300_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  tail call void @arm_heavy_mb() #5
  %74 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %port, align 4
  %add304 = add i32 %75, 2
  %and305 = and i32 %add304, 1048575
  %add306 = or i32 %and305, -18874368
  %76 = inttoptr i32 %add306 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %76, i8 5) #5, !srcloc !59
  %77 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool309.not = icmp eq i32 %78, 0
  br i1 %tobool309.not, label %do.body300.do.body326_crit_edge, label %cond.false321

do.body300.do.body326_crit_edge:                  ; preds = %do.body300
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body326

cond.false321:                                    ; preds = %do.body300
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %79 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %79(i32 noundef %78) #5
  br label %do.body326

do.body326:                                       ; preds = %cond.false321, %do.body300.do.body326_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !72
  tail call void @arm_heavy_mb() #5
  %80 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %port, align 4
  %add330 = add i32 %81, 2
  %and331 = and i32 %add330, 1048575
  %add332 = or i32 %and331, -18874368
  %82 = inttoptr i32 %add332 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %82, i8 4) #5, !srcloc !59
  %83 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool335.not = icmp eq i32 %84, 0
  br i1 %tobool335.not, label %do.body326.cond.end351_crit_edge, label %cond.false347

do.body326.cond.end351_crit_edge:                 ; preds = %do.body326
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end351

cond.false347:                                    ; preds = %do.body326
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %85 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %85(i32 noundef %84) #5
  br label %cond.end351

cond.end351:                                      ; preds = %cond.false347, %do.body326.cond.end351_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @frpw_read_regr(ptr nocapture noundef readonly %pi, i32 noundef %cont, i32 noundef %regr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [2 x i32], ptr @cont_map, i32 0, i32 %cont
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %add = add i32 %1, %regr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !73
  tail call void @arm_heavy_mb() #5
  %port = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port, align 4
  %add1 = add i32 %3, 2
  %and = and i32 %add1, 1048575
  %add2 = or i32 %and, -18874368
  %4 = inttoptr i32 %add2 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 4) #5, !srcloc !59
  %delay = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %5 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.do.body13_crit_edge, label %cond.false8

entry.do.body13_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body13

cond.false8:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %7(i32 noundef %6) #5
  br label %do.body13

do.body13:                                        ; preds = %cond.false8, %entry.do.body13_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !74
  tail call void @arm_heavy_mb() #5
  %conv = trunc i32 %add to i8
  %8 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port, align 4
  %and18 = and i32 %9, 1048575
  %add19 = or i32 %and18, -18874368
  %10 = inttoptr i32 %add19 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 %conv) #5, !srcloc !59
  %11 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool22.not = icmp eq i32 %12, 0
  br i1 %tobool22.not, label %do.body13.do.body39_crit_edge, label %cond.false34

do.body13.do.body39_crit_edge:                    ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body39

cond.false34:                                     ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %13(i32 noundef %12) #5
  br label %do.body39

do.body39:                                        ; preds = %cond.false34, %do.body13.do.body39_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !75
  tail call void @arm_heavy_mb() #5
  %14 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %port, align 4
  %add43 = add i32 %15, 2
  %and44 = and i32 %add43, 1048575
  %add45 = or i32 %and44, -18874368
  %16 = inttoptr i32 %add45 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %16, i8 12) #5, !srcloc !59
  %17 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool48.not = icmp eq i32 %18, 0
  br i1 %tobool48.not, label %do.body39.do.body65_crit_edge, label %cond.false60

do.body39.do.body65_crit_edge:                    ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body65

cond.false60:                                     ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %19(i32 noundef %18) #5
  br label %do.body65

do.body65:                                        ; preds = %cond.false60, %do.body39.do.body65_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !76
  tail call void @arm_heavy_mb() #5
  %20 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %port, align 4
  %add69 = add i32 %21, 2
  %and70 = and i32 %add69, 1048575
  %add71 = or i32 %and70, -18874368
  %22 = inttoptr i32 %add71 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %22, i8 14) #5, !srcloc !59
  %23 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool74.not = icmp eq i32 %24, 0
  br i1 %tobool74.not, label %do.body65.do.body91_crit_edge, label %cond.false86

do.body65.do.body91_crit_edge:                    ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body91

cond.false86:                                     ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %25(i32 noundef %24) #5
  br label %do.body91

do.body91:                                        ; preds = %cond.false86, %do.body65.do.body91_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !77
  tail call void @arm_heavy_mb() #5
  %26 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %port, align 4
  %add95 = add i32 %27, 2
  %and96 = and i32 %add95, 1048575
  %add97 = or i32 %and96, -18874368
  %28 = inttoptr i32 %add97 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %28, i8 14) #5, !srcloc !59
  %29 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool100.not = icmp eq i32 %30, 0
  br i1 %tobool100.not, label %do.body91.do.body117_crit_edge, label %cond.false112

do.body91.do.body117_crit_edge:                   ; preds = %do.body91
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body117

cond.false112:                                    ; preds = %do.body91
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %31(i32 noundef %30) #5
  br label %do.body117

do.body117:                                       ; preds = %cond.false112, %do.body91.do.body117_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !78
  tail call void @arm_heavy_mb() #5
  %32 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %port, align 4
  %add121 = add i32 %33, 2
  %and122 = and i32 %add121, 1048575
  %add123 = or i32 %and122, -18874368
  %34 = inttoptr i32 %add123 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %34, i8 12) #5, !srcloc !59
  %35 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool126.not = icmp eq i32 %36, 0
  br i1 %tobool126.not, label %do.body117.do.body143_crit_edge, label %cond.false138

do.body117.do.body143_crit_edge:                  ; preds = %do.body117
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body143

cond.false138:                                    ; preds = %do.body117
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %37(i32 noundef %36) #5
  br label %do.body143

do.body143:                                       ; preds = %cond.false138, %do.body117.do.body143_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !79
  tail call void @arm_heavy_mb() #5
  %38 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %port, align 4
  %add147 = add i32 %39, 2
  %and148 = and i32 %add147, 1048575
  %add149 = or i32 %and148, -18874368
  %40 = inttoptr i32 %add149 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %40, i8 4) #5, !srcloc !59
  %41 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool152.not = icmp eq i32 %42, 0
  br i1 %tobool152.not, label %do.body143.do.body169_crit_edge, label %cond.false164

do.body143.do.body169_crit_edge:                  ; preds = %do.body143
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body169

cond.false164:                                    ; preds = %do.body143
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %43(i32 noundef %42) #5
  br label %do.body169

do.body169:                                       ; preds = %cond.false164, %do.body143.do.body169_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !80
  tail call void @arm_heavy_mb() #5
  %44 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %port, align 4
  %add173 = add i32 %45, 2
  %and174 = and i32 %add173, 1048575
  %add175 = or i32 %and174, -18874368
  %46 = inttoptr i32 %add175 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %46, i8 4) #5, !srcloc !59
  %47 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool178.not = icmp eq i32 %48, 0
  br i1 %tobool178.not, label %do.body169.do.body195_crit_edge, label %cond.false190

do.body169.do.body195_crit_edge:                  ; preds = %do.body169
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body195

cond.false190:                                    ; preds = %do.body169
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %49(i32 noundef %48) #5
  br label %do.body195

do.body195:                                       ; preds = %cond.false190, %do.body169.do.body195_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !81
  tail call void @arm_heavy_mb() #5
  %50 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %port, align 4
  %add199 = add i32 %51, 2
  %and200 = and i32 %add199, 1048575
  %add201 = or i32 %and200, -18874368
  %52 = inttoptr i32 %add201 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %52, i8 4) #5, !srcloc !59
  %53 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool204.not = icmp eq i32 %54, 0
  br i1 %tobool204.not, label %do.body195.do.body221_crit_edge, label %cond.false216

do.body195.do.body221_crit_edge:                  ; preds = %do.body195
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body221

cond.false216:                                    ; preds = %do.body195
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %55 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %55(i32 noundef %54) #5
  br label %do.body221

do.body221:                                       ; preds = %cond.false216, %do.body195.do.body221_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !82
  tail call void @arm_heavy_mb() #5
  %56 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %port, align 4
  %add225 = add i32 %57, 2
  %and226 = and i32 %add225, 1048575
  %add227 = or i32 %and226, -18874368
  %58 = inttoptr i32 %add227 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %58, i8 6) #5, !srcloc !59
  %59 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool230.not = icmp eq i32 %60, 0
  br i1 %tobool230.not, label %do.body221.cond.end264_crit_edge, label %cond.false242

do.body221.cond.end264_crit_edge:                 ; preds = %do.body221
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end264

cond.false242:                                    ; preds = %do.body221
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %61 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %61(i32 noundef %60) #5
  %62 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %62)
  %.pr = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool248.not = icmp eq i32 %.pr, 0
  br i1 %tobool248.not, label %cond.false242.cond.end264_crit_edge, label %cond.false260

cond.false242.cond.end264_crit_edge:              ; preds = %cond.false242
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end264

cond.false260:                                    ; preds = %cond.false242
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %63 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %63(i32 noundef %.pr) #5
  br label %cond.end264

cond.end264:                                      ; preds = %cond.false260, %cond.false242.cond.end264_crit_edge, %do.body221.cond.end264_crit_edge
  %64 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %port, align 4
  %add266 = add i32 %65, 1
  %and267 = and i32 %add266, 1048575
  %add268 = or i32 %and267, -18874368
  %66 = inttoptr i32 %add268 to ptr
  %67 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %66) #5, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !85
  tail call void @arm_heavy_mb() #5
  %68 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %port, align 4
  %add277 = add i32 %69, 2
  %and278 = and i32 %add277, 1048575
  %add279 = or i32 %and278, -18874368
  %70 = inttoptr i32 %add279 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %70, i8 4) #5, !srcloc !59
  %71 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool282.not = icmp eq i32 %72, 0
  br i1 %tobool282.not, label %cond.end264.cond.end316_crit_edge, label %cond.false294

cond.end264.cond.end316_crit_edge:                ; preds = %cond.end264
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end316

cond.false294:                                    ; preds = %cond.end264
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %73 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %73(i32 noundef %72) #5
  %74 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %74)
  %.pr453 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr453)
  %tobool300.not = icmp eq i32 %.pr453, 0
  br i1 %tobool300.not, label %cond.false294.cond.end316_crit_edge, label %cond.false312

cond.false294.cond.end316_crit_edge:              ; preds = %cond.false294
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end316

cond.false312:                                    ; preds = %cond.false294
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %75 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %75(i32 noundef %.pr453) #5
  br label %cond.end316

cond.end316:                                      ; preds = %cond.false312, %cond.false294.cond.end316_crit_edge, %cond.end264.cond.end316_crit_edge
  %76 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %port, align 4
  %add319 = add i32 %77, 1
  %and320 = and i32 %add319, 1048575
  %add321 = or i32 %and320, -18874368
  %78 = inttoptr i32 %add321 to ptr
  %79 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %78) #5, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !87
  tail call void @arm_heavy_mb() #5
  %80 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %port, align 4
  %add331 = add i32 %81, 2
  %and332 = and i32 %add331, 1048575
  %add333 = or i32 %and332, -18874368
  %82 = inttoptr i32 %add333 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %82, i8 4) #5, !srcloc !59
  %83 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool336.not = icmp eq i32 %84, 0
  br i1 %tobool336.not, label %cond.end316.cond.end352_crit_edge, label %cond.false348

cond.end316.cond.end352_crit_edge:                ; preds = %cond.end316
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end352

cond.false348:                                    ; preds = %cond.end316
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %85 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %85(i32 noundef %84) #5
  br label %cond.end352

cond.end352:                                      ; preds = %cond.false348, %cond.end316.cond.end352_crit_edge
  %86 = lshr i8 %67, 4
  %87 = and i8 %79, -16
  %or451 = or i8 %87, %86
  %or = zext i8 %or451 to i32
  ret i32 %or
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @frpw_write_block(ptr nocapture noundef readonly %pi, ptr nocapture noundef readonly %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mode = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 2
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 0, label %entry.do.body_crit_edge
    i32 1, label %entry.do.body_crit_edge1641
    i32 2, label %entry.do.body_crit_edge1642
    i32 3, label %do.body339
    i32 4, label %do.body647
    i32 5, label %do.body955
  ]

entry.do.body_crit_edge1642:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

entry.do.body_crit_edge1641:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.body:                                          ; preds = %entry.do.body_crit_edge, %entry.do.body_crit_edge1641, %entry.do.body_crit_edge1642
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !88
  tail call void @arm_heavy_mb() #5
  %port = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %3 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %port, align 4
  %add = add i32 %4, 2
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %5 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 4) #5, !srcloc !59
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !89
  tail call void @arm_heavy_mb() #5
  %9 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %port, align 4
  %and17 = and i32 %10, 1048575
  %add18 = or i32 %and17, -18874368
  %11 = inttoptr i32 %add18 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 8) #5, !srcloc !59
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !90
  tail call void @arm_heavy_mb() #5
  %15 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %port, align 4
  %add41 = add i32 %16, 2
  %and42 = and i32 %add41, 1048575
  %add43 = or i32 %and42, -18874368
  %17 = inttoptr i32 %add43 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 12) #5, !srcloc !59
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !91
  tail call void @arm_heavy_mb() #5
  %21 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %port, align 4
  %add66 = add i32 %22, 2
  %and67 = and i32 %add66, 1048575
  %add68 = or i32 %and67, -18874368
  %23 = inttoptr i32 %add68 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %23, i8 14) #5, !srcloc !59
  %24 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool71.not = icmp eq i32 %25, 0
  br i1 %tobool71.not, label %do.body62.do.body87_crit_edge, label %cond.false82

do.body62.do.body87_crit_edge:                    ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body87

cond.false82:                                     ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %26(i32 noundef %25) #5
  br label %do.body87

do.body87:                                        ; preds = %cond.false82, %do.body62.do.body87_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !92
  tail call void @arm_heavy_mb() #5
  %27 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %port, align 4
  %add91 = add i32 %28, 2
  %and92 = and i32 %add91, 1048575
  %add93 = or i32 %and92, -18874368
  %29 = inttoptr i32 %add93 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %29, i8 14) #5, !srcloc !59
  %30 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool96.not = icmp eq i32 %31, 0
  br i1 %tobool96.not, label %do.body87.do.body112_crit_edge, label %cond.false107

do.body87.do.body112_crit_edge:                   ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body112

cond.false107:                                    ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %32(i32 noundef %31) #5
  br label %do.body112

do.body112:                                       ; preds = %cond.false107, %do.body87.do.body112_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !93
  tail call void @arm_heavy_mb() #5
  %33 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %port, align 4
  %add116 = add i32 %34, 2
  %and117 = and i32 %add116, 1048575
  %add118 = or i32 %and117, -18874368
  %35 = inttoptr i32 %add118 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %35, i8 12) #5, !srcloc !59
  %36 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool121.not = icmp eq i32 %37, 0
  br i1 %tobool121.not, label %do.body112.do.body137_crit_edge, label %cond.false132

do.body112.do.body137_crit_edge:                  ; preds = %do.body112
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body137

cond.false132:                                    ; preds = %do.body112
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %38(i32 noundef %37) #5
  br label %do.body137

do.body137:                                       ; preds = %cond.false132, %do.body112.do.body137_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !94
  tail call void @arm_heavy_mb() #5
  %39 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %port, align 4
  %add141 = add i32 %40, 2
  %and142 = and i32 %add141, 1048575
  %add143 = or i32 %and142, -18874368
  %41 = inttoptr i32 %add143 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %41, i8 4) #5, !srcloc !59
  %42 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool146.not = icmp eq i32 %43, 0
  br i1 %tobool146.not, label %do.body137.do.body162_crit_edge, label %cond.false157

do.body137.do.body162_crit_edge:                  ; preds = %do.body137
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body162

cond.false157:                                    ; preds = %do.body137
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %44(i32 noundef %43) #5
  br label %do.body162

do.body162:                                       ; preds = %cond.false157, %do.body137.do.body162_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !95
  tail call void @arm_heavy_mb() #5
  %45 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %port, align 4
  %add166 = add i32 %46, 2
  %and167 = and i32 %add166, 1048575
  %add168 = or i32 %and167, -18874368
  %47 = inttoptr i32 %add168 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %47, i8 4) #5, !srcloc !59
  %48 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool171.not = icmp eq i32 %49, 0
  br i1 %tobool171.not, label %do.body162.do.body187_crit_edge, label %cond.false182

do.body162.do.body187_crit_edge:                  ; preds = %do.body162
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body187

cond.false182:                                    ; preds = %do.body162
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %50(i32 noundef %49) #5
  br label %do.body187

do.body187:                                       ; preds = %cond.false182, %do.body162.do.body187_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !96
  tail call void @arm_heavy_mb() #5
  %51 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %port, align 4
  %add191 = add i32 %52, 2
  %and192 = and i32 %add191, 1048575
  %add193 = or i32 %and192, -18874368
  %53 = inttoptr i32 %add193 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %53, i8 4) #5, !srcloc !59
  %54 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool196.not = icmp eq i32 %55, 0
  br i1 %tobool196.not, label %do.body187.do.body212_crit_edge, label %cond.false207

do.body187.do.body212_crit_edge:                  ; preds = %do.body187
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body212

cond.false207:                                    ; preds = %do.body187
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %56 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %56(i32 noundef %55) #5
  br label %do.body212

do.body212:                                       ; preds = %cond.false207, %do.body187.do.body212_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !97
  tail call void @arm_heavy_mb() #5
  %57 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %port, align 4
  %add216 = add i32 %58, 2
  %and217 = and i32 %add216, 1048575
  %add218 = or i32 %and217, -18874368
  %59 = inttoptr i32 %add218 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %59, i8 5) #5, !srcloc !59
  %60 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool221.not = icmp eq i32 %61, 0
  br i1 %tobool221.not, label %do.body212.cond.end236_crit_edge, label %cond.false232

do.body212.cond.end236_crit_edge:                 ; preds = %do.body212
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end236

cond.false232:                                    ; preds = %do.body212
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %62 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %62(i32 noundef %61) #5
  br label %cond.end236

cond.end236:                                      ; preds = %cond.false232, %do.body212.cond.end236_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp2371635 = icmp sgt i32 %count, 0
  br i1 %cmp2371635, label %cond.end236.do.body238_crit_edge, label %cond.end236.do.body313_crit_edge

cond.end236.do.body313_crit_edge:                 ; preds = %cond.end236
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body313

cond.end236.do.body238_crit_edge:                 ; preds = %cond.end236
  br label %do.body238

do.body238:                                       ; preds = %for.inc.do.body238_crit_edge, %cond.end236.do.body238_crit_edge
  %k.01636 = phi i32 [ %inc, %for.inc.do.body238_crit_edge ], [ 0, %cond.end236.do.body238_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !98
  tail call void @arm_heavy_mb() #5
  %arrayidx = getelementptr i8, ptr %buf, i32 %k.01636
  %63 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx, align 1
  %65 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %port, align 4
  %and243 = and i32 %66, 1048575
  %add244 = or i32 %and243, -18874368
  %67 = inttoptr i32 %add244 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %67, i8 %64) #5, !srcloc !59
  %68 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool247.not = icmp eq i32 %69, 0
  br i1 %tobool247.not, label %do.body238.do.body263_crit_edge, label %cond.false258

do.body238.do.body263_crit_edge:                  ; preds = %do.body238
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body263

cond.false258:                                    ; preds = %do.body238
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %70 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %70(i32 noundef %69) #5
  br label %do.body263

do.body263:                                       ; preds = %cond.false258, %do.body238.do.body263_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !99
  tail call void @arm_heavy_mb() #5
  %71 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %port, align 4
  %add267 = add i32 %72, 2
  %and268 = and i32 %add267, 1048575
  %add269 = or i32 %and268, -18874368
  %73 = inttoptr i32 %add269 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %73, i8 7) #5, !srcloc !59
  %74 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool272.not = icmp eq i32 %75, 0
  br i1 %tobool272.not, label %do.body263.do.body288_crit_edge, label %cond.false283

do.body263.do.body288_crit_edge:                  ; preds = %do.body263
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body288

cond.false283:                                    ; preds = %do.body263
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %76 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %76(i32 noundef %75) #5
  br label %do.body288

do.body288:                                       ; preds = %cond.false283, %do.body263.do.body288_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !100
  tail call void @arm_heavy_mb() #5
  %77 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %port, align 4
  %add292 = add i32 %78, 2
  %and293 = and i32 %add292, 1048575
  %add294 = or i32 %and293, -18874368
  %79 = inttoptr i32 %add294 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %79, i8 5) #5, !srcloc !59
  %80 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool297.not = icmp eq i32 %81, 0
  br i1 %tobool297.not, label %do.body288.for.inc_crit_edge, label %cond.false308

do.body288.for.inc_crit_edge:                     ; preds = %do.body288
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

cond.false308:                                    ; preds = %do.body288
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %82 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %82(i32 noundef %81) #5
  br label %for.inc

for.inc:                                          ; preds = %cond.false308, %do.body288.for.inc_crit_edge
  %inc = add nuw nsw i32 %k.01636, 1
  %exitcond1639.not = icmp eq i32 %inc, %count
  br i1 %exitcond1639.not, label %for.inc.do.body313_crit_edge, label %for.inc.do.body238_crit_edge

for.inc.do.body238_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body238

for.inc.do.body313_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body313

do.body313:                                       ; preds = %for.inc.do.body313_crit_edge, %cond.end236.do.body313_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !101
  tail call void @arm_heavy_mb() #5
  %83 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %port, align 4
  %add317 = add i32 %84, 2
  %and318 = and i32 %add317, 1048575
  %add319 = or i32 %and318, -18874368
  %85 = inttoptr i32 %add319 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %85, i8 4) #5, !srcloc !59
  %86 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool322.not = icmp eq i32 %87, 0
  br i1 %tobool322.not, label %do.body313.sw.epilog_crit_edge, label %do.body313.sw.epilog.sink.split_crit_edge

do.body313.sw.epilog.sink.split_crit_edge:        ; preds = %do.body313
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

do.body313.sw.epilog_crit_edge:                   ; preds = %do.body313
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.body339:                                       ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !102
  tail call void @arm_heavy_mb() #5
  %port342 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %88 = ptrtoint ptr %port342 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %port342, align 4
  %add343 = add i32 %89, 2
  %and344 = and i32 %add343, 1048575
  %add345 = or i32 %and344, -18874368
  %90 = inttoptr i32 %add345 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %90, i8 4) #5, !srcloc !59
  %delay347 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %91 = ptrtoint ptr %delay347 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %delay347, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool348.not = icmp eq i32 %92, 0
  br i1 %tobool348.not, label %do.body339.do.body364_crit_edge, label %cond.false359

do.body339.do.body364_crit_edge:                  ; preds = %do.body339
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body364

cond.false359:                                    ; preds = %do.body339
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %93 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %93(i32 noundef %92) #5
  br label %do.body364

do.body364:                                       ; preds = %cond.false359, %do.body339.do.body364_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !103
  tail call void @arm_heavy_mb() #5
  %94 = ptrtoint ptr %port342 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %port342, align 4
  %and369 = and i32 %95, 1048575
  %add370 = or i32 %and369, -18874368
  %96 = inttoptr i32 %add370 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %96, i8 -56) #5, !srcloc !59
  %97 = ptrtoint ptr %delay347 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %delay347, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %tobool373.not = icmp eq i32 %98, 0
  br i1 %tobool373.not, label %do.body364.do.body389_crit_edge, label %cond.false384

do.body364.do.body389_crit_edge:                  ; preds = %do.body364
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body389

cond.false384:                                    ; preds = %do.body364
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %99 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %99(i32 noundef %98) #5
  br label %do.body389

do.body389:                                       ; preds = %cond.false384, %do.body364.do.body389_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  tail call void @arm_heavy_mb() #5
  %100 = ptrtoint ptr %port342 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %port342, align 4
  %add393 = add i32 %101, 2
  %and394 = and i32 %add393, 1048575
  %add395 = or i32 %and394, -18874368
  %102 = inttoptr i32 %add395 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %102, i8 12) #5, !srcloc !59
  %103 = ptrtoint ptr %delay347 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %delay347, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %tobool398.not = icmp eq i32 %104, 0
  br i1 %tobool398.not, label %do.body389.do.body414_crit_edge, label %cond.false409

do.body389.do.body414_crit_edge:                  ; preds = %do.body389
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body414

cond.false409:                                    ; preds = %do.body389
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %105 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %105(i32 noundef %104) #5
  br label %do.body414

do.body414:                                       ; preds = %cond.false409, %do.body389.do.body414_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  %106 = ptrtoint ptr %port342 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %port342, align 4
  %add418 = add i32 %107, 2
  %and419 = and i32 %add418, 1048575
  %add420 = or i32 %and419, -18874368
  %108 = inttoptr i32 %add420 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %108, i8 14) #5, !srcloc !59
  %109 = ptrtoint ptr %delay347 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %delay347, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %tobool423.not = icmp eq i32 %110, 0
  br i1 %tobool423.not, label %do.body414.do.body439_crit_edge, label %cond.false434

do.body414.do.body439_crit_edge:                  ; preds = %do.body414
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body439

cond.false434:                                    ; preds = %do.body414
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %111 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %111(i32 noundef %110) #5
  br label %do.body439

do.body439:                                       ; preds = %cond.false434, %do.body414.do.body439_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !106
  tail call void @arm_heavy_mb() #5
  %112 = ptrtoint ptr %port342 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %port342, align 4
  %add443 = add i32 %113, 2
  %and444 = and i32 %add443, 1048575
  %add445 = or i32 %and444, -18874368
  %114 = inttoptr i32 %add445 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %114, i8 14) #5, !srcloc !59
  %115 = ptrtoint ptr %delay347 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %delay347, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %tobool448.not = icmp eq i32 %116, 0
  br i1 %tobool448.not, label %do.body439.do.body464_crit_edge, label %cond.false459

do.body439.do.body464_crit_edge:                  ; preds = %do.body439
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body464

cond.false459:                                    ; preds = %do.body439
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %117 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %117(i32 noundef %116) #5
  br label %do.body464

do.body464:                                       ; preds = %cond.false459, %do.body439.do.body464_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !107
  tail call void @arm_heavy_mb() #5
  %118 = ptrtoint ptr %port342 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %port342, align 4
  %add468 = add i32 %119, 2
  %and469 = and i32 %add468, 1048575
  %add470 = or i32 %and469, -18874368
  %120 = inttoptr i32 %add470 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %120, i8 12) #5, !srcloc !59
  %121 = ptrtoint ptr %delay347 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %delay347, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %tobool473.not = icmp eq i32 %122, 0
  br i1 %tobool473.not, label %do.body464.do.body489_crit_edge, label %cond.false484

do.body464.do.body489_crit_edge:                  ; preds = %do.body464
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body489

cond.false484:                                    ; preds = %do.body464
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %123 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %123(i32 noundef %122) #5
  br label %do.body489

do.body489:                                       ; preds = %cond.false484, %do.body464.do.body489_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !108
  tail call void @arm_heavy_mb() #5
  %124 = ptrtoint ptr %port342 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %port342, align 4
  %add493 = add i32 %125, 2
  %and494 = and i32 %add493, 1048575
  %add495 = or i32 %and494, -18874368
  %126 = inttoptr i32 %add495 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %126, i8 4) #5, !srcloc !59
  %127 = ptrtoint ptr %delay347 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %delay347, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %128)
  %tobool498.not = icmp eq i32 %128, 0
  br i1 %tobool498.not, label %do.body489.do.body514_crit_edge, label %cond.false509

do.body489.do.body514_crit_edge:                  ; preds = %do.body489
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body514

cond.false509:                                    ; preds = %do.body489
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %129 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %129(i32 noundef %128) #5
  br label %do.body514

do.body514:                                       ; preds = %cond.false509, %do.body489.do.body514_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !109
  tail call void @arm_heavy_mb() #5
  %130 = ptrtoint ptr %port342 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %port342, align 4
  %add518 = add i32 %131, 2
  %and519 = and i32 %add518, 1048575
  %add520 = or i32 %and519, -18874368
  %132 = inttoptr i32 %add520 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %132, i8 4) #5, !srcloc !59
  %133 = ptrtoint ptr %delay347 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %delay347, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %134)
  %tobool523.not = icmp eq i32 %134, 0
  br i1 %tobool523.not, label %do.body514.do.body539_crit_edge, label %cond.false534

do.body514.do.body539_crit_edge:                  ; preds = %do.body514
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body539

cond.false534:                                    ; preds = %do.body514
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %135 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %135(i32 noundef %134) #5
  br label %do.body539

do.body539:                                       ; preds = %cond.false534, %do.body514.do.body539_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !110
  tail call void @arm_heavy_mb() #5
  %136 = ptrtoint ptr %port342 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %port342, align 4
  %add543 = add i32 %137, 2
  %and544 = and i32 %add543, 1048575
  %add545 = or i32 %and544, -18874368
  %138 = inttoptr i32 %add545 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %138, i8 4) #5, !srcloc !59
  %139 = ptrtoint ptr %delay347 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %delay347, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %140)
  %tobool548.not = icmp eq i32 %140, 0
  br i1 %tobool548.not, label %do.body539.do.body564_crit_edge, label %cond.false559

do.body539.do.body564_crit_edge:                  ; preds = %do.body539
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body564

cond.false559:                                    ; preds = %do.body539
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %141 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %141(i32 noundef %140) #5
  br label %do.body564

do.body564:                                       ; preds = %cond.false559, %do.body539.do.body564_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !111
  tail call void @arm_heavy_mb() #5
  %142 = ptrtoint ptr %port342 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %port342, align 4
  %add568 = add i32 %143, 2
  %and569 = and i32 %add568, 1048575
  %add570 = or i32 %and569, -18874368
  %144 = inttoptr i32 %add570 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %144, i8 5) #5, !srcloc !59
  %145 = ptrtoint ptr %delay347 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %delay347, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %146)
  %tobool573.not = icmp eq i32 %146, 0
  br i1 %tobool573.not, label %do.body564.cond.end588_crit_edge, label %cond.false584

do.body564.cond.end588_crit_edge:                 ; preds = %do.body564
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end588

cond.false584:                                    ; preds = %do.body564
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %147 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %147(i32 noundef %146) #5
  br label %cond.end588

cond.end588:                                      ; preds = %cond.false584, %do.body564.cond.end588_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp5901633 = icmp sgt i32 %count, 0
  br i1 %cmp5901633, label %cond.end588.do.body592_crit_edge, label %cond.end588.do.body621_crit_edge

cond.end588.do.body621_crit_edge:                 ; preds = %cond.end588
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body621

cond.end588.do.body592_crit_edge:                 ; preds = %cond.end588
  br label %do.body592

do.body592:                                       ; preds = %for.inc618.do.body592_crit_edge, %cond.end588.do.body592_crit_edge
  %k.11634 = phi i32 [ %inc619, %for.inc618.do.body592_crit_edge ], [ 0, %cond.end588.do.body592_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !112
  tail call void @arm_heavy_mb() #5
  %arrayidx595 = getelementptr i8, ptr %buf, i32 %k.11634
  %148 = ptrtoint ptr %arrayidx595 to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %arrayidx595, align 1
  %150 = ptrtoint ptr %port342 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %port342, align 4
  %add597 = add i32 %151, 4
  %and598 = and i32 %add597, 1048575
  %add599 = or i32 %and598, -18874368
  %152 = inttoptr i32 %add599 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %152, i8 %149) #5, !srcloc !59
  %153 = ptrtoint ptr %delay347 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %delay347, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %154)
  %tobool602.not = icmp eq i32 %154, 0
  br i1 %tobool602.not, label %do.body592.for.inc618_crit_edge, label %cond.false613

do.body592.for.inc618_crit_edge:                  ; preds = %do.body592
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc618

cond.false613:                                    ; preds = %do.body592
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %155 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %155(i32 noundef %154) #5
  br label %for.inc618

for.inc618:                                       ; preds = %cond.false613, %do.body592.for.inc618_crit_edge
  %inc619 = add nuw nsw i32 %k.11634, 1
  %exitcond1638.not = icmp eq i32 %inc619, %count
  br i1 %exitcond1638.not, label %for.inc618.do.body621_crit_edge, label %for.inc618.do.body592_crit_edge

for.inc618.do.body592_crit_edge:                  ; preds = %for.inc618
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body592

for.inc618.do.body621_crit_edge:                  ; preds = %for.inc618
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body621

do.body621:                                       ; preds = %for.inc618.do.body621_crit_edge, %cond.end588.do.body621_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !113
  tail call void @arm_heavy_mb() #5
  %156 = ptrtoint ptr %port342 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %port342, align 4
  %add625 = add i32 %157, 2
  %and626 = and i32 %add625, 1048575
  %add627 = or i32 %and626, -18874368
  %158 = inttoptr i32 %add627 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %158, i8 4) #5, !srcloc !59
  %159 = ptrtoint ptr %delay347 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %delay347, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %160)
  %tobool630.not = icmp eq i32 %160, 0
  br i1 %tobool630.not, label %do.body621.sw.epilog_crit_edge, label %do.body621.sw.epilog.sink.split_crit_edge

do.body621.sw.epilog.sink.split_crit_edge:        ; preds = %do.body621
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

do.body621.sw.epilog_crit_edge:                   ; preds = %do.body621
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.body647:                                       ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !114
  tail call void @arm_heavy_mb() #5
  %port650 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %161 = ptrtoint ptr %port650 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %port650, align 4
  %add651 = add i32 %162, 2
  %and652 = and i32 %add651, 1048575
  %add653 = or i32 %and652, -18874368
  %163 = inttoptr i32 %add653 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %163, i8 4) #5, !srcloc !59
  %delay655 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %164 = ptrtoint ptr %delay655 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %delay655, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %165)
  %tobool656.not = icmp eq i32 %165, 0
  br i1 %tobool656.not, label %do.body647.do.body672_crit_edge, label %cond.false667

do.body647.do.body672_crit_edge:                  ; preds = %do.body647
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body672

cond.false667:                                    ; preds = %do.body647
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %166 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %166(i32 noundef %165) #5
  br label %do.body672

do.body672:                                       ; preds = %cond.false667, %do.body647.do.body672_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !115
  tail call void @arm_heavy_mb() #5
  %167 = ptrtoint ptr %port650 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %port650, align 4
  %and677 = and i32 %168, 1048575
  %add678 = or i32 %and677, -18874368
  %169 = inttoptr i32 %add678 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %169, i8 -56) #5, !srcloc !59
  %170 = ptrtoint ptr %delay655 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %delay655, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %171)
  %tobool681.not = icmp eq i32 %171, 0
  br i1 %tobool681.not, label %do.body672.do.body697_crit_edge, label %cond.false692

do.body672.do.body697_crit_edge:                  ; preds = %do.body672
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body697

cond.false692:                                    ; preds = %do.body672
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %172 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %172(i32 noundef %171) #5
  br label %do.body697

do.body697:                                       ; preds = %cond.false692, %do.body672.do.body697_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !116
  tail call void @arm_heavy_mb() #5
  %173 = ptrtoint ptr %port650 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %port650, align 4
  %add701 = add i32 %174, 2
  %and702 = and i32 %add701, 1048575
  %add703 = or i32 %and702, -18874368
  %175 = inttoptr i32 %add703 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %175, i8 12) #5, !srcloc !59
  %176 = ptrtoint ptr %delay655 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %delay655, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %177)
  %tobool706.not = icmp eq i32 %177, 0
  br i1 %tobool706.not, label %do.body697.do.body722_crit_edge, label %cond.false717

do.body697.do.body722_crit_edge:                  ; preds = %do.body697
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body722

cond.false717:                                    ; preds = %do.body697
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %178 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %178(i32 noundef %177) #5
  br label %do.body722

do.body722:                                       ; preds = %cond.false717, %do.body697.do.body722_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !117
  tail call void @arm_heavy_mb() #5
  %179 = ptrtoint ptr %port650 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %port650, align 4
  %add726 = add i32 %180, 2
  %and727 = and i32 %add726, 1048575
  %add728 = or i32 %and727, -18874368
  %181 = inttoptr i32 %add728 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %181, i8 14) #5, !srcloc !59
  %182 = ptrtoint ptr %delay655 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %delay655, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %183)
  %tobool731.not = icmp eq i32 %183, 0
  br i1 %tobool731.not, label %do.body722.do.body747_crit_edge, label %cond.false742

do.body722.do.body747_crit_edge:                  ; preds = %do.body722
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body747

cond.false742:                                    ; preds = %do.body722
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %184 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %184(i32 noundef %183) #5
  br label %do.body747

do.body747:                                       ; preds = %cond.false742, %do.body722.do.body747_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !118
  tail call void @arm_heavy_mb() #5
  %185 = ptrtoint ptr %port650 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %port650, align 4
  %add751 = add i32 %186, 2
  %and752 = and i32 %add751, 1048575
  %add753 = or i32 %and752, -18874368
  %187 = inttoptr i32 %add753 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %187, i8 14) #5, !srcloc !59
  %188 = ptrtoint ptr %delay655 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %delay655, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %189)
  %tobool756.not = icmp eq i32 %189, 0
  br i1 %tobool756.not, label %do.body747.do.body772_crit_edge, label %cond.false767

do.body747.do.body772_crit_edge:                  ; preds = %do.body747
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body772

cond.false767:                                    ; preds = %do.body747
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %190 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %190(i32 noundef %189) #5
  br label %do.body772

do.body772:                                       ; preds = %cond.false767, %do.body747.do.body772_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !119
  tail call void @arm_heavy_mb() #5
  %191 = ptrtoint ptr %port650 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %port650, align 4
  %add776 = add i32 %192, 2
  %and777 = and i32 %add776, 1048575
  %add778 = or i32 %and777, -18874368
  %193 = inttoptr i32 %add778 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %193, i8 12) #5, !srcloc !59
  %194 = ptrtoint ptr %delay655 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %delay655, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %195)
  %tobool781.not = icmp eq i32 %195, 0
  br i1 %tobool781.not, label %do.body772.do.body797_crit_edge, label %cond.false792

do.body772.do.body797_crit_edge:                  ; preds = %do.body772
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body797

cond.false792:                                    ; preds = %do.body772
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %196 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %196(i32 noundef %195) #5
  br label %do.body797

do.body797:                                       ; preds = %cond.false792, %do.body772.do.body797_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !120
  tail call void @arm_heavy_mb() #5
  %197 = ptrtoint ptr %port650 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %port650, align 4
  %add801 = add i32 %198, 2
  %and802 = and i32 %add801, 1048575
  %add803 = or i32 %and802, -18874368
  %199 = inttoptr i32 %add803 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %199, i8 4) #5, !srcloc !59
  %200 = ptrtoint ptr %delay655 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %delay655, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %201)
  %tobool806.not = icmp eq i32 %201, 0
  br i1 %tobool806.not, label %do.body797.do.body822_crit_edge, label %cond.false817

do.body797.do.body822_crit_edge:                  ; preds = %do.body797
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body822

cond.false817:                                    ; preds = %do.body797
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %202 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %202(i32 noundef %201) #5
  br label %do.body822

do.body822:                                       ; preds = %cond.false817, %do.body797.do.body822_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !121
  tail call void @arm_heavy_mb() #5
  %203 = ptrtoint ptr %port650 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %port650, align 4
  %add826 = add i32 %204, 2
  %and827 = and i32 %add826, 1048575
  %add828 = or i32 %and827, -18874368
  %205 = inttoptr i32 %add828 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %205, i8 4) #5, !srcloc !59
  %206 = ptrtoint ptr %delay655 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %delay655, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %207)
  %tobool831.not = icmp eq i32 %207, 0
  br i1 %tobool831.not, label %do.body822.do.body847_crit_edge, label %cond.false842

do.body822.do.body847_crit_edge:                  ; preds = %do.body822
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body847

cond.false842:                                    ; preds = %do.body822
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %208 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %208(i32 noundef %207) #5
  br label %do.body847

do.body847:                                       ; preds = %cond.false842, %do.body822.do.body847_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !122
  tail call void @arm_heavy_mb() #5
  %209 = ptrtoint ptr %port650 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %port650, align 4
  %add851 = add i32 %210, 2
  %and852 = and i32 %add851, 1048575
  %add853 = or i32 %and852, -18874368
  %211 = inttoptr i32 %add853 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %211, i8 4) #5, !srcloc !59
  %212 = ptrtoint ptr %delay655 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %delay655, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %213)
  %tobool856.not = icmp eq i32 %213, 0
  br i1 %tobool856.not, label %do.body847.do.body872_crit_edge, label %cond.false867

do.body847.do.body872_crit_edge:                  ; preds = %do.body847
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body872

cond.false867:                                    ; preds = %do.body847
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %214 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %214(i32 noundef %213) #5
  br label %do.body872

do.body872:                                       ; preds = %cond.false867, %do.body847.do.body872_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !123
  tail call void @arm_heavy_mb() #5
  %215 = ptrtoint ptr %port650 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %port650, align 4
  %add876 = add i32 %216, 2
  %and877 = and i32 %add876, 1048575
  %add878 = or i32 %and877, -18874368
  %217 = inttoptr i32 %add878 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %217, i8 5) #5, !srcloc !59
  %218 = ptrtoint ptr %delay655 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %delay655, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %219)
  %tobool881.not = icmp eq i32 %219, 0
  br i1 %tobool881.not, label %do.body872.cond.end896_crit_edge, label %cond.false892

do.body872.cond.end896_crit_edge:                 ; preds = %do.body872
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end896

cond.false892:                                    ; preds = %do.body872
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %220 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %220(i32 noundef %219) #5
  br label %cond.end896

cond.end896:                                      ; preds = %cond.false892, %do.body872.cond.end896_crit_edge
  %div = sdiv i32 %count, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %count)
  %cmp8981631 = icmp sgt i32 %count, 1
  br i1 %cmp8981631, label %cond.end896.do.body900_crit_edge, label %cond.end896.do.body929_crit_edge

cond.end896.do.body929_crit_edge:                 ; preds = %cond.end896
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body929

cond.end896.do.body900_crit_edge:                 ; preds = %cond.end896
  br label %do.body900

do.body900:                                       ; preds = %for.inc926.do.body900_crit_edge, %cond.end896.do.body900_crit_edge
  %k.21632 = phi i32 [ %inc927, %for.inc926.do.body900_crit_edge ], [ 0, %cond.end896.do.body900_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !124
  tail call void @arm_heavy_mb() #5
  %arrayidx903 = getelementptr i16, ptr %buf, i32 %k.21632
  %221 = ptrtoint ptr %arrayidx903 to i32
  call void @__asan_load2_noabort(i32 %221)
  %222 = load i16, ptr %arrayidx903, align 2
  %223 = tail call i16 @llvm.bswap.i16(i16 %222)
  %224 = ptrtoint ptr %port650 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %port650, align 4
  %add905 = add i32 %225, 4
  %and906 = and i32 %add905, 1048575
  %add907 = or i32 %and906, -18874368
  %226 = inttoptr i32 %add907 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %226, i16 %223) #5, !srcloc !125
  %227 = ptrtoint ptr %delay655 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %delay655, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %228)
  %tobool910.not = icmp eq i32 %228, 0
  br i1 %tobool910.not, label %do.body900.for.inc926_crit_edge, label %cond.false921

do.body900.for.inc926_crit_edge:                  ; preds = %do.body900
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc926

cond.false921:                                    ; preds = %do.body900
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %229 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %229(i32 noundef %228) #5
  br label %for.inc926

for.inc926:                                       ; preds = %cond.false921, %do.body900.for.inc926_crit_edge
  %inc927 = add nuw nsw i32 %k.21632, 1
  %exitcond1637.not = icmp eq i32 %inc927, %div
  br i1 %exitcond1637.not, label %for.inc926.do.body929_crit_edge, label %for.inc926.do.body900_crit_edge

for.inc926.do.body900_crit_edge:                  ; preds = %for.inc926
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body900

for.inc926.do.body929_crit_edge:                  ; preds = %for.inc926
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body929

do.body929:                                       ; preds = %for.inc926.do.body929_crit_edge, %cond.end896.do.body929_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !126
  tail call void @arm_heavy_mb() #5
  %230 = ptrtoint ptr %port650 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %port650, align 4
  %add933 = add i32 %231, 2
  %and934 = and i32 %add933, 1048575
  %add935 = or i32 %and934, -18874368
  %232 = inttoptr i32 %add935 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %232, i8 4) #5, !srcloc !59
  %233 = ptrtoint ptr %delay655 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %delay655, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %234)
  %tobool938.not = icmp eq i32 %234, 0
  br i1 %tobool938.not, label %do.body929.sw.epilog_crit_edge, label %do.body929.sw.epilog.sink.split_crit_edge

do.body929.sw.epilog.sink.split_crit_edge:        ; preds = %do.body929
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

do.body929.sw.epilog_crit_edge:                   ; preds = %do.body929
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.body955:                                       ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !127
  tail call void @arm_heavy_mb() #5
  %port958 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %235 = ptrtoint ptr %port958 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %port958, align 4
  %add959 = add i32 %236, 2
  %and960 = and i32 %add959, 1048575
  %add961 = or i32 %and960, -18874368
  %237 = inttoptr i32 %add961 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %237, i8 4) #5, !srcloc !59
  %delay963 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %238 = ptrtoint ptr %delay963 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %delay963, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %239)
  %tobool964.not = icmp eq i32 %239, 0
  br i1 %tobool964.not, label %do.body955.do.body980_crit_edge, label %cond.false975

do.body955.do.body980_crit_edge:                  ; preds = %do.body955
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body980

cond.false975:                                    ; preds = %do.body955
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %240 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %240(i32 noundef %239) #5
  br label %do.body980

do.body980:                                       ; preds = %cond.false975, %do.body955.do.body980_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !128
  tail call void @arm_heavy_mb() #5
  %241 = ptrtoint ptr %port958 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %port958, align 4
  %and985 = and i32 %242, 1048575
  %add986 = or i32 %and985, -18874368
  %243 = inttoptr i32 %add986 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %243, i8 -56) #5, !srcloc !59
  %244 = ptrtoint ptr %delay963 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %delay963, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %245)
  %tobool989.not = icmp eq i32 %245, 0
  br i1 %tobool989.not, label %do.body980.do.body1005_crit_edge, label %cond.false1000

do.body980.do.body1005_crit_edge:                 ; preds = %do.body980
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1005

cond.false1000:                                   ; preds = %do.body980
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %246 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %246(i32 noundef %245) #5
  br label %do.body1005

do.body1005:                                      ; preds = %cond.false1000, %do.body980.do.body1005_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !129
  tail call void @arm_heavy_mb() #5
  %247 = ptrtoint ptr %port958 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %port958, align 4
  %add1009 = add i32 %248, 2
  %and1010 = and i32 %add1009, 1048575
  %add1011 = or i32 %and1010, -18874368
  %249 = inttoptr i32 %add1011 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %249, i8 12) #5, !srcloc !59
  %250 = ptrtoint ptr %delay963 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %delay963, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %251)
  %tobool1014.not = icmp eq i32 %251, 0
  br i1 %tobool1014.not, label %do.body1005.do.body1030_crit_edge, label %cond.false1025

do.body1005.do.body1030_crit_edge:                ; preds = %do.body1005
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1030

cond.false1025:                                   ; preds = %do.body1005
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %252 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %252(i32 noundef %251) #5
  br label %do.body1030

do.body1030:                                      ; preds = %cond.false1025, %do.body1005.do.body1030_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !130
  tail call void @arm_heavy_mb() #5
  %253 = ptrtoint ptr %port958 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %port958, align 4
  %add1034 = add i32 %254, 2
  %and1035 = and i32 %add1034, 1048575
  %add1036 = or i32 %and1035, -18874368
  %255 = inttoptr i32 %add1036 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %255, i8 14) #5, !srcloc !59
  %256 = ptrtoint ptr %delay963 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %delay963, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %257)
  %tobool1039.not = icmp eq i32 %257, 0
  br i1 %tobool1039.not, label %do.body1030.do.body1055_crit_edge, label %cond.false1050

do.body1030.do.body1055_crit_edge:                ; preds = %do.body1030
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1055

cond.false1050:                                   ; preds = %do.body1030
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %258 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %258(i32 noundef %257) #5
  br label %do.body1055

do.body1055:                                      ; preds = %cond.false1050, %do.body1030.do.body1055_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !131
  tail call void @arm_heavy_mb() #5
  %259 = ptrtoint ptr %port958 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %port958, align 4
  %add1059 = add i32 %260, 2
  %and1060 = and i32 %add1059, 1048575
  %add1061 = or i32 %and1060, -18874368
  %261 = inttoptr i32 %add1061 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %261, i8 14) #5, !srcloc !59
  %262 = ptrtoint ptr %delay963 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %delay963, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %263)
  %tobool1064.not = icmp eq i32 %263, 0
  br i1 %tobool1064.not, label %do.body1055.do.body1080_crit_edge, label %cond.false1075

do.body1055.do.body1080_crit_edge:                ; preds = %do.body1055
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1080

cond.false1075:                                   ; preds = %do.body1055
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %264 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %264(i32 noundef %263) #5
  br label %do.body1080

do.body1080:                                      ; preds = %cond.false1075, %do.body1055.do.body1080_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !132
  tail call void @arm_heavy_mb() #5
  %265 = ptrtoint ptr %port958 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %port958, align 4
  %add1084 = add i32 %266, 2
  %and1085 = and i32 %add1084, 1048575
  %add1086 = or i32 %and1085, -18874368
  %267 = inttoptr i32 %add1086 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %267, i8 12) #5, !srcloc !59
  %268 = ptrtoint ptr %delay963 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %delay963, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %269)
  %tobool1089.not = icmp eq i32 %269, 0
  br i1 %tobool1089.not, label %do.body1080.do.body1105_crit_edge, label %cond.false1100

do.body1080.do.body1105_crit_edge:                ; preds = %do.body1080
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1105

cond.false1100:                                   ; preds = %do.body1080
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %270 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %270(i32 noundef %269) #5
  br label %do.body1105

do.body1105:                                      ; preds = %cond.false1100, %do.body1080.do.body1105_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !133
  tail call void @arm_heavy_mb() #5
  %271 = ptrtoint ptr %port958 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %port958, align 4
  %add1109 = add i32 %272, 2
  %and1110 = and i32 %add1109, 1048575
  %add1111 = or i32 %and1110, -18874368
  %273 = inttoptr i32 %add1111 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %273, i8 4) #5, !srcloc !59
  %274 = ptrtoint ptr %delay963 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %delay963, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %275)
  %tobool1114.not = icmp eq i32 %275, 0
  br i1 %tobool1114.not, label %do.body1105.do.body1130_crit_edge, label %cond.false1125

do.body1105.do.body1130_crit_edge:                ; preds = %do.body1105
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1130

cond.false1125:                                   ; preds = %do.body1105
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %276 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %276(i32 noundef %275) #5
  br label %do.body1130

do.body1130:                                      ; preds = %cond.false1125, %do.body1105.do.body1130_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !134
  tail call void @arm_heavy_mb() #5
  %277 = ptrtoint ptr %port958 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %port958, align 4
  %add1134 = add i32 %278, 2
  %and1135 = and i32 %add1134, 1048575
  %add1136 = or i32 %and1135, -18874368
  %279 = inttoptr i32 %add1136 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %279, i8 4) #5, !srcloc !59
  %280 = ptrtoint ptr %delay963 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %delay963, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %281)
  %tobool1139.not = icmp eq i32 %281, 0
  br i1 %tobool1139.not, label %do.body1130.do.body1155_crit_edge, label %cond.false1150

do.body1130.do.body1155_crit_edge:                ; preds = %do.body1130
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1155

cond.false1150:                                   ; preds = %do.body1130
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %282 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %282(i32 noundef %281) #5
  br label %do.body1155

do.body1155:                                      ; preds = %cond.false1150, %do.body1130.do.body1155_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !135
  tail call void @arm_heavy_mb() #5
  %283 = ptrtoint ptr %port958 to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %port958, align 4
  %add1159 = add i32 %284, 2
  %and1160 = and i32 %add1159, 1048575
  %add1161 = or i32 %and1160, -18874368
  %285 = inttoptr i32 %add1161 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %285, i8 4) #5, !srcloc !59
  %286 = ptrtoint ptr %delay963 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %delay963, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %287)
  %tobool1164.not = icmp eq i32 %287, 0
  br i1 %tobool1164.not, label %do.body1155.do.body1180_crit_edge, label %cond.false1175

do.body1155.do.body1180_crit_edge:                ; preds = %do.body1155
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1180

cond.false1175:                                   ; preds = %do.body1155
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %288 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %288(i32 noundef %287) #5
  br label %do.body1180

do.body1180:                                      ; preds = %cond.false1175, %do.body1155.do.body1180_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !136
  tail call void @arm_heavy_mb() #5
  %289 = ptrtoint ptr %port958 to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %port958, align 4
  %add1184 = add i32 %290, 2
  %and1185 = and i32 %add1184, 1048575
  %add1186 = or i32 %and1185, -18874368
  %291 = inttoptr i32 %add1186 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %291, i8 5) #5, !srcloc !59
  %292 = ptrtoint ptr %delay963 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load i32, ptr %delay963, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %293)
  %tobool1189.not = icmp eq i32 %293, 0
  br i1 %tobool1189.not, label %do.body1180.cond.end1204_crit_edge, label %cond.false1200

do.body1180.cond.end1204_crit_edge:               ; preds = %do.body1180
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end1204

cond.false1200:                                   ; preds = %do.body1180
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %294 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %294(i32 noundef %293) #5
  br label %cond.end1204

cond.end1204:                                     ; preds = %cond.false1200, %do.body1180.cond.end1204_crit_edge
  %div1206 = sdiv i32 %count, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %count)
  %cmp12071629 = icmp sgt i32 %count, 3
  br i1 %cmp12071629, label %cond.end1204.do.body1209_crit_edge, label %cond.end1204.do.body1238_crit_edge

cond.end1204.do.body1238_crit_edge:               ; preds = %cond.end1204
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1238

cond.end1204.do.body1209_crit_edge:               ; preds = %cond.end1204
  br label %do.body1209

do.body1209:                                      ; preds = %for.inc1235.do.body1209_crit_edge, %cond.end1204.do.body1209_crit_edge
  %k.31630 = phi i32 [ %inc1236, %for.inc1235.do.body1209_crit_edge ], [ 0, %cond.end1204.do.body1209_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !137
  tail call void @arm_heavy_mb() #5
  %arrayidx1212 = getelementptr i32, ptr %buf, i32 %k.31630
  %295 = ptrtoint ptr %arrayidx1212 to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load i32, ptr %arrayidx1212, align 4
  %297 = tail call i32 @llvm.bswap.i32(i32 %296)
  %298 = ptrtoint ptr %port958 to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %port958, align 4
  %add1214 = add i32 %299, 4
  %and1215 = and i32 %add1214, 1048575
  %add1216 = or i32 %and1215, -18874368
  %300 = inttoptr i32 %add1216 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %300, i32 %297) #5, !srcloc !138
  %301 = ptrtoint ptr %delay963 to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load i32, ptr %delay963, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %302)
  %tobool1219.not = icmp eq i32 %302, 0
  br i1 %tobool1219.not, label %do.body1209.for.inc1235_crit_edge, label %cond.false1230

do.body1209.for.inc1235_crit_edge:                ; preds = %do.body1209
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc1235

cond.false1230:                                   ; preds = %do.body1209
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %303 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %303(i32 noundef %302) #5
  br label %for.inc1235

for.inc1235:                                      ; preds = %cond.false1230, %do.body1209.for.inc1235_crit_edge
  %inc1236 = add nuw nsw i32 %k.31630, 1
  %exitcond.not = icmp eq i32 %inc1236, %div1206
  br i1 %exitcond.not, label %for.inc1235.do.body1238_crit_edge, label %for.inc1235.do.body1209_crit_edge

for.inc1235.do.body1209_crit_edge:                ; preds = %for.inc1235
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1209

for.inc1235.do.body1238_crit_edge:                ; preds = %for.inc1235
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1238

do.body1238:                                      ; preds = %for.inc1235.do.body1238_crit_edge, %cond.end1204.do.body1238_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !139
  tail call void @arm_heavy_mb() #5
  %304 = ptrtoint ptr %port958 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %port958, align 4
  %add1242 = add i32 %305, 2
  %and1243 = and i32 %add1242, 1048575
  %add1244 = or i32 %and1243, -18874368
  %306 = inttoptr i32 %add1244 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %306, i8 4) #5, !srcloc !59
  %307 = ptrtoint ptr %delay963 to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load i32, ptr %delay963, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %308)
  %tobool1247.not = icmp eq i32 %308, 0
  br i1 %tobool1247.not, label %do.body1238.sw.epilog_crit_edge, label %do.body1238.sw.epilog.sink.split_crit_edge

do.body1238.sw.epilog.sink.split_crit_edge:       ; preds = %do.body1238
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

do.body1238.sw.epilog_crit_edge:                  ; preds = %do.body1238
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.epilog.sink.split:                             ; preds = %do.body1238.sw.epilog.sink.split_crit_edge, %do.body929.sw.epilog.sink.split_crit_edge, %do.body621.sw.epilog.sink.split_crit_edge, %do.body313.sw.epilog.sink.split_crit_edge
  %.sink = phi i32 [ %87, %do.body313.sw.epilog.sink.split_crit_edge ], [ %160, %do.body621.sw.epilog.sink.split_crit_edge ], [ %234, %do.body929.sw.epilog.sink.split_crit_edge ], [ %308, %do.body1238.sw.epilog.sink.split_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %309 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %309(i32 noundef %.sink) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %do.body1238.sw.epilog_crit_edge, %do.body929.sw.epilog_crit_edge, %do.body621.sw.epilog_crit_edge, %do.body313.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @frpw_read_block(ptr nocapture noundef readonly %pi, ptr nocapture noundef writeonly %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @frpw_read_block_int(ptr noundef %pi, ptr noundef %buf, i32 noundef %count, i32 noundef 8)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @frpw_connect(ptr nocapture noundef %pi) #2 align 64 {
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
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %5) #5, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
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
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %13) #5, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !141
  %conv40 = zext i8 %14 to i32
  %saved_r2 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 8
  %15 = ptrtoint ptr %saved_r2 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv40, ptr %saved_r2, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !142
  tail call void @arm_heavy_mb() #5
  %16 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %port, align 4
  %add43 = add i32 %17, 2
  %and44 = and i32 %add43, 1048575
  %add45 = or i32 %and44, -18874368
  %18 = inttoptr i32 %add45 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %18, i8 4) #5, !srcloc !59
  %19 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool48.not = icmp eq i32 %20, 0
  br i1 %tobool48.not, label %cond.end31.cond.end64_crit_edge, label %cond.false60

cond.end31.cond.end64_crit_edge:                  ; preds = %cond.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end64

cond.false60:                                     ; preds = %cond.end31
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %21(i32 noundef %20) #5
  br label %cond.end64

cond.end64:                                       ; preds = %cond.false60, %cond.end31.cond.end64_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @frpw_disconnect(ptr nocapture noundef readonly %pi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !143
  tail call void @arm_heavy_mb() #5
  %port = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port, align 4
  %add = add i32 %1, 2
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 4) #5, !srcloc !59
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !144
  tail call void @arm_heavy_mb() #5
  %6 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port, align 4
  %and16 = and i32 %7, 1048575
  %add17 = or i32 %and16, -18874368
  %8 = inttoptr i32 %add17 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 32) #5, !srcloc !59
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !145
  tail call void @arm_heavy_mb() #5
  %12 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port, align 4
  %add39 = add i32 %13, 2
  %and40 = and i32 %add39, 1048575
  %add41 = or i32 %and40, -18874368
  %14 = inttoptr i32 %add41 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 12) #5, !srcloc !59
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !146
  tail call void @arm_heavy_mb() #5
  %18 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %port, align 4
  %add63 = add i32 %19, 2
  %and64 = and i32 %add63, 1048575
  %add65 = or i32 %and64, -18874368
  %20 = inttoptr i32 %add65 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 14) #5, !srcloc !59
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !147
  tail call void @arm_heavy_mb() #5
  %24 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %port, align 4
  %add87 = add i32 %25, 2
  %and88 = and i32 %add87, 1048575
  %add89 = or i32 %and88, -18874368
  %26 = inttoptr i32 %add89 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %26, i8 14) #5, !srcloc !59
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !148
  tail call void @arm_heavy_mb() #5
  %30 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %port, align 4
  %add111 = add i32 %31, 2
  %and112 = and i32 %add111, 1048575
  %add113 = or i32 %and112, -18874368
  %32 = inttoptr i32 %add113 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %32, i8 12) #5, !srcloc !59
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !149
  tail call void @arm_heavy_mb() #5
  %36 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %port, align 4
  %add135 = add i32 %37, 2
  %and136 = and i32 %add135, 1048575
  %add137 = or i32 %and136, -18874368
  %38 = inttoptr i32 %add137 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %38, i8 4) #5, !srcloc !59
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !150
  tail call void @arm_heavy_mb() #5
  %42 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %port, align 4
  %add159 = add i32 %43, 2
  %and160 = and i32 %add159, 1048575
  %add161 = or i32 %and160, -18874368
  %44 = inttoptr i32 %add161 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %44, i8 4) #5, !srcloc !59
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !151
  tail call void @arm_heavy_mb() #5
  %48 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %port, align 4
  %add183 = add i32 %49, 2
  %and184 = and i32 %add183, 1048575
  %add185 = or i32 %and184, -18874368
  %50 = inttoptr i32 %add185 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %50, i8 4) #5, !srcloc !59
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !152
  tail call void @arm_heavy_mb() #5
  %saved_r0 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 7
  %54 = ptrtoint ptr %saved_r0 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %saved_r0, align 4
  %conv = trunc i32 %55 to i8
  %56 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %port, align 4
  %and208 = and i32 %57, 1048575
  %add209 = or i32 %and208, -18874368
  %58 = inttoptr i32 %add209 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %58, i8 %conv) #5, !srcloc !59
  %59 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool212.not = icmp eq i32 %60, 0
  br i1 %tobool212.not, label %do.body204.do.body229_crit_edge, label %cond.false224

do.body204.do.body229_crit_edge:                  ; preds = %do.body204
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body229

cond.false224:                                    ; preds = %do.body204
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %61 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %61(i32 noundef %60) #5
  br label %do.body229

do.body229:                                       ; preds = %cond.false224, %do.body204.do.body229_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !153
  tail call void @arm_heavy_mb() #5
  %saved_r2 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 8
  %62 = ptrtoint ptr %saved_r2 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %saved_r2, align 4
  %conv231 = trunc i32 %63 to i8
  %64 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %port, align 4
  %add233 = add i32 %65, 2
  %and234 = and i32 %add233, 1048575
  %add235 = or i32 %and234, -18874368
  %66 = inttoptr i32 %add235 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %66, i8 %conv231) #5, !srcloc !59
  %67 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool238.not = icmp eq i32 %68, 0
  br i1 %tobool238.not, label %do.body229.cond.end254_crit_edge, label %cond.false250

do.body229.cond.end254_crit_edge:                 ; preds = %do.body229
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end254

cond.false250:                                    ; preds = %do.body229
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %69 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %69(i32 noundef %68) #5
  br label %cond.end254

cond.end254:                                      ; preds = %cond.false250, %do.body229.cond.end254_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @frpw_test_proto(ptr noundef %pi, ptr nocapture noundef %scratch, i32 noundef %verbose) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 10
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private, align 4
  %shr = lshr i32 %1, 1
  %port = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %3)
  %cmp.not = icmp eq i32 %shr, %3
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  %delay.i = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %4 = ptrtoint ptr %delay.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %delay.i, align 4
  store i32 10, ptr %delay.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 2147480) #5
  %7 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %port, align 4
  %and.i = and i32 %8, 1048575
  %add13.i = or i32 %and.i, -18874368
  %9 = inttoptr i32 %add13.i to ptr
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %9) #5, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !154
  %conv.i = zext i8 %10 to i32
  %saved_r0.i = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 7
  %11 = ptrtoint ptr %saved_r0.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv.i, ptr %saved_r0.i, align 4
  %12 = ptrtoint ptr %delay.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %delay.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool17.not.i = icmp eq i32 %13, 0
  br i1 %tobool17.not.i, label %if.then.cond.end33.i_crit_edge, label %cond.false29.i

if.then.cond.end33.i_crit_edge:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end33.i

cond.false29.i:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %14(i32 noundef %13) #5
  br label %cond.end33.i

cond.end33.i:                                     ; preds = %cond.false29.i, %if.then.cond.end33.i_crit_edge
  %15 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %port, align 4
  %add36.i = add i32 %16, 2
  %and37.i = and i32 %add36.i, 1048575
  %add38.i = or i32 %and37.i, -18874368
  %17 = inttoptr i32 %add38.i to ptr
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %17) #5, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !155
  %conv42.i = zext i8 %18 to i32
  %saved_r2.i = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 8
  %19 = ptrtoint ptr %saved_r2.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv42.i, ptr %saved_r2.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !156
  tail call void @arm_heavy_mb() #5
  %20 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %port, align 4
  %add45.i = add i32 %21, 2
  %and46.i = and i32 %add45.i, 1048575
  %add47.i = or i32 %and46.i, -18874368
  %22 = inttoptr i32 %add47.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %22, i8 4) #5, !srcloc !59
  %23 = ptrtoint ptr %delay.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %delay.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool50.not.i = icmp eq i32 %24, 0
  br i1 %tobool50.not.i, label %cond.end33.i.do.body67.i_crit_edge, label %cond.false62.i

cond.end33.i.do.body67.i_crit_edge:               ; preds = %cond.end33.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body67.i

cond.false62.i:                                   ; preds = %cond.end33.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %25(i32 noundef %24) #5
  br label %do.body67.i

do.body67.i:                                      ; preds = %cond.false62.i, %cond.end33.i.do.body67.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !157
  tail call void @arm_heavy_mb() #5
  %26 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %port, align 4
  %and72.i = and i32 %27, 1048575
  %add73.i = or i32 %and72.i, -18874368
  %28 = inttoptr i32 %add73.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %28, i8 4) #5, !srcloc !59
  %29 = ptrtoint ptr %delay.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %delay.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool76.not.i = icmp eq i32 %30, 0
  br i1 %tobool76.not.i, label %do.body67.i.do.body93.i_crit_edge, label %cond.false88.i

do.body67.i.do.body93.i_crit_edge:                ; preds = %do.body67.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body93.i

cond.false88.i:                                   ; preds = %do.body67.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %31(i32 noundef %30) #5
  br label %do.body93.i

do.body93.i:                                      ; preds = %cond.false88.i, %do.body67.i.do.body93.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !158
  tail call void @arm_heavy_mb() #5
  %32 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %port, align 4
  %add97.i = add i32 %33, 2
  %and98.i = and i32 %add97.i, 1048575
  %add99.i = or i32 %and98.i, -18874368
  %34 = inttoptr i32 %add99.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %34, i8 6) #5, !srcloc !59
  %35 = ptrtoint ptr %delay.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %delay.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool102.not.i = icmp eq i32 %36, 0
  br i1 %tobool102.not.i, label %do.body93.i.do.body119.i_crit_edge, label %cond.false114.i

do.body93.i.do.body119.i_crit_edge:               ; preds = %do.body93.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body119.i

cond.false114.i:                                  ; preds = %do.body93.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %37(i32 noundef %36) #5
  br label %do.body119.i

do.body119.i:                                     ; preds = %cond.false114.i, %do.body93.i.do.body119.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !159
  tail call void @arm_heavy_mb() #5
  %38 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %port, align 4
  %add123.i = add i32 %39, 2
  %and124.i = and i32 %add123.i, 1048575
  %add125.i = or i32 %and124.i, -18874368
  %40 = inttoptr i32 %add125.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %40, i8 7) #5, !srcloc !59
  %41 = ptrtoint ptr %delay.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %delay.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool128.not.i = icmp eq i32 %42, 0
  br i1 %tobool128.not.i, label %do.body119.i.cond.end162.i_crit_edge, label %cond.false140.i

do.body119.i.cond.end162.i_crit_edge:             ; preds = %do.body119.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end162.i

cond.false140.i:                                  ; preds = %do.body119.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %43(i32 noundef %42) #5
  %44 = ptrtoint ptr %delay.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %.pr.i = load i32, ptr %delay.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %tobool146.not.i = icmp eq i32 %.pr.i, 0
  br i1 %tobool146.not.i, label %cond.false140.i.cond.end162.i_crit_edge, label %cond.false158.i

cond.false140.i.cond.end162.i_crit_edge:          ; preds = %cond.false140.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end162.i

cond.false158.i:                                  ; preds = %cond.false140.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %45(i32 noundef %.pr.i) #5
  br label %cond.end162.i

cond.end162.i:                                    ; preds = %cond.false158.i, %cond.false140.i.cond.end162.i_crit_edge, %do.body119.i.cond.end162.i_crit_edge
  %46 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %port, align 4
  %add165.i = add i32 %47, 1
  %and166.i = and i32 %add165.i, 1048575
  %add167.i = or i32 %and166.i, -18874368
  %48 = inttoptr i32 %add167.i to ptr
  %49 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %48) #5, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !161
  tail call void @arm_heavy_mb() #5
  %50 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %port, align 4
  %add178.i = add i32 %51, 2
  %and179.i = and i32 %add178.i, 1048575
  %add180.i = or i32 %and179.i, -18874368
  %52 = inttoptr i32 %add180.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %52, i8 4) #5, !srcloc !59
  %53 = ptrtoint ptr %delay.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %delay.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool183.not.i = icmp eq i32 %54, 0
  br i1 %tobool183.not.i, label %cond.end162.i.cond.end217.i_crit_edge, label %cond.false195.i

cond.end162.i.cond.end217.i_crit_edge:            ; preds = %cond.end162.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end217.i

cond.false195.i:                                  ; preds = %cond.end162.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %55 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %55(i32 noundef %54) #5
  %56 = ptrtoint ptr %delay.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %.pr471.i = load i32, ptr %delay.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr471.i)
  %tobool201.not.i = icmp eq i32 %.pr471.i, 0
  br i1 %tobool201.not.i, label %cond.false195.i.cond.end217.i_crit_edge, label %cond.false213.i

cond.false195.i.cond.end217.i_crit_edge:          ; preds = %cond.false195.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end217.i

cond.false213.i:                                  ; preds = %cond.false195.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %57 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %57(i32 noundef %.pr471.i) #5
  br label %cond.end217.i

cond.end217.i:                                    ; preds = %cond.false213.i, %cond.false195.i.cond.end217.i_crit_edge, %cond.end162.i.cond.end217.i_crit_edge
  %58 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %port, align 4
  %add220.i = add i32 %59, 1
  %and221.i = and i32 %add220.i, 1048575
  %add222.i = or i32 %and221.i, -18874368
  %60 = inttoptr i32 %add222.i to ptr
  %61 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %60) #5, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !163
  tail call void @arm_heavy_mb() #5
  %62 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %port, align 4
  %add233.i = add i32 %63, 2
  %and234.i = and i32 %add233.i, 1048575
  %add235.i = or i32 %and234.i, -18874368
  %64 = inttoptr i32 %add235.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %64, i8 12) #5, !srcloc !59
  %65 = ptrtoint ptr %delay.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %delay.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool238.not.i = icmp eq i32 %66, 0
  br i1 %tobool238.not.i, label %cond.end217.i.do.body255.i_crit_edge, label %cond.false250.i

cond.end217.i.do.body255.i_crit_edge:             ; preds = %cond.end217.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body255.i

cond.false250.i:                                  ; preds = %cond.end217.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %67 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %67(i32 noundef %66) #5
  br label %do.body255.i

do.body255.i:                                     ; preds = %cond.false250.i, %cond.end217.i.do.body255.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !164
  tail call void @arm_heavy_mb() #5
  %68 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %port, align 4
  %add259.i = add i32 %69, 2
  %and260.i = and i32 %add259.i, 1048575
  %add261.i = or i32 %and260.i, -18874368
  %70 = inttoptr i32 %add261.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %70, i8 14) #5, !srcloc !59
  %71 = ptrtoint ptr %delay.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %delay.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool264.not.i = icmp eq i32 %72, 0
  br i1 %tobool264.not.i, label %do.body255.i.do.body281.i_crit_edge, label %cond.false276.i

do.body255.i.do.body281.i_crit_edge:              ; preds = %do.body255.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body281.i

cond.false276.i:                                  ; preds = %do.body255.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %73 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %73(i32 noundef %72) #5
  br label %do.body281.i

do.body281.i:                                     ; preds = %cond.false276.i, %do.body255.i.do.body281.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !165
  tail call void @arm_heavy_mb() #5
  %74 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %port, align 4
  %add285.i = add i32 %75, 2
  %and286.i = and i32 %add285.i, 1048575
  %add287.i = or i32 %and286.i, -18874368
  %76 = inttoptr i32 %add287.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %76, i8 4) #5, !srcloc !59
  %77 = ptrtoint ptr %delay.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %delay.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool290.not.i = icmp eq i32 %78, 0
  br i1 %tobool290.not.i, label %do.body281.i.cond.end306.i_crit_edge, label %cond.false302.i

do.body281.i.cond.end306.i_crit_edge:             ; preds = %do.body281.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end306.i

cond.false302.i:                                  ; preds = %do.body281.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %79 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %79(i32 noundef %78) #5
  br label %cond.end306.i

cond.end306.i:                                    ; preds = %cond.false302.i, %do.body281.i.cond.end306.i_crit_edge
  %80 = ptrtoint ptr %delay.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %5, ptr %delay.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !166
  tail call void @arm_heavy_mb() #5
  %81 = ptrtoint ptr %saved_r0.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %saved_r0.i, align 4
  %conv312.i = trunc i32 %82 to i8
  %83 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %port, align 4
  %and315.i = and i32 %84, 1048575
  %add316.i = or i32 %and315.i, -18874368
  %85 = inttoptr i32 %add316.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %85, i8 %conv312.i) #5, !srcloc !59
  %86 = ptrtoint ptr %delay.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %delay.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool319.not.i = icmp eq i32 %87, 0
  br i1 %tobool319.not.i, label %cond.end306.i.do.body336.i_crit_edge, label %cond.false331.i

cond.end306.i.do.body336.i_crit_edge:             ; preds = %cond.end306.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body336.i

cond.false331.i:                                  ; preds = %cond.end306.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %88 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %88(i32 noundef %87) #5
  br label %do.body336.i

do.body336.i:                                     ; preds = %cond.false331.i, %cond.end306.i.do.body336.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !167
  tail call void @arm_heavy_mb() #5
  %89 = ptrtoint ptr %saved_r2.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %saved_r2.i, align 4
  %conv340.i = trunc i32 %90 to i8
  %91 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %port, align 4
  %add342.i = add i32 %92, 2
  %and343.i = and i32 %add342.i, 1048575
  %add344.i = or i32 %and343.i, -18874368
  %93 = inttoptr i32 %add344.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %93, i8 %conv340.i) #5, !srcloc !59
  %94 = ptrtoint ptr %delay.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %delay.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %tobool347.not.i = icmp eq i32 %95, 0
  br i1 %tobool347.not.i, label %do.body336.i.frpw_test_pnp.exit_crit_edge, label %cond.false359.i

do.body336.i.frpw_test_pnp.exit_crit_edge:        ; preds = %do.body336.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %frpw_test_pnp.exit

cond.false359.i:                                  ; preds = %do.body336.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %96 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %96(i32 noundef %95) #5
  br label %frpw_test_pnp.exit

frpw_test_pnp.exit:                               ; preds = %cond.false359.i, %do.body336.i.frpw_test_pnp.exit_crit_edge
  %97 = and i8 %49, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %tobool365.not.not.i = icmp eq i8 %97, 0
  %98 = lshr i8 %61, 6
  %99 = and i8 %98, 1
  %narrow.i = select i1 %tobool365.not.not.i, i8 %99, i8 0
  %100 = zext i8 %narrow.i to i32
  %101 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %port, align 4
  %mul = shl i32 %102, 1
  %add = or i32 %mul, %100
  %103 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %add, ptr %private, align 4
  br label %if.end

if.end:                                           ; preds = %frpw_test_pnp.exit, %entry.if.end_crit_edge
  %104 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %private, align 4
  %rem = and i32 %105, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp4 = icmp eq i32 %rem, 0
  %mode = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 2
  %106 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %mode, align 4
  br i1 %cmp4, label %land.lhs.true, label %land.lhs.true15

land.lhs.true:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %107)
  %cmp5 = icmp sgt i32 %107, 2
  br i1 %cmp5, label %if.then6, label %land.lhs.true.if.end28_crit_edge

land.lhs.true.if.end28_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28

if.then6:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %verbose)
  %tobool.not = icmp eq i32 %verbose, 0
  br i1 %tobool.not, label %if.then6.cleanup_crit_edge, label %do.end

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  %device = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 5
  %108 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %device, align 4
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %109, i32 noundef %107) #8
  br label %cleanup

land.lhs.true15:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %107)
  %cmp17 = icmp eq i32 %107, 2
  br i1 %cmp17, label %if.then18, label %land.lhs.true15.if.end28_crit_edge

land.lhs.true15.if.end28_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28

if.then18:                                        ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %verbose)
  %tobool19.not = icmp eq i32 %verbose, 0
  br i1 %tobool19.not, label %if.then18.cleanup_crit_edge, label %do.end23

if.then18.cleanup_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end23:                                         ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #7
  %device25 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 5
  %110 = ptrtoint ptr %device25 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %device25, align 4
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %111) #8
  br label %cleanup

if.end28:                                         ; preds = %land.lhs.true15.if.end28_crit_edge, %land.lhs.true.if.end28_crit_edge
  tail call void @frpw_connect(ptr noundef %pi)
  tail call void @frpw_write_regr(ptr noundef %pi, i32 noundef 0, i32 noundef 6, i32 noundef 160)
  br label %for.body34

for.body34:                                       ; preds = %for.body34.for.body34_crit_edge, %if.end28
  %e.sroa.0.0 = phi i32 [ 0, %if.end28 ], [ %spec.select130, %for.body34.for.body34_crit_edge ]
  %k.0120 = phi i32 [ 0, %if.end28 ], [ %inc41, %for.body34.for.body34_crit_edge ]
  %xor = xor i32 %k.0120, 170
  tail call void @frpw_write_regr(ptr noundef %pi, i32 noundef 0, i32 noundef 2, i32 noundef %xor)
  %xor35 = xor i32 %k.0120, 85
  tail call void @frpw_write_regr(ptr noundef %pi, i32 noundef 0, i32 noundef 3, i32 noundef %xor35)
  %call36 = tail call i32 @frpw_read_regr(ptr noundef %pi, i32 noundef 0, i32 noundef 2)
  call void @__sanitizer_cov_trace_cmp4(i32 %call36, i32 %xor)
  %cmp38.not = icmp ne i32 %call36, %xor
  %inc = zext i1 %cmp38.not to i32
  %spec.select130 = add i32 %e.sroa.0.0, %inc
  %inc41 = add nuw nsw i32 %k.0120, 1
  %exitcond.not = icmp eq i32 %inc41, 256
  br i1 %exitcond.not, label %for.inc42, label %for.body34.for.body34_crit_edge

for.body34.for.body34_crit_edge:                  ; preds = %for.body34
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body34

for.inc42:                                        ; preds = %for.body34
  tail call void @frpw_write_regr(ptr noundef %pi, i32 noundef 0, i32 noundef 6, i32 noundef 176)
  br label %for.body34.1

for.body34.1:                                     ; preds = %for.body34.1.for.body34.1_crit_edge, %for.inc42
  %e.sroa.7.0 = phi i32 [ 0, %for.inc42 ], [ %spec.select131, %for.body34.1.for.body34.1_crit_edge ]
  %k.0120.1 = phi i32 [ 0, %for.inc42 ], [ %inc41.1, %for.body34.1.for.body34.1_crit_edge ]
  %xor.1 = xor i32 %k.0120.1, 170
  tail call void @frpw_write_regr(ptr noundef %pi, i32 noundef 0, i32 noundef 2, i32 noundef %xor.1)
  %xor35.1 = xor i32 %k.0120.1, 85
  tail call void @frpw_write_regr(ptr noundef %pi, i32 noundef 0, i32 noundef 3, i32 noundef %xor35.1)
  %call36.1 = tail call i32 @frpw_read_regr(ptr noundef %pi, i32 noundef 0, i32 noundef 2)
  call void @__sanitizer_cov_trace_cmp4(i32 %call36.1, i32 %xor.1)
  %cmp38.not.1 = icmp ne i32 %call36.1, %xor.1
  %inc.1 = zext i1 %cmp38.not.1 to i32
  %spec.select131 = add i32 %e.sroa.7.0, %inc.1
  %inc41.1 = add nuw nsw i32 %k.0120.1, 1
  %exitcond.1.not = icmp eq i32 %inc41.1, 256
  br i1 %exitcond.1.not, label %for.inc42.1, label %for.body34.1.for.body34.1_crit_edge

for.body34.1.for.body34.1_crit_edge:              ; preds = %for.body34.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body34.1

for.inc42.1:                                      ; preds = %for.body34.1
  tail call void @frpw_disconnect(ptr noundef %pi)
  tail call void @frpw_connect(ptr noundef %pi)
  tail call fastcc void @frpw_read_block_int(ptr noundef %pi, ptr noundef %scratch, i32 noundef 512, i32 noundef 16)
  br label %for.body47

for.body47:                                       ; preds = %for.body47.for.body47_crit_edge, %for.inc42.1
  %k.1123 = phi i32 [ 0, %for.inc42.1 ], [ %inc55, %for.body47.for.body47_crit_edge ]
  %r.0122 = phi i32 [ 0, %for.inc42.1 ], [ %spec.select, %for.body47.for.body47_crit_edge ]
  %arrayidx48 = getelementptr i8, ptr %scratch, i32 %k.1123
  %112 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %arrayidx48, align 1
  %conv = zext i8 %113 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %k.1123, i32 %conv)
  %cmp49.not = icmp ne i32 %k.1123, %conv
  %inc52 = zext i1 %cmp49.not to i32
  %spec.select = add i32 %r.0122, %inc52
  %inc55 = add nuw nsw i32 %k.1123, 1
  %exitcond125.not = icmp eq i32 %inc55, 128
  br i1 %exitcond125.not, label %for.end56, label %for.body47.for.body47_crit_edge

for.body47.for.body47_crit_edge:                  ; preds = %for.body47
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body47

for.end56:                                        ; preds = %for.body47
  tail call void @frpw_disconnect(ptr noundef %pi)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %verbose)
  %tobool57.not = icmp eq i32 %verbose, 0
  br i1 %tobool57.not, label %for.end56.if.end71_crit_edge, label %do.end61

for.end56.if.end71_crit_edge:                     ; preds = %for.end56
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end71

do.end61:                                         ; preds = %for.end56
  call void @__sanitizer_cov_trace_pc() #7
  %device63 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 5
  %114 = ptrtoint ptr %device63 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %device63, align 4
  %116 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %port, align 4
  %118 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %private, align 4
  %rem66 = and i32 %119, 1
  %mode67 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 2
  %120 = ptrtoint ptr %mode67 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %mode67, align 4
  %call70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %115, i32 noundef %117, i32 noundef %rem66, i32 noundef %121, i32 noundef %spec.select130, i32 noundef %spec.select131, i32 noundef %spec.select) #8
  br label %if.end71

if.end71:                                         ; preds = %do.end61, %for.end56.if.end71_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %tobool72.not = icmp eq i32 %spec.select, 0
  br i1 %tobool72.not, label %lor.rhs, label %if.end71.cleanup_crit_edge

if.end71.cleanup_crit_edge:                       ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.rhs:                                          ; preds = %if.end71
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select130)
  %tobool74.not = icmp eq i32 %spec.select130, 0
  br i1 %tobool74.not, label %lor.rhs.cleanup_crit_edge, label %land.rhs

lor.rhs.cleanup_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.rhs:                                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select131)
  %tobool76 = icmp ne i32 %spec.select131, 0
  %phi.cast = zext i1 %tobool76 to i32
  br label %cleanup

cleanup:                                          ; preds = %land.rhs, %lor.rhs.cleanup_crit_edge, %if.end71.cleanup_crit_edge, %do.end23, %if.then18.cleanup_crit_edge, %do.end, %if.then6.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.end ], [ 1, %if.then6.cleanup_crit_edge ], [ 1, %do.end23 ], [ 1, %if.then18.cleanup_crit_edge ], [ 1, %if.end71.cleanup_crit_edge ], [ 0, %lor.rhs.cleanup_crit_edge ], [ %phi.cast, %land.rhs ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @frpw_log_adapter(ptr nocapture noundef readonly %pi, ptr nocapture noundef readnone %scratch, i32 noundef %verbose) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 5
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %private = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 10
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private, align 4
  %rem = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp = icmp eq i32 %rem, 0
  %cond = select i1 %cmp, ptr @.str.18, ptr @.str.19
  %port = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %4 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %port, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %1, ptr noundef nonnull @.str.17, ptr noundef nonnull %cond, i32 noundef %5) #8
  %mode = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 2
  %6 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mode, align 4
  %arrayidx = getelementptr [6 x ptr], ptr @__const.frpw_log_adapter.mode_string, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %delay = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %10 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %delay, align 4
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %7, ptr noundef %9, i32 noundef %11) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @frpw_read_block_int(ptr nocapture noundef readonly %pi, ptr nocapture noundef writeonly %buf, i32 noundef %count, i32 noundef %regr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mode = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 2
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 0, label %do.body
    i32 1, label %sw.bb357
    i32 2, label %do.body764
    i32 3, label %do.body1116
    i32 4, label %do.body1531
    i32 5, label %do.body1946
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !168
  tail call void @arm_heavy_mb() #5
  %port = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %3 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %port, align 4
  %add = add i32 %4, 2
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %5 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 4) #5, !srcloc !59
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !169
  tail call void @arm_heavy_mb() #5
  %conv = trunc i32 %regr to i8
  %9 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %port, align 4
  %and17 = and i32 %10, 1048575
  %add18 = or i32 %and17, -18874368
  %11 = inttoptr i32 %add18 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 %conv) #5, !srcloc !59
  %12 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool21.not = icmp eq i32 %13, 0
  br i1 %tobool21.not, label %do.body12.do.body38_crit_edge, label %cond.false33

do.body12.do.body38_crit_edge:                    ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body38

cond.false33:                                     ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %14(i32 noundef %13) #5
  br label %do.body38

do.body38:                                        ; preds = %cond.false33, %do.body12.do.body38_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !170
  tail call void @arm_heavy_mb() #5
  %15 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %port, align 4
  %add42 = add i32 %16, 2
  %and43 = and i32 %add42, 1048575
  %add44 = or i32 %and43, -18874368
  %17 = inttoptr i32 %add44 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 12) #5, !srcloc !59
  %18 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool47.not = icmp eq i32 %19, 0
  br i1 %tobool47.not, label %do.body38.do.body64_crit_edge, label %cond.false59

do.body38.do.body64_crit_edge:                    ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body64

cond.false59:                                     ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %20(i32 noundef %19) #5
  br label %do.body64

do.body64:                                        ; preds = %cond.false59, %do.body38.do.body64_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !171
  tail call void @arm_heavy_mb() #5
  %21 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %port, align 4
  %add68 = add i32 %22, 2
  %and69 = and i32 %add68, 1048575
  %add70 = or i32 %and69, -18874368
  %23 = inttoptr i32 %add70 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %23, i8 14) #5, !srcloc !59
  %24 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool73.not = icmp eq i32 %25, 0
  br i1 %tobool73.not, label %do.body64.do.body90_crit_edge, label %cond.false85

do.body64.do.body90_crit_edge:                    ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body90

cond.false85:                                     ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %26(i32 noundef %25) #5
  br label %do.body90

do.body90:                                        ; preds = %cond.false85, %do.body64.do.body90_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !172
  tail call void @arm_heavy_mb() #5
  %27 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %port, align 4
  %add94 = add i32 %28, 2
  %and95 = and i32 %add94, 1048575
  %add96 = or i32 %and95, -18874368
  %29 = inttoptr i32 %add96 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %29, i8 14) #5, !srcloc !59
  %30 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool99.not = icmp eq i32 %31, 0
  br i1 %tobool99.not, label %do.body90.do.body116_crit_edge, label %cond.false111

do.body90.do.body116_crit_edge:                   ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body116

cond.false111:                                    ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %32(i32 noundef %31) #5
  br label %do.body116

do.body116:                                       ; preds = %cond.false111, %do.body90.do.body116_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !173
  tail call void @arm_heavy_mb() #5
  %33 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %port, align 4
  %add120 = add i32 %34, 2
  %and121 = and i32 %add120, 1048575
  %add122 = or i32 %and121, -18874368
  %35 = inttoptr i32 %add122 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %35, i8 12) #5, !srcloc !59
  %36 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool125.not = icmp eq i32 %37, 0
  br i1 %tobool125.not, label %do.body116.do.body142_crit_edge, label %cond.false137

do.body116.do.body142_crit_edge:                  ; preds = %do.body116
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body142

cond.false137:                                    ; preds = %do.body116
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %38(i32 noundef %37) #5
  br label %do.body142

do.body142:                                       ; preds = %cond.false137, %do.body116.do.body142_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !174
  tail call void @arm_heavy_mb() #5
  %39 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %port, align 4
  %add146 = add i32 %40, 2
  %and147 = and i32 %add146, 1048575
  %add148 = or i32 %and147, -18874368
  %41 = inttoptr i32 %add148 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %41, i8 4) #5, !srcloc !59
  %42 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool151.not = icmp eq i32 %43, 0
  br i1 %tobool151.not, label %do.body142.do.body168_crit_edge, label %cond.false163

do.body142.do.body168_crit_edge:                  ; preds = %do.body142
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body168

cond.false163:                                    ; preds = %do.body142
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %44(i32 noundef %43) #5
  br label %do.body168

do.body168:                                       ; preds = %cond.false163, %do.body142.do.body168_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !175
  tail call void @arm_heavy_mb() #5
  %45 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %port, align 4
  %add172 = add i32 %46, 2
  %and173 = and i32 %add172, 1048575
  %add174 = or i32 %and173, -18874368
  %47 = inttoptr i32 %add174 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %47, i8 4) #5, !srcloc !59
  %48 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool177.not = icmp eq i32 %49, 0
  br i1 %tobool177.not, label %do.body168.do.body194_crit_edge, label %cond.false189

do.body168.do.body194_crit_edge:                  ; preds = %do.body168
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body194

cond.false189:                                    ; preds = %do.body168
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %50(i32 noundef %49) #5
  br label %do.body194

do.body194:                                       ; preds = %cond.false189, %do.body168.do.body194_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !176
  tail call void @arm_heavy_mb() #5
  %51 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %port, align 4
  %add198 = add i32 %52, 2
  %and199 = and i32 %add198, 1048575
  %add200 = or i32 %and199, -18874368
  %53 = inttoptr i32 %add200 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %53, i8 4) #5, !srcloc !59
  %54 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool203.not = icmp eq i32 %55, 0
  br i1 %tobool203.not, label %do.body194.cond.end219_crit_edge, label %cond.false215

do.body194.cond.end219_crit_edge:                 ; preds = %do.body194
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end219

cond.false215:                                    ; preds = %do.body194
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %56 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %56(i32 noundef %55) #5
  br label %cond.end219

cond.end219:                                      ; preds = %cond.false215, %do.body194.cond.end219_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp2203115 = icmp sgt i32 %count, 0
  br i1 %cmp2203115, label %cond.end219.do.body222_crit_edge, label %cond.end219.do.body331_crit_edge

cond.end219.do.body331_crit_edge:                 ; preds = %cond.end219
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body331

cond.end219.do.body222_crit_edge:                 ; preds = %cond.end219
  br label %do.body222

do.body222:                                       ; preds = %cond.end317.do.body222_crit_edge, %cond.end219.do.body222_crit_edge
  %k.03116 = phi i32 [ %inc, %cond.end317.do.body222_crit_edge ], [ 0, %cond.end219.do.body222_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !177
  tail call void @arm_heavy_mb() #5
  %57 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %port, align 4
  %add226 = add i32 %58, 2
  %and227 = and i32 %add226, 1048575
  %add228 = or i32 %and227, -18874368
  %59 = inttoptr i32 %add228 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %59, i8 6) #5, !srcloc !59
  %60 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool231.not = icmp eq i32 %61, 0
  br i1 %tobool231.not, label %do.body222.cond.end265_crit_edge, label %cond.false243

do.body222.cond.end265_crit_edge:                 ; preds = %do.body222
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end265

cond.false243:                                    ; preds = %do.body222
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %62 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %62(i32 noundef %61) #5
  %63 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %63)
  %.pr = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool249.not = icmp eq i32 %.pr, 0
  br i1 %tobool249.not, label %cond.false243.cond.end265_crit_edge, label %cond.false261

cond.false243.cond.end265_crit_edge:              ; preds = %cond.false243
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end265

cond.false261:                                    ; preds = %cond.false243
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %64 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %64(i32 noundef %.pr) #5
  br label %cond.end265

cond.end265:                                      ; preds = %cond.false261, %cond.false243.cond.end265_crit_edge, %do.body222.cond.end265_crit_edge
  %65 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %port, align 4
  %add267 = add i32 %66, 1
  %and268 = and i32 %add267, 1048575
  %add269 = or i32 %and268, -18874368
  %67 = inttoptr i32 %add269 to ptr
  %68 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %67) #5, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !178
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !179
  tail call void @arm_heavy_mb() #5
  %69 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %port, align 4
  %add278 = add i32 %70, 2
  %and279 = and i32 %add278, 1048575
  %add280 = or i32 %and279, -18874368
  %71 = inttoptr i32 %add280 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %71, i8 4) #5, !srcloc !59
  %72 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool283.not = icmp eq i32 %73, 0
  br i1 %tobool283.not, label %cond.end265.cond.end317_crit_edge, label %cond.false295

cond.end265.cond.end317_crit_edge:                ; preds = %cond.end265
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end317

cond.false295:                                    ; preds = %cond.end265
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %74 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %74(i32 noundef %73) #5
  %75 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %75)
  %.pr3094 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr3094)
  %tobool301.not = icmp eq i32 %.pr3094, 0
  br i1 %tobool301.not, label %cond.false295.cond.end317_crit_edge, label %cond.false313

cond.false295.cond.end317_crit_edge:              ; preds = %cond.false295
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end317

cond.false313:                                    ; preds = %cond.false295
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %76 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %76(i32 noundef %.pr3094) #5
  br label %cond.end317

cond.end317:                                      ; preds = %cond.false313, %cond.false295.cond.end317_crit_edge, %cond.end265.cond.end317_crit_edge
  %77 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %port, align 4
  %add320 = add i32 %78, 1
  %and321 = and i32 %add320, 1048575
  %add322 = or i32 %and321, -18874368
  %79 = inttoptr i32 %add322 to ptr
  %80 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %79) #5, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !180
  %81 = lshr i8 %68, 4
  %82 = and i8 %80, -16
  %or3092 = or i8 %82, %81
  %arrayidx = getelementptr i8, ptr %buf, i32 %k.03116
  %83 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %or3092, ptr %arrayidx, align 1
  %inc = add nuw nsw i32 %k.03116, 1
  %exitcond3122.not = icmp eq i32 %inc, %count
  br i1 %exitcond3122.not, label %cond.end317.do.body331_crit_edge, label %cond.end317.do.body222_crit_edge

cond.end317.do.body222_crit_edge:                 ; preds = %cond.end317
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body222

cond.end317.do.body331_crit_edge:                 ; preds = %cond.end317
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body331

do.body331:                                       ; preds = %cond.end317.do.body331_crit_edge, %cond.end219.do.body331_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !181
  tail call void @arm_heavy_mb() #5
  %84 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %port, align 4
  %add335 = add i32 %85, 2
  %and336 = and i32 %add335, 1048575
  %add337 = or i32 %and336, -18874368
  %86 = inttoptr i32 %add337 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %86, i8 4) #5, !srcloc !59
  %87 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool340.not = icmp eq i32 %88, 0
  br i1 %tobool340.not, label %do.body331.sw.epilog_crit_edge, label %do.body331.sw.epilog.sink.split_crit_edge

do.body331.sw.epilog.sink.split_crit_edge:        ; preds = %do.body331
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

do.body331.sw.epilog_crit_edge:                   ; preds = %do.body331
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb357:                                         ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !182
  tail call void @arm_heavy_mb() #5
  %port361 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %89 = ptrtoint ptr %port361 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %port361, align 4
  %add362 = add i32 %90, 2
  %and363 = and i32 %add362, 1048575
  %add364 = or i32 %and363, -18874368
  %91 = inttoptr i32 %add364 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %91, i8 4) #5, !srcloc !59
  %delay366 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %92 = ptrtoint ptr %delay366 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %delay366, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool367.not = icmp eq i32 %93, 0
  br i1 %tobool367.not, label %sw.bb357.do.body384_crit_edge, label %cond.false379

sw.bb357.do.body384_crit_edge:                    ; preds = %sw.bb357
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body384

cond.false379:                                    ; preds = %sw.bb357
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %94 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %94(i32 noundef %93) #5
  br label %do.body384

do.body384:                                       ; preds = %cond.false379, %sw.bb357.do.body384_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !183
  tail call void @arm_heavy_mb() #5
  %95 = trunc i32 %regr to i8
  %conv388 = add i8 %95, -64
  %96 = ptrtoint ptr %port361 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %port361, align 4
  %and391 = and i32 %97, 1048575
  %add392 = or i32 %and391, -18874368
  %98 = inttoptr i32 %add392 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %98, i8 %conv388) #5, !srcloc !59
  %99 = ptrtoint ptr %delay366 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %delay366, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %tobool395.not = icmp eq i32 %100, 0
  br i1 %tobool395.not, label %do.body384.do.body412_crit_edge, label %cond.false407

do.body384.do.body412_crit_edge:                  ; preds = %do.body384
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body412

cond.false407:                                    ; preds = %do.body384
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %101 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %101(i32 noundef %100) #5
  br label %do.body412

do.body412:                                       ; preds = %cond.false407, %do.body384.do.body412_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !184
  tail call void @arm_heavy_mb() #5
  %102 = ptrtoint ptr %port361 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %port361, align 4
  %add416 = add i32 %103, 2
  %and417 = and i32 %add416, 1048575
  %add418 = or i32 %and417, -18874368
  %104 = inttoptr i32 %add418 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %104, i8 12) #5, !srcloc !59
  %105 = ptrtoint ptr %delay366 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %delay366, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %tobool421.not = icmp eq i32 %106, 0
  br i1 %tobool421.not, label %do.body412.do.body438_crit_edge, label %cond.false433

do.body412.do.body438_crit_edge:                  ; preds = %do.body412
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body438

cond.false433:                                    ; preds = %do.body412
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %107 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %107(i32 noundef %106) #5
  br label %do.body438

do.body438:                                       ; preds = %cond.false433, %do.body412.do.body438_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !185
  tail call void @arm_heavy_mb() #5
  %108 = ptrtoint ptr %port361 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %port361, align 4
  %add442 = add i32 %109, 2
  %and443 = and i32 %add442, 1048575
  %add444 = or i32 %and443, -18874368
  %110 = inttoptr i32 %add444 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %110, i8 14) #5, !srcloc !59
  %111 = ptrtoint ptr %delay366 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %delay366, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %tobool447.not = icmp eq i32 %112, 0
  br i1 %tobool447.not, label %do.body438.do.body464_crit_edge, label %cond.false459

do.body438.do.body464_crit_edge:                  ; preds = %do.body438
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body464

cond.false459:                                    ; preds = %do.body438
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %113 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %113(i32 noundef %112) #5
  br label %do.body464

do.body464:                                       ; preds = %cond.false459, %do.body438.do.body464_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !186
  tail call void @arm_heavy_mb() #5
  %114 = ptrtoint ptr %port361 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %port361, align 4
  %add468 = add i32 %115, 2
  %and469 = and i32 %add468, 1048575
  %add470 = or i32 %and469, -18874368
  %116 = inttoptr i32 %add470 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %116, i8 14) #5, !srcloc !59
  %117 = ptrtoint ptr %delay366 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %delay366, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %tobool473.not = icmp eq i32 %118, 0
  br i1 %tobool473.not, label %do.body464.do.body490_crit_edge, label %cond.false485

do.body464.do.body490_crit_edge:                  ; preds = %do.body464
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body490

cond.false485:                                    ; preds = %do.body464
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %119 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %119(i32 noundef %118) #5
  br label %do.body490

do.body490:                                       ; preds = %cond.false485, %do.body464.do.body490_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !187
  tail call void @arm_heavy_mb() #5
  %120 = ptrtoint ptr %port361 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %port361, align 4
  %add494 = add i32 %121, 2
  %and495 = and i32 %add494, 1048575
  %add496 = or i32 %and495, -18874368
  %122 = inttoptr i32 %add496 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %122, i8 12) #5, !srcloc !59
  %123 = ptrtoint ptr %delay366 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %delay366, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %tobool499.not = icmp eq i32 %124, 0
  br i1 %tobool499.not, label %do.body490.do.body516_crit_edge, label %cond.false511

do.body490.do.body516_crit_edge:                  ; preds = %do.body490
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body516

cond.false511:                                    ; preds = %do.body490
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %125 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %125(i32 noundef %124) #5
  br label %do.body516

do.body516:                                       ; preds = %cond.false511, %do.body490.do.body516_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !188
  tail call void @arm_heavy_mb() #5
  %126 = ptrtoint ptr %port361 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %port361, align 4
  %add520 = add i32 %127, 2
  %and521 = and i32 %add520, 1048575
  %add522 = or i32 %and521, -18874368
  %128 = inttoptr i32 %add522 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %128, i8 4) #5, !srcloc !59
  %129 = ptrtoint ptr %delay366 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %delay366, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %130)
  %tobool525.not = icmp eq i32 %130, 0
  br i1 %tobool525.not, label %do.body516.do.body542_crit_edge, label %cond.false537

do.body516.do.body542_crit_edge:                  ; preds = %do.body516
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body542

cond.false537:                                    ; preds = %do.body516
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %131 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %131(i32 noundef %130) #5
  br label %do.body542

do.body542:                                       ; preds = %cond.false537, %do.body516.do.body542_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !189
  tail call void @arm_heavy_mb() #5
  %132 = ptrtoint ptr %port361 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %port361, align 4
  %add546 = add i32 %133, 2
  %and547 = and i32 %add546, 1048575
  %add548 = or i32 %and547, -18874368
  %134 = inttoptr i32 %add548 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %134, i8 4) #5, !srcloc !59
  %135 = ptrtoint ptr %delay366 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %delay366, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %136)
  %tobool551.not = icmp eq i32 %136, 0
  br i1 %tobool551.not, label %do.body542.do.body568_crit_edge, label %cond.false563

do.body542.do.body568_crit_edge:                  ; preds = %do.body542
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body568

cond.false563:                                    ; preds = %do.body542
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %137 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %137(i32 noundef %136) #5
  br label %do.body568

do.body568:                                       ; preds = %cond.false563, %do.body542.do.body568_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !190
  tail call void @arm_heavy_mb() #5
  %138 = ptrtoint ptr %port361 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %port361, align 4
  %add572 = add i32 %139, 2
  %and573 = and i32 %add572, 1048575
  %add574 = or i32 %and573, -18874368
  %140 = inttoptr i32 %add574 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %140, i8 4) #5, !srcloc !59
  %141 = ptrtoint ptr %delay366 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %delay366, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %142)
  %tobool577.not = icmp eq i32 %142, 0
  br i1 %tobool577.not, label %do.body568.do.body594_crit_edge, label %cond.false589

do.body568.do.body594_crit_edge:                  ; preds = %do.body568
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body594

cond.false589:                                    ; preds = %do.body568
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %143 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %143(i32 noundef %142) #5
  br label %do.body594

do.body594:                                       ; preds = %cond.false589, %do.body568.do.body594_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !191
  tail call void @arm_heavy_mb() #5
  %144 = ptrtoint ptr %port361 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %port361, align 4
  %and599 = and i32 %145, 1048575
  %add600 = or i32 %and599, -18874368
  %146 = inttoptr i32 %add600 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %146, i8 -1) #5, !srcloc !59
  %147 = ptrtoint ptr %delay366 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %delay366, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %148)
  %tobool603.not = icmp eq i32 %148, 0
  br i1 %tobool603.not, label %do.body594.cond.end619_crit_edge, label %cond.false615

do.body594.cond.end619_crit_edge:                 ; preds = %do.body594
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end619

cond.false615:                                    ; preds = %do.body594
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %149 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %149(i32 noundef %148) #5
  br label %cond.end619

cond.end619:                                      ; preds = %cond.false615, %do.body594.cond.end619_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp6213112 = icmp sgt i32 %count, 0
  br i1 %cmp6213112, label %cond.end619.do.body624_crit_edge, label %cond.end619.do.body685_crit_edge

cond.end619.do.body685_crit_edge:                 ; preds = %cond.end619
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body685

cond.end619.do.body624_crit_edge:                 ; preds = %cond.end619
  br label %do.body624

do.body624:                                       ; preds = %cond.end669.do.body624_crit_edge, %cond.end619.do.body624_crit_edge
  %k.13114 = phi i32 [ %inc683, %cond.end669.do.body624_crit_edge ], [ 0, %cond.end619.do.body624_crit_edge ]
  %ph.03113 = phi i32 [ %sub, %cond.end669.do.body624_crit_edge ], [ 2, %cond.end619.do.body624_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !192
  tail call void @arm_heavy_mb() #5
  %150 = trunc i32 %ph.03113 to i8
  %conv628 = add i8 %150, -92
  %151 = ptrtoint ptr %port361 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %port361, align 4
  %add630 = add i32 %152, 2
  %and631 = and i32 %add630, 1048575
  %add632 = or i32 %and631, -18874368
  %153 = inttoptr i32 %add632 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %153, i8 %conv628) #5, !srcloc !59
  %154 = ptrtoint ptr %delay366 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %delay366, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %155)
  %tobool635.not = icmp eq i32 %155, 0
  br i1 %tobool635.not, label %do.body624.cond.end669_crit_edge, label %cond.false647

do.body624.cond.end669_crit_edge:                 ; preds = %do.body624
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end669

cond.false647:                                    ; preds = %do.body624
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %156 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %156(i32 noundef %155) #5
  %157 = ptrtoint ptr %delay366 to i32
  call void @__asan_load4_noabort(i32 %157)
  %.pr3096 = load i32, ptr %delay366, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr3096)
  %tobool653.not = icmp eq i32 %.pr3096, 0
  br i1 %tobool653.not, label %cond.false647.cond.end669_crit_edge, label %cond.false665

cond.false647.cond.end669_crit_edge:              ; preds = %cond.false647
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end669

cond.false665:                                    ; preds = %cond.false647
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %158 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %158(i32 noundef %.pr3096) #5
  br label %cond.end669

cond.end669:                                      ; preds = %cond.false665, %cond.false647.cond.end669_crit_edge, %do.body624.cond.end669_crit_edge
  %159 = ptrtoint ptr %port361 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %port361, align 4
  %and673 = and i32 %160, 1048575
  %add674 = or i32 %and673, -18874368
  %161 = inttoptr i32 %add674 to ptr
  %162 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %161) #5, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !193
  %arrayidx681 = getelementptr i8, ptr %buf, i32 %k.13114
  %163 = ptrtoint ptr %arrayidx681 to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 %162, ptr %arrayidx681, align 1
  %sub = sub i32 2, %ph.03113
  %inc683 = add nuw nsw i32 %k.13114, 1
  %exitcond3121.not = icmp eq i32 %inc683, %count
  br i1 %exitcond3121.not, label %cond.end669.do.body685_crit_edge, label %cond.end669.do.body624_crit_edge

cond.end669.do.body624_crit_edge:                 ; preds = %cond.end669
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body624

cond.end669.do.body685_crit_edge:                 ; preds = %cond.end669
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body685

do.body685:                                       ; preds = %cond.end669.do.body685_crit_edge, %cond.end619.do.body685_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !194
  tail call void @arm_heavy_mb() #5
  %164 = ptrtoint ptr %port361 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %port361, align 4
  %add689 = add i32 %165, 2
  %and690 = and i32 %add689, 1048575
  %add691 = or i32 %and690, -18874368
  %166 = inttoptr i32 %add691 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %166, i8 -84) #5, !srcloc !59
  %167 = ptrtoint ptr %delay366 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %delay366, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %168)
  %tobool694.not = icmp eq i32 %168, 0
  br i1 %tobool694.not, label %do.body685.do.body711_crit_edge, label %cond.false706

do.body685.do.body711_crit_edge:                  ; preds = %do.body685
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body711

cond.false706:                                    ; preds = %do.body685
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %169 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %169(i32 noundef %168) #5
  br label %do.body711

do.body711:                                       ; preds = %cond.false706, %do.body685.do.body711_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !195
  tail call void @arm_heavy_mb() #5
  %170 = ptrtoint ptr %port361 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %port361, align 4
  %add715 = add i32 %171, 2
  %and716 = and i32 %add715, 1048575
  %add717 = or i32 %and716, -18874368
  %172 = inttoptr i32 %add717 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %172, i8 -92) #5, !srcloc !59
  %173 = ptrtoint ptr %delay366 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %delay366, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %174)
  %tobool720.not = icmp eq i32 %174, 0
  br i1 %tobool720.not, label %do.body711.do.body737_crit_edge, label %cond.false732

do.body711.do.body737_crit_edge:                  ; preds = %do.body711
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body737

cond.false732:                                    ; preds = %do.body711
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %175 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %175(i32 noundef %174) #5
  br label %do.body737

do.body737:                                       ; preds = %cond.false732, %do.body711.do.body737_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !196
  tail call void @arm_heavy_mb() #5
  %176 = ptrtoint ptr %port361 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %port361, align 4
  %add741 = add i32 %177, 2
  %and742 = and i32 %add741, 1048575
  %add743 = or i32 %and742, -18874368
  %178 = inttoptr i32 %add743 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %178, i8 4) #5, !srcloc !59
  %179 = ptrtoint ptr %delay366 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %delay366, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %180)
  %tobool746.not = icmp eq i32 %180, 0
  br i1 %tobool746.not, label %do.body737.sw.epilog_crit_edge, label %do.body737.sw.epilog.sink.split_crit_edge

do.body737.sw.epilog.sink.split_crit_edge:        ; preds = %do.body737
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

do.body737.sw.epilog_crit_edge:                   ; preds = %do.body737
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.body764:                                       ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !197
  tail call void @arm_heavy_mb() #5
  %port767 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %181 = ptrtoint ptr %port767 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %port767, align 4
  %add768 = add i32 %182, 2
  %and769 = and i32 %add768, 1048575
  %add770 = or i32 %and769, -18874368
  %183 = inttoptr i32 %add770 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %183, i8 4) #5, !srcloc !59
  %delay772 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %184 = ptrtoint ptr %delay772 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %delay772, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %185)
  %tobool773.not = icmp eq i32 %185, 0
  br i1 %tobool773.not, label %do.body764.do.body790_crit_edge, label %cond.false785

do.body764.do.body790_crit_edge:                  ; preds = %do.body764
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body790

cond.false785:                                    ; preds = %do.body764
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %186 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %186(i32 noundef %185) #5
  br label %do.body790

do.body790:                                       ; preds = %cond.false785, %do.body764.do.body790_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !198
  tail call void @arm_heavy_mb() #5
  %187 = trunc i32 %regr to i8
  %conv794 = xor i8 %187, -128
  %188 = ptrtoint ptr %port767 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %port767, align 4
  %and797 = and i32 %189, 1048575
  %add798 = or i32 %and797, -18874368
  %190 = inttoptr i32 %add798 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %190, i8 %conv794) #5, !srcloc !59
  %191 = ptrtoint ptr %delay772 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %delay772, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %192)
  %tobool801.not = icmp eq i32 %192, 0
  br i1 %tobool801.not, label %do.body790.do.body818_crit_edge, label %cond.false813

do.body790.do.body818_crit_edge:                  ; preds = %do.body790
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body818

cond.false813:                                    ; preds = %do.body790
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %193 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %193(i32 noundef %192) #5
  br label %do.body818

do.body818:                                       ; preds = %cond.false813, %do.body790.do.body818_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !199
  tail call void @arm_heavy_mb() #5
  %194 = ptrtoint ptr %port767 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %port767, align 4
  %add822 = add i32 %195, 2
  %and823 = and i32 %add822, 1048575
  %add824 = or i32 %and823, -18874368
  %196 = inttoptr i32 %add824 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %196, i8 12) #5, !srcloc !59
  %197 = ptrtoint ptr %delay772 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %delay772, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %198)
  %tobool827.not = icmp eq i32 %198, 0
  br i1 %tobool827.not, label %do.body818.do.body844_crit_edge, label %cond.false839

do.body818.do.body844_crit_edge:                  ; preds = %do.body818
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body844

cond.false839:                                    ; preds = %do.body818
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %199 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %199(i32 noundef %198) #5
  br label %do.body844

do.body844:                                       ; preds = %cond.false839, %do.body818.do.body844_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !200
  tail call void @arm_heavy_mb() #5
  %200 = ptrtoint ptr %port767 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %port767, align 4
  %add848 = add i32 %201, 2
  %and849 = and i32 %add848, 1048575
  %add850 = or i32 %and849, -18874368
  %202 = inttoptr i32 %add850 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %202, i8 14) #5, !srcloc !59
  %203 = ptrtoint ptr %delay772 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %delay772, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %204)
  %tobool853.not = icmp eq i32 %204, 0
  br i1 %tobool853.not, label %do.body844.do.body870_crit_edge, label %cond.false865

do.body844.do.body870_crit_edge:                  ; preds = %do.body844
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body870

cond.false865:                                    ; preds = %do.body844
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %205 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %205(i32 noundef %204) #5
  br label %do.body870

do.body870:                                       ; preds = %cond.false865, %do.body844.do.body870_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !201
  tail call void @arm_heavy_mb() #5
  %206 = ptrtoint ptr %port767 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %port767, align 4
  %add874 = add i32 %207, 2
  %and875 = and i32 %add874, 1048575
  %add876 = or i32 %and875, -18874368
  %208 = inttoptr i32 %add876 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %208, i8 14) #5, !srcloc !59
  %209 = ptrtoint ptr %delay772 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %delay772, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %210)
  %tobool879.not = icmp eq i32 %210, 0
  br i1 %tobool879.not, label %do.body870.do.body896_crit_edge, label %cond.false891

do.body870.do.body896_crit_edge:                  ; preds = %do.body870
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body896

cond.false891:                                    ; preds = %do.body870
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %211 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %211(i32 noundef %210) #5
  br label %do.body896

do.body896:                                       ; preds = %cond.false891, %do.body870.do.body896_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !202
  tail call void @arm_heavy_mb() #5
  %212 = ptrtoint ptr %port767 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %port767, align 4
  %add900 = add i32 %213, 2
  %and901 = and i32 %add900, 1048575
  %add902 = or i32 %and901, -18874368
  %214 = inttoptr i32 %add902 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %214, i8 12) #5, !srcloc !59
  %215 = ptrtoint ptr %delay772 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %delay772, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %216)
  %tobool905.not = icmp eq i32 %216, 0
  br i1 %tobool905.not, label %do.body896.do.body922_crit_edge, label %cond.false917

do.body896.do.body922_crit_edge:                  ; preds = %do.body896
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body922

cond.false917:                                    ; preds = %do.body896
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %217 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %217(i32 noundef %216) #5
  br label %do.body922

do.body922:                                       ; preds = %cond.false917, %do.body896.do.body922_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !203
  tail call void @arm_heavy_mb() #5
  %218 = ptrtoint ptr %port767 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %port767, align 4
  %add926 = add i32 %219, 2
  %and927 = and i32 %add926, 1048575
  %add928 = or i32 %and927, -18874368
  %220 = inttoptr i32 %add928 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %220, i8 4) #5, !srcloc !59
  %221 = ptrtoint ptr %delay772 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %delay772, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %222)
  %tobool931.not = icmp eq i32 %222, 0
  br i1 %tobool931.not, label %do.body922.do.body948_crit_edge, label %cond.false943

do.body922.do.body948_crit_edge:                  ; preds = %do.body922
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body948

cond.false943:                                    ; preds = %do.body922
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %223 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %223(i32 noundef %222) #5
  br label %do.body948

do.body948:                                       ; preds = %cond.false943, %do.body922.do.body948_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !204
  tail call void @arm_heavy_mb() #5
  %224 = ptrtoint ptr %port767 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %port767, align 4
  %add952 = add i32 %225, 2
  %and953 = and i32 %add952, 1048575
  %add954 = or i32 %and953, -18874368
  %226 = inttoptr i32 %add954 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %226, i8 4) #5, !srcloc !59
  %227 = ptrtoint ptr %delay772 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %delay772, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %228)
  %tobool957.not = icmp eq i32 %228, 0
  br i1 %tobool957.not, label %do.body948.do.body974_crit_edge, label %cond.false969

do.body948.do.body974_crit_edge:                  ; preds = %do.body948
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body974

cond.false969:                                    ; preds = %do.body948
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %229 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %229(i32 noundef %228) #5
  br label %do.body974

do.body974:                                       ; preds = %cond.false969, %do.body948.do.body974_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !205
  tail call void @arm_heavy_mb() #5
  %230 = ptrtoint ptr %port767 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %port767, align 4
  %add978 = add i32 %231, 2
  %and979 = and i32 %add978, 1048575
  %add980 = or i32 %and979, -18874368
  %232 = inttoptr i32 %add980 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %232, i8 4) #5, !srcloc !59
  %233 = ptrtoint ptr %delay772 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %delay772, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %234)
  %tobool983.not = icmp eq i32 %234, 0
  br i1 %tobool983.not, label %do.body974.cond.end999_crit_edge, label %cond.false995

do.body974.cond.end999_crit_edge:                 ; preds = %do.body974
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end999

cond.false995:                                    ; preds = %do.body974
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %235 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %235(i32 noundef %234) #5
  br label %cond.end999

cond.end999:                                      ; preds = %cond.false995, %do.body974.cond.end999_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp10013110 = icmp sgt i32 %count, 0
  br i1 %cmp10013110, label %cond.end999.for.body1003_crit_edge, label %cond.end999.do.body1037_crit_edge

cond.end999.do.body1037_crit_edge:                ; preds = %cond.end999
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1037

cond.end999.for.body1003_crit_edge:               ; preds = %cond.end999
  br label %for.body1003

for.body1003:                                     ; preds = %cond.end1021.for.body1003_crit_edge, %cond.end999.for.body1003_crit_edge
  %k.23111 = phi i32 [ %inc1035, %cond.end1021.for.body1003_crit_edge ], [ 0, %cond.end999.for.body1003_crit_edge ]
  %236 = ptrtoint ptr %delay772 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %delay772, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %237)
  %tobool1005.not = icmp eq i32 %237, 0
  br i1 %tobool1005.not, label %for.body1003.cond.end1021_crit_edge, label %cond.false1017

for.body1003.cond.end1021_crit_edge:              ; preds = %for.body1003
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end1021

cond.false1017:                                   ; preds = %for.body1003
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %238 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %238(i32 noundef %237) #5
  br label %cond.end1021

cond.end1021:                                     ; preds = %cond.false1017, %for.body1003.cond.end1021_crit_edge
  %239 = ptrtoint ptr %port767 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %port767, align 4
  %add1024 = add i32 %240, 4
  %and1025 = and i32 %add1024, 1048575
  %add1026 = or i32 %and1025, -18874368
  %241 = inttoptr i32 %add1026 to ptr
  %242 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %241) #5, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !206
  %arrayidx1033 = getelementptr i8, ptr %buf, i32 %k.23111
  %243 = ptrtoint ptr %arrayidx1033 to i32
  call void @__asan_store1_noabort(i32 %243)
  store i8 %242, ptr %arrayidx1033, align 1
  %inc1035 = add nuw nsw i32 %k.23111, 1
  %exitcond3120.not = icmp eq i32 %inc1035, %count
  br i1 %exitcond3120.not, label %cond.end1021.do.body1037_crit_edge, label %cond.end1021.for.body1003_crit_edge

cond.end1021.for.body1003_crit_edge:              ; preds = %cond.end1021
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body1003

cond.end1021.do.body1037_crit_edge:               ; preds = %cond.end1021
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1037

do.body1037:                                      ; preds = %cond.end1021.do.body1037_crit_edge, %cond.end999.do.body1037_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !207
  tail call void @arm_heavy_mb() #5
  %244 = ptrtoint ptr %port767 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %port767, align 4
  %add1041 = add i32 %245, 2
  %and1042 = and i32 %add1041, 1048575
  %add1043 = or i32 %and1042, -18874368
  %246 = inttoptr i32 %add1043 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %246, i8 -84) #5, !srcloc !59
  %247 = ptrtoint ptr %delay772 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %delay772, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %248)
  %tobool1046.not = icmp eq i32 %248, 0
  br i1 %tobool1046.not, label %do.body1037.do.body1063_crit_edge, label %cond.false1058

do.body1037.do.body1063_crit_edge:                ; preds = %do.body1037
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1063

cond.false1058:                                   ; preds = %do.body1037
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %249 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %249(i32 noundef %248) #5
  br label %do.body1063

do.body1063:                                      ; preds = %cond.false1058, %do.body1037.do.body1063_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !208
  tail call void @arm_heavy_mb() #5
  %250 = ptrtoint ptr %port767 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %port767, align 4
  %add1067 = add i32 %251, 2
  %and1068 = and i32 %add1067, 1048575
  %add1069 = or i32 %and1068, -18874368
  %252 = inttoptr i32 %add1069 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %252, i8 -92) #5, !srcloc !59
  %253 = ptrtoint ptr %delay772 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %delay772, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %254)
  %tobool1072.not = icmp eq i32 %254, 0
  br i1 %tobool1072.not, label %do.body1063.do.body1089_crit_edge, label %cond.false1084

do.body1063.do.body1089_crit_edge:                ; preds = %do.body1063
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1089

cond.false1084:                                   ; preds = %do.body1063
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %255 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %255(i32 noundef %254) #5
  br label %do.body1089

do.body1089:                                      ; preds = %cond.false1084, %do.body1063.do.body1089_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !209
  tail call void @arm_heavy_mb() #5
  %256 = ptrtoint ptr %port767 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %port767, align 4
  %add1093 = add i32 %257, 2
  %and1094 = and i32 %add1093, 1048575
  %add1095 = or i32 %and1094, -18874368
  %258 = inttoptr i32 %add1095 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %258, i8 4) #5, !srcloc !59
  %259 = ptrtoint ptr %delay772 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %delay772, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %260)
  %tobool1098.not = icmp eq i32 %260, 0
  br i1 %tobool1098.not, label %do.body1089.sw.epilog_crit_edge, label %do.body1089.sw.epilog.sink.split_crit_edge

do.body1089.sw.epilog.sink.split_crit_edge:       ; preds = %do.body1089
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

do.body1089.sw.epilog_crit_edge:                  ; preds = %do.body1089
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.body1116:                                      ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !210
  tail call void @arm_heavy_mb() #5
  %port1119 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %261 = ptrtoint ptr %port1119 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %port1119, align 4
  %add1120 = add i32 %262, 2
  %and1121 = and i32 %add1120, 1048575
  %add1122 = or i32 %and1121, -18874368
  %263 = inttoptr i32 %add1122 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %263, i8 4) #5, !srcloc !59
  %delay1124 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %264 = ptrtoint ptr %delay1124 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %delay1124, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %265)
  %tobool1125.not = icmp eq i32 %265, 0
  br i1 %tobool1125.not, label %do.body1116.do.body1142_crit_edge, label %cond.false1137

do.body1116.do.body1142_crit_edge:                ; preds = %do.body1116
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1142

cond.false1137:                                   ; preds = %do.body1116
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %266 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %266(i32 noundef %265) #5
  br label %do.body1142

do.body1142:                                      ; preds = %cond.false1137, %do.body1116.do.body1142_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !211
  tail call void @arm_heavy_mb() #5
  %267 = trunc i32 %regr to i8
  %conv1146 = xor i8 %267, -128
  %268 = ptrtoint ptr %port1119 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %port1119, align 4
  %and1149 = and i32 %269, 1048575
  %add1150 = or i32 %and1149, -18874368
  %270 = inttoptr i32 %add1150 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %270, i8 %conv1146) #5, !srcloc !59
  %271 = ptrtoint ptr %delay1124 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %delay1124, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %272)
  %tobool1153.not = icmp eq i32 %272, 0
  br i1 %tobool1153.not, label %do.body1142.do.body1170_crit_edge, label %cond.false1165

do.body1142.do.body1170_crit_edge:                ; preds = %do.body1142
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1170

cond.false1165:                                   ; preds = %do.body1142
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %273 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %273(i32 noundef %272) #5
  br label %do.body1170

do.body1170:                                      ; preds = %cond.false1165, %do.body1142.do.body1170_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !212
  tail call void @arm_heavy_mb() #5
  %274 = ptrtoint ptr %port1119 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %port1119, align 4
  %add1174 = add i32 %275, 2
  %and1175 = and i32 %add1174, 1048575
  %add1176 = or i32 %and1175, -18874368
  %276 = inttoptr i32 %add1176 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %276, i8 12) #5, !srcloc !59
  %277 = ptrtoint ptr %delay1124 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %delay1124, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %278)
  %tobool1179.not = icmp eq i32 %278, 0
  br i1 %tobool1179.not, label %do.body1170.do.body1196_crit_edge, label %cond.false1191

do.body1170.do.body1196_crit_edge:                ; preds = %do.body1170
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1196

cond.false1191:                                   ; preds = %do.body1170
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %279 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %279(i32 noundef %278) #5
  br label %do.body1196

do.body1196:                                      ; preds = %cond.false1191, %do.body1170.do.body1196_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !213
  tail call void @arm_heavy_mb() #5
  %280 = ptrtoint ptr %port1119 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %port1119, align 4
  %add1200 = add i32 %281, 2
  %and1201 = and i32 %add1200, 1048575
  %add1202 = or i32 %and1201, -18874368
  %282 = inttoptr i32 %add1202 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %282, i8 14) #5, !srcloc !59
  %283 = ptrtoint ptr %delay1124 to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %delay1124, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %284)
  %tobool1205.not = icmp eq i32 %284, 0
  br i1 %tobool1205.not, label %do.body1196.do.body1222_crit_edge, label %cond.false1217

do.body1196.do.body1222_crit_edge:                ; preds = %do.body1196
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1222

cond.false1217:                                   ; preds = %do.body1196
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %285 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %285(i32 noundef %284) #5
  br label %do.body1222

do.body1222:                                      ; preds = %cond.false1217, %do.body1196.do.body1222_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !214
  tail call void @arm_heavy_mb() #5
  %286 = ptrtoint ptr %port1119 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %port1119, align 4
  %add1226 = add i32 %287, 2
  %and1227 = and i32 %add1226, 1048575
  %add1228 = or i32 %and1227, -18874368
  %288 = inttoptr i32 %add1228 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %288, i8 14) #5, !srcloc !59
  %289 = ptrtoint ptr %delay1124 to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %delay1124, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %290)
  %tobool1231.not = icmp eq i32 %290, 0
  br i1 %tobool1231.not, label %do.body1222.do.body1248_crit_edge, label %cond.false1243

do.body1222.do.body1248_crit_edge:                ; preds = %do.body1222
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1248

cond.false1243:                                   ; preds = %do.body1222
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %291 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %291(i32 noundef %290) #5
  br label %do.body1248

do.body1248:                                      ; preds = %cond.false1243, %do.body1222.do.body1248_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !215
  tail call void @arm_heavy_mb() #5
  %292 = ptrtoint ptr %port1119 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load i32, ptr %port1119, align 4
  %add1252 = add i32 %293, 2
  %and1253 = and i32 %add1252, 1048575
  %add1254 = or i32 %and1253, -18874368
  %294 = inttoptr i32 %add1254 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %294, i8 12) #5, !srcloc !59
  %295 = ptrtoint ptr %delay1124 to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load i32, ptr %delay1124, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %296)
  %tobool1257.not = icmp eq i32 %296, 0
  br i1 %tobool1257.not, label %do.body1248.do.body1274_crit_edge, label %cond.false1269

do.body1248.do.body1274_crit_edge:                ; preds = %do.body1248
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1274

cond.false1269:                                   ; preds = %do.body1248
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %297 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %297(i32 noundef %296) #5
  br label %do.body1274

do.body1274:                                      ; preds = %cond.false1269, %do.body1248.do.body1274_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !216
  tail call void @arm_heavy_mb() #5
  %298 = ptrtoint ptr %port1119 to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %port1119, align 4
  %add1278 = add i32 %299, 2
  %and1279 = and i32 %add1278, 1048575
  %add1280 = or i32 %and1279, -18874368
  %300 = inttoptr i32 %add1280 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %300, i8 4) #5, !srcloc !59
  %301 = ptrtoint ptr %delay1124 to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load i32, ptr %delay1124, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %302)
  %tobool1283.not = icmp eq i32 %302, 0
  br i1 %tobool1283.not, label %do.body1274.do.body1300_crit_edge, label %cond.false1295

do.body1274.do.body1300_crit_edge:                ; preds = %do.body1274
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1300

cond.false1295:                                   ; preds = %do.body1274
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %303 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %303(i32 noundef %302) #5
  br label %do.body1300

do.body1300:                                      ; preds = %cond.false1295, %do.body1274.do.body1300_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !217
  tail call void @arm_heavy_mb() #5
  %304 = ptrtoint ptr %port1119 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %port1119, align 4
  %add1304 = add i32 %305, 2
  %and1305 = and i32 %add1304, 1048575
  %add1306 = or i32 %and1305, -18874368
  %306 = inttoptr i32 %add1306 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %306, i8 4) #5, !srcloc !59
  %307 = ptrtoint ptr %delay1124 to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load i32, ptr %delay1124, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %308)
  %tobool1309.not = icmp eq i32 %308, 0
  br i1 %tobool1309.not, label %do.body1300.do.body1326_crit_edge, label %cond.false1321

do.body1300.do.body1326_crit_edge:                ; preds = %do.body1300
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1326

cond.false1321:                                   ; preds = %do.body1300
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %309 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %309(i32 noundef %308) #5
  br label %do.body1326

do.body1326:                                      ; preds = %cond.false1321, %do.body1300.do.body1326_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !218
  tail call void @arm_heavy_mb() #5
  %310 = ptrtoint ptr %port1119 to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load i32, ptr %port1119, align 4
  %add1330 = add i32 %311, 2
  %and1331 = and i32 %add1330, 1048575
  %add1332 = or i32 %and1331, -18874368
  %312 = inttoptr i32 %add1332 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %312, i8 4) #5, !srcloc !59
  %313 = ptrtoint ptr %delay1124 to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load i32, ptr %delay1124, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %314)
  %tobool1335.not = icmp eq i32 %314, 0
  br i1 %tobool1335.not, label %do.body1326.cond.end1351_crit_edge, label %cond.false1347

do.body1326.cond.end1351_crit_edge:               ; preds = %do.body1326
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end1351

cond.false1347:                                   ; preds = %do.body1326
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %315 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %315(i32 noundef %314) #5
  br label %cond.end1351

cond.end1351:                                     ; preds = %cond.false1347, %do.body1326.cond.end1351_crit_edge
  %sub1353 = add i32 %count, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub1353)
  %cmp13543108 = icmp sgt i32 %sub1353, 0
  br i1 %cmp13543108, label %cond.end1351.for.body1356_crit_edge, label %cond.end1351.do.body1390_crit_edge

cond.end1351.do.body1390_crit_edge:               ; preds = %cond.end1351
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1390

cond.end1351.for.body1356_crit_edge:              ; preds = %cond.end1351
  br label %for.body1356

for.body1356:                                     ; preds = %cond.end1374.for.body1356_crit_edge, %cond.end1351.for.body1356_crit_edge
  %k.33109 = phi i32 [ %inc1388, %cond.end1374.for.body1356_crit_edge ], [ 0, %cond.end1351.for.body1356_crit_edge ]
  %316 = ptrtoint ptr %delay1124 to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load i32, ptr %delay1124, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %317)
  %tobool1358.not = icmp eq i32 %317, 0
  br i1 %tobool1358.not, label %for.body1356.cond.end1374_crit_edge, label %cond.false1370

for.body1356.cond.end1374_crit_edge:              ; preds = %for.body1356
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end1374

cond.false1370:                                   ; preds = %for.body1356
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %318 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %318(i32 noundef %317) #5
  br label %cond.end1374

cond.end1374:                                     ; preds = %cond.false1370, %for.body1356.cond.end1374_crit_edge
  %319 = ptrtoint ptr %port1119 to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load i32, ptr %port1119, align 4
  %add1377 = add i32 %320, 4
  %and1378 = and i32 %add1377, 1048575
  %add1379 = or i32 %and1378, -18874368
  %321 = inttoptr i32 %add1379 to ptr
  %322 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %321) #5, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !219
  %arrayidx1386 = getelementptr i8, ptr %buf, i32 %k.33109
  %323 = ptrtoint ptr %arrayidx1386 to i32
  call void @__asan_store1_noabort(i32 %323)
  store i8 %322, ptr %arrayidx1386, align 1
  %inc1388 = add nuw nsw i32 %k.33109, 1
  %exitcond3119.not = icmp eq i32 %inc1388, %sub1353
  br i1 %exitcond3119.not, label %cond.end1374.do.body1390_crit_edge, label %cond.end1374.for.body1356_crit_edge

cond.end1374.for.body1356_crit_edge:              ; preds = %cond.end1374
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body1356

cond.end1374.do.body1390_crit_edge:               ; preds = %cond.end1374
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1390

do.body1390:                                      ; preds = %cond.end1374.do.body1390_crit_edge, %cond.end1351.do.body1390_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !220
  tail call void @arm_heavy_mb() #5
  %324 = ptrtoint ptr %port1119 to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load i32, ptr %port1119, align 4
  %add1394 = add i32 %325, 2
  %and1395 = and i32 %add1394, 1048575
  %add1396 = or i32 %and1395, -18874368
  %326 = inttoptr i32 %add1396 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %326, i8 -84) #5, !srcloc !59
  %327 = ptrtoint ptr %delay1124 to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load i32, ptr %delay1124, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %328)
  %tobool1399.not = icmp eq i32 %328, 0
  br i1 %tobool1399.not, label %do.body1390.do.body1416_crit_edge, label %cond.false1411

do.body1390.do.body1416_crit_edge:                ; preds = %do.body1390
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1416

cond.false1411:                                   ; preds = %do.body1390
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %329 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %329(i32 noundef %328) #5
  br label %do.body1416

do.body1416:                                      ; preds = %cond.false1411, %do.body1390.do.body1416_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !221
  tail call void @arm_heavy_mb() #5
  %330 = ptrtoint ptr %port1119 to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load i32, ptr %port1119, align 4
  %add1420 = add i32 %331, 2
  %and1421 = and i32 %add1420, 1048575
  %add1422 = or i32 %and1421, -18874368
  %332 = inttoptr i32 %add1422 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %332, i8 -92) #5, !srcloc !59
  %333 = ptrtoint ptr %delay1124 to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load i32, ptr %delay1124, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %334)
  %tobool1425.not = icmp eq i32 %334, 0
  br i1 %tobool1425.not, label %do.body1416.cond.end1459_crit_edge, label %cond.false1437

do.body1416.cond.end1459_crit_edge:               ; preds = %do.body1416
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end1459

cond.false1437:                                   ; preds = %do.body1416
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %335 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %335(i32 noundef %334) #5
  %336 = ptrtoint ptr %delay1124 to i32
  call void @__asan_load4_noabort(i32 %336)
  %.pr3098 = load i32, ptr %delay1124, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr3098)
  %tobool1443.not = icmp eq i32 %.pr3098, 0
  br i1 %tobool1443.not, label %cond.false1437.cond.end1459_crit_edge, label %cond.false1455

cond.false1437.cond.end1459_crit_edge:            ; preds = %cond.false1437
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end1459

cond.false1455:                                   ; preds = %cond.false1437
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %337 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %337(i32 noundef %.pr3098) #5
  br label %cond.end1459

cond.end1459:                                     ; preds = %cond.false1455, %cond.false1437.cond.end1459_crit_edge, %do.body1416.cond.end1459_crit_edge
  %338 = ptrtoint ptr %port1119 to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load i32, ptr %port1119, align 4
  %add1462 = add i32 %339, 4
  %and1463 = and i32 %add1462, 1048575
  %add1464 = or i32 %and1463, -18874368
  %340 = inttoptr i32 %add1464 to ptr
  %341 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %340) #5, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !222
  %arrayidx1472 = getelementptr i8, ptr %buf, i32 %sub1353
  %342 = ptrtoint ptr %arrayidx1472 to i32
  call void @__asan_store1_noabort(i32 %342)
  store i8 %341, ptr %arrayidx1472, align 1
  %343 = ptrtoint ptr %delay1124 to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load i32, ptr %delay1124, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %344)
  %tobool1474.not = icmp eq i32 %344, 0
  br i1 %tobool1474.not, label %cond.end1459.cond.end1490_crit_edge, label %cond.false1486

cond.end1459.cond.end1490_crit_edge:              ; preds = %cond.end1459
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end1490

cond.false1486:                                   ; preds = %cond.end1459
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %345 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %345(i32 noundef %344) #5
  br label %cond.end1490

cond.end1490:                                     ; preds = %cond.false1486, %cond.end1459.cond.end1490_crit_edge
  %346 = ptrtoint ptr %port1119 to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load i32, ptr %port1119, align 4
  %add1493 = add i32 %347, 4
  %and1494 = and i32 %add1493, 1048575
  %add1495 = or i32 %and1494, -18874368
  %348 = inttoptr i32 %add1495 to ptr
  %349 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %348) #5, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !223
  %sub1502 = add i32 %count, -1
  %arrayidx1503 = getelementptr i8, ptr %buf, i32 %sub1502
  %350 = ptrtoint ptr %arrayidx1503 to i32
  call void @__asan_store1_noabort(i32 %350)
  store i8 %349, ptr %arrayidx1503, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !224
  tail call void @arm_heavy_mb() #5
  %351 = ptrtoint ptr %port1119 to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load i32, ptr %port1119, align 4
  %add1508 = add i32 %352, 2
  %and1509 = and i32 %add1508, 1048575
  %add1510 = or i32 %and1509, -18874368
  %353 = inttoptr i32 %add1510 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %353, i8 4) #5, !srcloc !59
  %354 = ptrtoint ptr %delay1124 to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load i32, ptr %delay1124, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %355)
  %tobool1513.not = icmp eq i32 %355, 0
  br i1 %tobool1513.not, label %cond.end1490.sw.epilog_crit_edge, label %cond.end1490.sw.epilog.sink.split_crit_edge

cond.end1490.sw.epilog.sink.split_crit_edge:      ; preds = %cond.end1490
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

cond.end1490.sw.epilog_crit_edge:                 ; preds = %cond.end1490
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.body1531:                                      ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !225
  tail call void @arm_heavy_mb() #5
  %port1534 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %356 = ptrtoint ptr %port1534 to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load i32, ptr %port1534, align 4
  %add1535 = add i32 %357, 2
  %and1536 = and i32 %add1535, 1048575
  %add1537 = or i32 %and1536, -18874368
  %358 = inttoptr i32 %add1537 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %358, i8 4) #5, !srcloc !59
  %delay1539 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %359 = ptrtoint ptr %delay1539 to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load i32, ptr %delay1539, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %360)
  %tobool1540.not = icmp eq i32 %360, 0
  br i1 %tobool1540.not, label %do.body1531.do.body1557_crit_edge, label %cond.false1552

do.body1531.do.body1557_crit_edge:                ; preds = %do.body1531
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1557

cond.false1552:                                   ; preds = %do.body1531
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %361 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %361(i32 noundef %360) #5
  br label %do.body1557

do.body1557:                                      ; preds = %cond.false1552, %do.body1531.do.body1557_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !226
  tail call void @arm_heavy_mb() #5
  %362 = trunc i32 %regr to i8
  %conv1561 = xor i8 %362, -128
  %363 = ptrtoint ptr %port1534 to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load i32, ptr %port1534, align 4
  %and1564 = and i32 %364, 1048575
  %add1565 = or i32 %and1564, -18874368
  %365 = inttoptr i32 %add1565 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %365, i8 %conv1561) #5, !srcloc !59
  %366 = ptrtoint ptr %delay1539 to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load i32, ptr %delay1539, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %367)
  %tobool1568.not = icmp eq i32 %367, 0
  br i1 %tobool1568.not, label %do.body1557.do.body1585_crit_edge, label %cond.false1580

do.body1557.do.body1585_crit_edge:                ; preds = %do.body1557
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1585

cond.false1580:                                   ; preds = %do.body1557
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %368 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %368(i32 noundef %367) #5
  br label %do.body1585

do.body1585:                                      ; preds = %cond.false1580, %do.body1557.do.body1585_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !227
  tail call void @arm_heavy_mb() #5
  %369 = ptrtoint ptr %port1534 to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load i32, ptr %port1534, align 4
  %add1589 = add i32 %370, 2
  %and1590 = and i32 %add1589, 1048575
  %add1591 = or i32 %and1590, -18874368
  %371 = inttoptr i32 %add1591 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %371, i8 12) #5, !srcloc !59
  %372 = ptrtoint ptr %delay1539 to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load i32, ptr %delay1539, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %373)
  %tobool1594.not = icmp eq i32 %373, 0
  br i1 %tobool1594.not, label %do.body1585.do.body1611_crit_edge, label %cond.false1606

do.body1585.do.body1611_crit_edge:                ; preds = %do.body1585
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1611

cond.false1606:                                   ; preds = %do.body1585
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %374 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %374(i32 noundef %373) #5
  br label %do.body1611

do.body1611:                                      ; preds = %cond.false1606, %do.body1585.do.body1611_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !228
  tail call void @arm_heavy_mb() #5
  %375 = ptrtoint ptr %port1534 to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load i32, ptr %port1534, align 4
  %add1615 = add i32 %376, 2
  %and1616 = and i32 %add1615, 1048575
  %add1617 = or i32 %and1616, -18874368
  %377 = inttoptr i32 %add1617 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %377, i8 14) #5, !srcloc !59
  %378 = ptrtoint ptr %delay1539 to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load i32, ptr %delay1539, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %379)
  %tobool1620.not = icmp eq i32 %379, 0
  br i1 %tobool1620.not, label %do.body1611.do.body1637_crit_edge, label %cond.false1632

do.body1611.do.body1637_crit_edge:                ; preds = %do.body1611
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1637

cond.false1632:                                   ; preds = %do.body1611
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %380 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %380(i32 noundef %379) #5
  br label %do.body1637

do.body1637:                                      ; preds = %cond.false1632, %do.body1611.do.body1637_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !229
  tail call void @arm_heavy_mb() #5
  %381 = ptrtoint ptr %port1534 to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load i32, ptr %port1534, align 4
  %add1641 = add i32 %382, 2
  %and1642 = and i32 %add1641, 1048575
  %add1643 = or i32 %and1642, -18874368
  %383 = inttoptr i32 %add1643 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %383, i8 14) #5, !srcloc !59
  %384 = ptrtoint ptr %delay1539 to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load i32, ptr %delay1539, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %385)
  %tobool1646.not = icmp eq i32 %385, 0
  br i1 %tobool1646.not, label %do.body1637.do.body1663_crit_edge, label %cond.false1658

do.body1637.do.body1663_crit_edge:                ; preds = %do.body1637
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1663

cond.false1658:                                   ; preds = %do.body1637
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %386 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %386(i32 noundef %385) #5
  br label %do.body1663

do.body1663:                                      ; preds = %cond.false1658, %do.body1637.do.body1663_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !230
  tail call void @arm_heavy_mb() #5
  %387 = ptrtoint ptr %port1534 to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load i32, ptr %port1534, align 4
  %add1667 = add i32 %388, 2
  %and1668 = and i32 %add1667, 1048575
  %add1669 = or i32 %and1668, -18874368
  %389 = inttoptr i32 %add1669 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %389, i8 12) #5, !srcloc !59
  %390 = ptrtoint ptr %delay1539 to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load i32, ptr %delay1539, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %391)
  %tobool1672.not = icmp eq i32 %391, 0
  br i1 %tobool1672.not, label %do.body1663.do.body1689_crit_edge, label %cond.false1684

do.body1663.do.body1689_crit_edge:                ; preds = %do.body1663
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1689

cond.false1684:                                   ; preds = %do.body1663
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %392 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %392(i32 noundef %391) #5
  br label %do.body1689

do.body1689:                                      ; preds = %cond.false1684, %do.body1663.do.body1689_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !231
  tail call void @arm_heavy_mb() #5
  %393 = ptrtoint ptr %port1534 to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load i32, ptr %port1534, align 4
  %add1693 = add i32 %394, 2
  %and1694 = and i32 %add1693, 1048575
  %add1695 = or i32 %and1694, -18874368
  %395 = inttoptr i32 %add1695 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %395, i8 4) #5, !srcloc !59
  %396 = ptrtoint ptr %delay1539 to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load i32, ptr %delay1539, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %397)
  %tobool1698.not = icmp eq i32 %397, 0
  br i1 %tobool1698.not, label %do.body1689.do.body1715_crit_edge, label %cond.false1710

do.body1689.do.body1715_crit_edge:                ; preds = %do.body1689
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1715

cond.false1710:                                   ; preds = %do.body1689
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %398 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %398(i32 noundef %397) #5
  br label %do.body1715

do.body1715:                                      ; preds = %cond.false1710, %do.body1689.do.body1715_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !232
  tail call void @arm_heavy_mb() #5
  %399 = ptrtoint ptr %port1534 to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load i32, ptr %port1534, align 4
  %add1719 = add i32 %400, 2
  %and1720 = and i32 %add1719, 1048575
  %add1721 = or i32 %and1720, -18874368
  %401 = inttoptr i32 %add1721 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %401, i8 4) #5, !srcloc !59
  %402 = ptrtoint ptr %delay1539 to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load i32, ptr %delay1539, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %403)
  %tobool1724.not = icmp eq i32 %403, 0
  br i1 %tobool1724.not, label %do.body1715.do.body1741_crit_edge, label %cond.false1736

do.body1715.do.body1741_crit_edge:                ; preds = %do.body1715
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1741

cond.false1736:                                   ; preds = %do.body1715
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %404 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %404(i32 noundef %403) #5
  br label %do.body1741

do.body1741:                                      ; preds = %cond.false1736, %do.body1715.do.body1741_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !233
  tail call void @arm_heavy_mb() #5
  %405 = ptrtoint ptr %port1534 to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load i32, ptr %port1534, align 4
  %add1745 = add i32 %406, 2
  %and1746 = and i32 %add1745, 1048575
  %add1747 = or i32 %and1746, -18874368
  %407 = inttoptr i32 %add1747 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %407, i8 4) #5, !srcloc !59
  %408 = ptrtoint ptr %delay1539 to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load i32, ptr %delay1539, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %409)
  %tobool1750.not = icmp eq i32 %409, 0
  br i1 %tobool1750.not, label %do.body1741.cond.end1766_crit_edge, label %cond.false1762

do.body1741.cond.end1766_crit_edge:               ; preds = %do.body1741
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end1766

cond.false1762:                                   ; preds = %do.body1741
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %410 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %410(i32 noundef %409) #5
  br label %cond.end1766

cond.end1766:                                     ; preds = %cond.false1762, %do.body1741.cond.end1766_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %count)
  %cmp17693106 = icmp sgt i32 %count, 3
  br i1 %cmp17693106, label %for.body1771.preheader, label %cond.end1766.do.body1805_crit_edge

cond.end1766.do.body1805_crit_edge:               ; preds = %cond.end1766
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1805

for.body1771.preheader:                           ; preds = %cond.end1766
  %div31233126 = lshr i32 %count, 1
  %411 = add nsw i32 %div31233126, -2
  br label %for.body1771

for.body1771:                                     ; preds = %cond.end1789.for.body1771_crit_edge, %for.body1771.preheader
  %k.43107 = phi i32 [ %inc1803, %cond.end1789.for.body1771_crit_edge ], [ 0, %for.body1771.preheader ]
  %412 = ptrtoint ptr %delay1539 to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load i32, ptr %delay1539, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %413)
  %tobool1773.not = icmp eq i32 %413, 0
  br i1 %tobool1773.not, label %for.body1771.cond.end1789_crit_edge, label %cond.false1785

for.body1771.cond.end1789_crit_edge:              ; preds = %for.body1771
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end1789

cond.false1785:                                   ; preds = %for.body1771
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %414 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %414(i32 noundef %413) #5
  br label %cond.end1789

cond.end1789:                                     ; preds = %cond.false1785, %for.body1771.cond.end1789_crit_edge
  %415 = ptrtoint ptr %port1534 to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load i32, ptr %port1534, align 4
  %add1792 = add i32 %416, 4
  %and1793 = and i32 %add1792, 1048575
  %add1794 = or i32 %and1793, -18874368
  %417 = inttoptr i32 %add1794 to ptr
  %418 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %417) #5, !srcloc !234
  %419 = tail call i16 @llvm.bswap.i16(i16 %418)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !235
  %arrayidx1801 = getelementptr i16, ptr %buf, i32 %k.43107
  %420 = ptrtoint ptr %arrayidx1801 to i32
  call void @__asan_store2_noabort(i32 %420)
  store i16 %419, ptr %arrayidx1801, align 2
  %inc1803 = add nuw nsw i32 %k.43107, 1
  %exitcond3118.not = icmp eq i32 %k.43107, %411
  br i1 %exitcond3118.not, label %cond.end1789.do.body1805_crit_edge, label %cond.end1789.for.body1771_crit_edge

cond.end1789.for.body1771_crit_edge:              ; preds = %cond.end1789
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body1771

cond.end1789.do.body1805_crit_edge:               ; preds = %cond.end1789
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1805

do.body1805:                                      ; preds = %cond.end1789.do.body1805_crit_edge, %cond.end1766.do.body1805_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !236
  tail call void @arm_heavy_mb() #5
  %421 = ptrtoint ptr %port1534 to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load i32, ptr %port1534, align 4
  %add1809 = add i32 %422, 2
  %and1810 = and i32 %add1809, 1048575
  %add1811 = or i32 %and1810, -18874368
  %423 = inttoptr i32 %add1811 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %423, i8 -84) #5, !srcloc !59
  %424 = ptrtoint ptr %delay1539 to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load i32, ptr %delay1539, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %425)
  %tobool1814.not = icmp eq i32 %425, 0
  br i1 %tobool1814.not, label %do.body1805.do.body1831_crit_edge, label %cond.false1826

do.body1805.do.body1831_crit_edge:                ; preds = %do.body1805
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1831

cond.false1826:                                   ; preds = %do.body1805
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %426 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %426(i32 noundef %425) #5
  br label %do.body1831

do.body1831:                                      ; preds = %cond.false1826, %do.body1805.do.body1831_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !237
  tail call void @arm_heavy_mb() #5
  %427 = ptrtoint ptr %port1534 to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load i32, ptr %port1534, align 4
  %add1835 = add i32 %428, 2
  %and1836 = and i32 %add1835, 1048575
  %add1837 = or i32 %and1836, -18874368
  %429 = inttoptr i32 %add1837 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %429, i8 -92) #5, !srcloc !59
  %430 = ptrtoint ptr %delay1539 to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load i32, ptr %delay1539, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %431)
  %tobool1840.not = icmp eq i32 %431, 0
  br i1 %tobool1840.not, label %do.body1831.cond.end1874_crit_edge, label %cond.false1852

do.body1831.cond.end1874_crit_edge:               ; preds = %do.body1831
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end1874

cond.false1852:                                   ; preds = %do.body1831
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %432 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %432(i32 noundef %431) #5
  %433 = ptrtoint ptr %delay1539 to i32
  call void @__asan_load4_noabort(i32 %433)
  %.pr3100 = load i32, ptr %delay1539, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr3100)
  %tobool1858.not = icmp eq i32 %.pr3100, 0
  br i1 %tobool1858.not, label %cond.false1852.cond.end1874_crit_edge, label %cond.false1870

cond.false1852.cond.end1874_crit_edge:            ; preds = %cond.false1852
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end1874

cond.false1870:                                   ; preds = %cond.false1852
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %434 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %434(i32 noundef %.pr3100) #5
  br label %cond.end1874

cond.end1874:                                     ; preds = %cond.false1870, %cond.false1852.cond.end1874_crit_edge, %do.body1831.cond.end1874_crit_edge
  %435 = ptrtoint ptr %port1534 to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load i32, ptr %port1534, align 4
  %add1877 = add i32 %436, 4
  %and1878 = and i32 %add1877, 1048575
  %add1879 = or i32 %and1878, -18874368
  %437 = inttoptr i32 %add1879 to ptr
  %438 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %437) #5, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !238
  %sub1886 = add i32 %count, -2
  %arrayidx1887 = getelementptr i8, ptr %buf, i32 %sub1886
  %439 = ptrtoint ptr %arrayidx1887 to i32
  call void @__asan_store1_noabort(i32 %439)
  store i8 %438, ptr %arrayidx1887, align 1
  %440 = ptrtoint ptr %delay1539 to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load i32, ptr %delay1539, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %441)
  %tobool1889.not = icmp eq i32 %441, 0
  br i1 %tobool1889.not, label %cond.end1874.cond.end1905_crit_edge, label %cond.false1901

cond.end1874.cond.end1905_crit_edge:              ; preds = %cond.end1874
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end1905

cond.false1901:                                   ; preds = %cond.end1874
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %442 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %442(i32 noundef %441) #5
  br label %cond.end1905

cond.end1905:                                     ; preds = %cond.false1901, %cond.end1874.cond.end1905_crit_edge
  %443 = ptrtoint ptr %port1534 to i32
  call void @__asan_load4_noabort(i32 %443)
  %444 = load i32, ptr %port1534, align 4
  %add1908 = add i32 %444, 4
  %and1909 = and i32 %add1908, 1048575
  %add1910 = or i32 %and1909, -18874368
  %445 = inttoptr i32 %add1910 to ptr
  %446 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %445) #5, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !239
  %sub1917 = add i32 %count, -1
  %arrayidx1918 = getelementptr i8, ptr %buf, i32 %sub1917
  %447 = ptrtoint ptr %arrayidx1918 to i32
  call void @__asan_store1_noabort(i32 %447)
  store i8 %446, ptr %arrayidx1918, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !240
  tail call void @arm_heavy_mb() #5
  %448 = ptrtoint ptr %port1534 to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load i32, ptr %port1534, align 4
  %add1923 = add i32 %449, 2
  %and1924 = and i32 %add1923, 1048575
  %add1925 = or i32 %and1924, -18874368
  %450 = inttoptr i32 %add1925 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %450, i8 4) #5, !srcloc !59
  %451 = ptrtoint ptr %delay1539 to i32
  call void @__asan_load4_noabort(i32 %451)
  %452 = load i32, ptr %delay1539, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %452)
  %tobool1928.not = icmp eq i32 %452, 0
  br i1 %tobool1928.not, label %cond.end1905.sw.epilog_crit_edge, label %cond.end1905.sw.epilog.sink.split_crit_edge

cond.end1905.sw.epilog.sink.split_crit_edge:      ; preds = %cond.end1905
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

cond.end1905.sw.epilog_crit_edge:                 ; preds = %cond.end1905
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.body1946:                                      ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !241
  tail call void @arm_heavy_mb() #5
  %port1949 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %453 = ptrtoint ptr %port1949 to i32
  call void @__asan_load4_noabort(i32 %453)
  %454 = load i32, ptr %port1949, align 4
  %add1950 = add i32 %454, 2
  %and1951 = and i32 %add1950, 1048575
  %add1952 = or i32 %and1951, -18874368
  %455 = inttoptr i32 %add1952 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %455, i8 4) #5, !srcloc !59
  %delay1954 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %456 = ptrtoint ptr %delay1954 to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load i32, ptr %delay1954, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %457)
  %tobool1955.not = icmp eq i32 %457, 0
  br i1 %tobool1955.not, label %do.body1946.do.body1972_crit_edge, label %cond.false1967

do.body1946.do.body1972_crit_edge:                ; preds = %do.body1946
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1972

cond.false1967:                                   ; preds = %do.body1946
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %458 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %458(i32 noundef %457) #5
  br label %do.body1972

do.body1972:                                      ; preds = %cond.false1967, %do.body1946.do.body1972_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !242
  tail call void @arm_heavy_mb() #5
  %459 = trunc i32 %regr to i8
  %conv1976 = xor i8 %459, -128
  %460 = ptrtoint ptr %port1949 to i32
  call void @__asan_load4_noabort(i32 %460)
  %461 = load i32, ptr %port1949, align 4
  %and1979 = and i32 %461, 1048575
  %add1980 = or i32 %and1979, -18874368
  %462 = inttoptr i32 %add1980 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %462, i8 %conv1976) #5, !srcloc !59
  %463 = ptrtoint ptr %delay1954 to i32
  call void @__asan_load4_noabort(i32 %463)
  %464 = load i32, ptr %delay1954, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %464)
  %tobool1983.not = icmp eq i32 %464, 0
  br i1 %tobool1983.not, label %do.body1972.do.body2000_crit_edge, label %cond.false1995

do.body1972.do.body2000_crit_edge:                ; preds = %do.body1972
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2000

cond.false1995:                                   ; preds = %do.body1972
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %465 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %465(i32 noundef %464) #5
  br label %do.body2000

do.body2000:                                      ; preds = %cond.false1995, %do.body1972.do.body2000_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !243
  tail call void @arm_heavy_mb() #5
  %466 = ptrtoint ptr %port1949 to i32
  call void @__asan_load4_noabort(i32 %466)
  %467 = load i32, ptr %port1949, align 4
  %add2004 = add i32 %467, 2
  %and2005 = and i32 %add2004, 1048575
  %add2006 = or i32 %and2005, -18874368
  %468 = inttoptr i32 %add2006 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %468, i8 12) #5, !srcloc !59
  %469 = ptrtoint ptr %delay1954 to i32
  call void @__asan_load4_noabort(i32 %469)
  %470 = load i32, ptr %delay1954, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %470)
  %tobool2009.not = icmp eq i32 %470, 0
  br i1 %tobool2009.not, label %do.body2000.do.body2026_crit_edge, label %cond.false2021

do.body2000.do.body2026_crit_edge:                ; preds = %do.body2000
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2026

cond.false2021:                                   ; preds = %do.body2000
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %471 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %471(i32 noundef %470) #5
  br label %do.body2026

do.body2026:                                      ; preds = %cond.false2021, %do.body2000.do.body2026_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !244
  tail call void @arm_heavy_mb() #5
  %472 = ptrtoint ptr %port1949 to i32
  call void @__asan_load4_noabort(i32 %472)
  %473 = load i32, ptr %port1949, align 4
  %add2030 = add i32 %473, 2
  %and2031 = and i32 %add2030, 1048575
  %add2032 = or i32 %and2031, -18874368
  %474 = inttoptr i32 %add2032 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %474, i8 14) #5, !srcloc !59
  %475 = ptrtoint ptr %delay1954 to i32
  call void @__asan_load4_noabort(i32 %475)
  %476 = load i32, ptr %delay1954, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %476)
  %tobool2035.not = icmp eq i32 %476, 0
  br i1 %tobool2035.not, label %do.body2026.do.body2052_crit_edge, label %cond.false2047

do.body2026.do.body2052_crit_edge:                ; preds = %do.body2026
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2052

cond.false2047:                                   ; preds = %do.body2026
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %477 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %477(i32 noundef %476) #5
  br label %do.body2052

do.body2052:                                      ; preds = %cond.false2047, %do.body2026.do.body2052_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !245
  tail call void @arm_heavy_mb() #5
  %478 = ptrtoint ptr %port1949 to i32
  call void @__asan_load4_noabort(i32 %478)
  %479 = load i32, ptr %port1949, align 4
  %add2056 = add i32 %479, 2
  %and2057 = and i32 %add2056, 1048575
  %add2058 = or i32 %and2057, -18874368
  %480 = inttoptr i32 %add2058 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %480, i8 14) #5, !srcloc !59
  %481 = ptrtoint ptr %delay1954 to i32
  call void @__asan_load4_noabort(i32 %481)
  %482 = load i32, ptr %delay1954, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %482)
  %tobool2061.not = icmp eq i32 %482, 0
  br i1 %tobool2061.not, label %do.body2052.do.body2078_crit_edge, label %cond.false2073

do.body2052.do.body2078_crit_edge:                ; preds = %do.body2052
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2078

cond.false2073:                                   ; preds = %do.body2052
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %483 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %483(i32 noundef %482) #5
  br label %do.body2078

do.body2078:                                      ; preds = %cond.false2073, %do.body2052.do.body2078_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !246
  tail call void @arm_heavy_mb() #5
  %484 = ptrtoint ptr %port1949 to i32
  call void @__asan_load4_noabort(i32 %484)
  %485 = load i32, ptr %port1949, align 4
  %add2082 = add i32 %485, 2
  %and2083 = and i32 %add2082, 1048575
  %add2084 = or i32 %and2083, -18874368
  %486 = inttoptr i32 %add2084 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %486, i8 12) #5, !srcloc !59
  %487 = ptrtoint ptr %delay1954 to i32
  call void @__asan_load4_noabort(i32 %487)
  %488 = load i32, ptr %delay1954, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %488)
  %tobool2087.not = icmp eq i32 %488, 0
  br i1 %tobool2087.not, label %do.body2078.do.body2104_crit_edge, label %cond.false2099

do.body2078.do.body2104_crit_edge:                ; preds = %do.body2078
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2104

cond.false2099:                                   ; preds = %do.body2078
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %489 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %489(i32 noundef %488) #5
  br label %do.body2104

do.body2104:                                      ; preds = %cond.false2099, %do.body2078.do.body2104_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !247
  tail call void @arm_heavy_mb() #5
  %490 = ptrtoint ptr %port1949 to i32
  call void @__asan_load4_noabort(i32 %490)
  %491 = load i32, ptr %port1949, align 4
  %add2108 = add i32 %491, 2
  %and2109 = and i32 %add2108, 1048575
  %add2110 = or i32 %and2109, -18874368
  %492 = inttoptr i32 %add2110 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %492, i8 4) #5, !srcloc !59
  %493 = ptrtoint ptr %delay1954 to i32
  call void @__asan_load4_noabort(i32 %493)
  %494 = load i32, ptr %delay1954, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %494)
  %tobool2113.not = icmp eq i32 %494, 0
  br i1 %tobool2113.not, label %do.body2104.do.body2130_crit_edge, label %cond.false2125

do.body2104.do.body2130_crit_edge:                ; preds = %do.body2104
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2130

cond.false2125:                                   ; preds = %do.body2104
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %495 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %495(i32 noundef %494) #5
  br label %do.body2130

do.body2130:                                      ; preds = %cond.false2125, %do.body2104.do.body2130_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !248
  tail call void @arm_heavy_mb() #5
  %496 = ptrtoint ptr %port1949 to i32
  call void @__asan_load4_noabort(i32 %496)
  %497 = load i32, ptr %port1949, align 4
  %add2134 = add i32 %497, 2
  %and2135 = and i32 %add2134, 1048575
  %add2136 = or i32 %and2135, -18874368
  %498 = inttoptr i32 %add2136 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %498, i8 4) #5, !srcloc !59
  %499 = ptrtoint ptr %delay1954 to i32
  call void @__asan_load4_noabort(i32 %499)
  %500 = load i32, ptr %delay1954, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %500)
  %tobool2139.not = icmp eq i32 %500, 0
  br i1 %tobool2139.not, label %do.body2130.do.body2156_crit_edge, label %cond.false2151

do.body2130.do.body2156_crit_edge:                ; preds = %do.body2130
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2156

cond.false2151:                                   ; preds = %do.body2130
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %501 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %501(i32 noundef %500) #5
  br label %do.body2156

do.body2156:                                      ; preds = %cond.false2151, %do.body2130.do.body2156_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !249
  tail call void @arm_heavy_mb() #5
  %502 = ptrtoint ptr %port1949 to i32
  call void @__asan_load4_noabort(i32 %502)
  %503 = load i32, ptr %port1949, align 4
  %add2160 = add i32 %503, 2
  %and2161 = and i32 %add2160, 1048575
  %add2162 = or i32 %and2161, -18874368
  %504 = inttoptr i32 %add2162 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %504, i8 4) #5, !srcloc !59
  %505 = ptrtoint ptr %delay1954 to i32
  call void @__asan_load4_noabort(i32 %505)
  %506 = load i32, ptr %delay1954, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %506)
  %tobool2165.not = icmp eq i32 %506, 0
  br i1 %tobool2165.not, label %do.body2156.cond.end2181_crit_edge, label %cond.false2177

do.body2156.cond.end2181_crit_edge:               ; preds = %do.body2156
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end2181

cond.false2177:                                   ; preds = %do.body2156
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %507 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %507(i32 noundef %506) #5
  br label %cond.end2181

cond.end2181:                                     ; preds = %cond.false2177, %do.body2156.cond.end2181_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %count)
  %cmp21853104 = icmp sgt i32 %count, 7
  br i1 %cmp21853104, label %for.body2187.preheader, label %cond.end2181.for.end2218_crit_edge

cond.end2181.for.end2218_crit_edge:               ; preds = %cond.end2181
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end2218

for.body2187.preheader:                           ; preds = %cond.end2181
  %div218331243125 = lshr i32 %count, 2
  %508 = add nsw i32 %div218331243125, -2
  br label %for.body2187

for.body2187:                                     ; preds = %cond.end2205.for.body2187_crit_edge, %for.body2187.preheader
  %k.53105 = phi i32 [ %inc2217, %cond.end2205.for.body2187_crit_edge ], [ 0, %for.body2187.preheader ]
  %509 = ptrtoint ptr %delay1954 to i32
  call void @__asan_load4_noabort(i32 %509)
  %510 = load i32, ptr %delay1954, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %510)
  %tobool2189.not = icmp eq i32 %510, 0
  br i1 %tobool2189.not, label %for.body2187.cond.end2205_crit_edge, label %cond.false2201

for.body2187.cond.end2205_crit_edge:              ; preds = %for.body2187
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end2205

cond.false2201:                                   ; preds = %for.body2187
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %511 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %511(i32 noundef %510) #5
  br label %cond.end2205

cond.end2205:                                     ; preds = %cond.false2201, %for.body2187.cond.end2205_crit_edge
  %512 = ptrtoint ptr %port1949 to i32
  call void @__asan_load4_noabort(i32 %512)
  %513 = load i32, ptr %port1949, align 4
  %add2208 = add i32 %513, 4
  %and2209 = and i32 %add2208, 1048575
  %add2210 = or i32 %and2209, -18874368
  %514 = inttoptr i32 %add2210 to ptr
  %515 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %514) #5, !srcloc !250
  %516 = tail call i32 @llvm.bswap.i32(i32 %515)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !251
  %arrayidx2215 = getelementptr i32, ptr %buf, i32 %k.53105
  %517 = ptrtoint ptr %arrayidx2215 to i32
  call void @__asan_store4_noabort(i32 %517)
  store i32 %516, ptr %arrayidx2215, align 4
  %inc2217 = add nuw nsw i32 %k.53105, 1
  %exitcond.not = icmp eq i32 %k.53105, %508
  br i1 %exitcond.not, label %cond.end2205.for.end2218_crit_edge, label %cond.end2205.for.body2187_crit_edge

cond.end2205.for.body2187_crit_edge:              ; preds = %cond.end2205
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body2187

cond.end2205.for.end2218_crit_edge:               ; preds = %cond.end2205
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end2218

for.end2218:                                      ; preds = %cond.end2205.for.end2218_crit_edge, %cond.end2181.for.end2218_crit_edge
  %518 = ptrtoint ptr %delay1954 to i32
  call void @__asan_load4_noabort(i32 %518)
  %519 = load i32, ptr %delay1954, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %519)
  %tobool2220.not = icmp eq i32 %519, 0
  br i1 %tobool2220.not, label %for.end2218.cond.end2236_crit_edge, label %cond.false2232

for.end2218.cond.end2236_crit_edge:               ; preds = %for.end2218
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end2236

cond.false2232:                                   ; preds = %for.end2218
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %520 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %520(i32 noundef %519) #5
  br label %cond.end2236

cond.end2236:                                     ; preds = %cond.false2232, %for.end2218.cond.end2236_crit_edge
  %521 = ptrtoint ptr %port1949 to i32
  call void @__asan_load4_noabort(i32 %521)
  %522 = load i32, ptr %port1949, align 4
  %add2239 = add i32 %522, 4
  %and2240 = and i32 %add2239, 1048575
  %add2241 = or i32 %and2240, -18874368
  %523 = inttoptr i32 %add2241 to ptr
  %524 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %523) #5, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !252
  %sub2248 = add i32 %count, -4
  %arrayidx2249 = getelementptr i8, ptr %buf, i32 %sub2248
  %525 = ptrtoint ptr %arrayidx2249 to i32
  call void @__asan_store1_noabort(i32 %525)
  store i8 %524, ptr %arrayidx2249, align 1
  %526 = ptrtoint ptr %delay1954 to i32
  call void @__asan_load4_noabort(i32 %526)
  %527 = load i32, ptr %delay1954, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %527)
  %tobool2251.not = icmp eq i32 %527, 0
  br i1 %tobool2251.not, label %cond.end2236.cond.end2267_crit_edge, label %cond.false2263

cond.end2236.cond.end2267_crit_edge:              ; preds = %cond.end2236
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end2267

cond.false2263:                                   ; preds = %cond.end2236
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %528 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %528(i32 noundef %527) #5
  br label %cond.end2267

cond.end2267:                                     ; preds = %cond.false2263, %cond.end2236.cond.end2267_crit_edge
  %529 = ptrtoint ptr %port1949 to i32
  call void @__asan_load4_noabort(i32 %529)
  %530 = load i32, ptr %port1949, align 4
  %add2270 = add i32 %530, 4
  %and2271 = and i32 %add2270, 1048575
  %add2272 = or i32 %and2271, -18874368
  %531 = inttoptr i32 %add2272 to ptr
  %532 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %531) #5, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !253
  %sub2279 = add i32 %count, -3
  %arrayidx2280 = getelementptr i8, ptr %buf, i32 %sub2279
  %533 = ptrtoint ptr %arrayidx2280 to i32
  call void @__asan_store1_noabort(i32 %533)
  store i8 %532, ptr %arrayidx2280, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !254
  tail call void @arm_heavy_mb() #5
  %534 = ptrtoint ptr %port1949 to i32
  call void @__asan_load4_noabort(i32 %534)
  %535 = load i32, ptr %port1949, align 4
  %add2285 = add i32 %535, 2
  %and2286 = and i32 %add2285, 1048575
  %add2287 = or i32 %and2286, -18874368
  %536 = inttoptr i32 %add2287 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %536, i8 -84) #5, !srcloc !59
  %537 = ptrtoint ptr %delay1954 to i32
  call void @__asan_load4_noabort(i32 %537)
  %538 = load i32, ptr %delay1954, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %538)
  %tobool2290.not = icmp eq i32 %538, 0
  br i1 %tobool2290.not, label %cond.end2267.do.body2307_crit_edge, label %cond.false2302

cond.end2267.do.body2307_crit_edge:               ; preds = %cond.end2267
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2307

cond.false2302:                                   ; preds = %cond.end2267
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %539 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %539(i32 noundef %538) #5
  br label %do.body2307

do.body2307:                                      ; preds = %cond.false2302, %cond.end2267.do.body2307_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !255
  tail call void @arm_heavy_mb() #5
  %540 = ptrtoint ptr %port1949 to i32
  call void @__asan_load4_noabort(i32 %540)
  %541 = load i32, ptr %port1949, align 4
  %add2311 = add i32 %541, 2
  %and2312 = and i32 %add2311, 1048575
  %add2313 = or i32 %and2312, -18874368
  %542 = inttoptr i32 %add2313 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %542, i8 -92) #5, !srcloc !59
  %543 = ptrtoint ptr %delay1954 to i32
  call void @__asan_load4_noabort(i32 %543)
  %544 = load i32, ptr %delay1954, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %544)
  %tobool2316.not = icmp eq i32 %544, 0
  br i1 %tobool2316.not, label %do.body2307.cond.end2350_crit_edge, label %cond.false2328

do.body2307.cond.end2350_crit_edge:               ; preds = %do.body2307
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end2350

cond.false2328:                                   ; preds = %do.body2307
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %545 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %545(i32 noundef %544) #5
  %546 = ptrtoint ptr %delay1954 to i32
  call void @__asan_load4_noabort(i32 %546)
  %.pr3102 = load i32, ptr %delay1954, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr3102)
  %tobool2334.not = icmp eq i32 %.pr3102, 0
  br i1 %tobool2334.not, label %cond.false2328.cond.end2350_crit_edge, label %cond.false2346

cond.false2328.cond.end2350_crit_edge:            ; preds = %cond.false2328
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end2350

cond.false2346:                                   ; preds = %cond.false2328
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %547 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %547(i32 noundef %.pr3102) #5
  br label %cond.end2350

cond.end2350:                                     ; preds = %cond.false2346, %cond.false2328.cond.end2350_crit_edge, %do.body2307.cond.end2350_crit_edge
  %548 = ptrtoint ptr %port1949 to i32
  call void @__asan_load4_noabort(i32 %548)
  %549 = load i32, ptr %port1949, align 4
  %add2353 = add i32 %549, 4
  %and2354 = and i32 %add2353, 1048575
  %add2355 = or i32 %and2354, -18874368
  %550 = inttoptr i32 %add2355 to ptr
  %551 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %550) #5, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !256
  %sub2362 = add i32 %count, -2
  %arrayidx2363 = getelementptr i8, ptr %buf, i32 %sub2362
  %552 = ptrtoint ptr %arrayidx2363 to i32
  call void @__asan_store1_noabort(i32 %552)
  store i8 %551, ptr %arrayidx2363, align 1
  %553 = ptrtoint ptr %delay1954 to i32
  call void @__asan_load4_noabort(i32 %553)
  %554 = load i32, ptr %delay1954, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %554)
  %tobool2365.not = icmp eq i32 %554, 0
  br i1 %tobool2365.not, label %cond.end2350.cond.end2381_crit_edge, label %cond.false2377

cond.end2350.cond.end2381_crit_edge:              ; preds = %cond.end2350
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end2381

cond.false2377:                                   ; preds = %cond.end2350
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %555 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %555(i32 noundef %554) #5
  br label %cond.end2381

cond.end2381:                                     ; preds = %cond.false2377, %cond.end2350.cond.end2381_crit_edge
  %556 = ptrtoint ptr %port1949 to i32
  call void @__asan_load4_noabort(i32 %556)
  %557 = load i32, ptr %port1949, align 4
  %add2384 = add i32 %557, 4
  %and2385 = and i32 %add2384, 1048575
  %add2386 = or i32 %and2385, -18874368
  %558 = inttoptr i32 %add2386 to ptr
  %559 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %558) #5, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !257
  %sub2393 = add i32 %count, -1
  %arrayidx2394 = getelementptr i8, ptr %buf, i32 %sub2393
  %560 = ptrtoint ptr %arrayidx2394 to i32
  call void @__asan_store1_noabort(i32 %560)
  store i8 %559, ptr %arrayidx2394, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !258
  tail call void @arm_heavy_mb() #5
  %561 = ptrtoint ptr %port1949 to i32
  call void @__asan_load4_noabort(i32 %561)
  %562 = load i32, ptr %port1949, align 4
  %add2399 = add i32 %562, 2
  %and2400 = and i32 %add2399, 1048575
  %add2401 = or i32 %and2400, -18874368
  %563 = inttoptr i32 %add2401 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %563, i8 4) #5, !srcloc !59
  %564 = ptrtoint ptr %delay1954 to i32
  call void @__asan_load4_noabort(i32 %564)
  %565 = load i32, ptr %delay1954, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %565)
  %tobool2404.not = icmp eq i32 %565, 0
  br i1 %tobool2404.not, label %cond.end2381.sw.epilog_crit_edge, label %cond.end2381.sw.epilog.sink.split_crit_edge

cond.end2381.sw.epilog.sink.split_crit_edge:      ; preds = %cond.end2381
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

cond.end2381.sw.epilog_crit_edge:                 ; preds = %cond.end2381
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.epilog.sink.split:                             ; preds = %cond.end2381.sw.epilog.sink.split_crit_edge, %cond.end1905.sw.epilog.sink.split_crit_edge, %cond.end1490.sw.epilog.sink.split_crit_edge, %do.body1089.sw.epilog.sink.split_crit_edge, %do.body737.sw.epilog.sink.split_crit_edge, %do.body331.sw.epilog.sink.split_crit_edge
  %.sink = phi i32 [ %88, %do.body331.sw.epilog.sink.split_crit_edge ], [ %180, %do.body737.sw.epilog.sink.split_crit_edge ], [ %260, %do.body1089.sw.epilog.sink.split_crit_edge ], [ %355, %cond.end1490.sw.epilog.sink.split_crit_edge ], [ %452, %cond.end1905.sw.epilog.sink.split_crit_edge ], [ %565, %cond.end2381.sw.epilog.sink.split_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %566 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %566(i32 noundef %.sink) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %cond.end2381.sw.epilog_crit_edge, %cond.end1905.sw.epilog_crit_edge, %cond.end1490.sw.epilog_crit_edge, %do.body1089.sw.epilog_crit_edge, %do.body737.sw.epilog_crit_edge, %do.body331.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !14, !15, !16, !17, !19, !20, !21, !23, !24, !25, !27, !29, !31, !33, !35, !37, !39, !40, !41, !42, !43, !44, !45, !47, !48}
!llvm.module.flags = !{!49, !50, !51, !52, !53, !54, !55, !56}
!llvm.ident = !{!57}

!0 = !{ptr @__UNIQUE_ID_file160, !1, !"__UNIQUE_ID_file160", i1 false, i1 false}
!1 = !{!"../drivers/block/paride/frpw.c", i32 311, i32 1}
!2 = !{ptr @__UNIQUE_ID_license161, !1, !"__UNIQUE_ID_license161", i1 false, i1 false}
!3 = !{ptr @__initcall__kmod_frpw__162_312_frpw_init6, !4, !"__initcall__kmod_frpw__162_312_frpw_init6", i1 false, i1 false}
!4 = !{!"../drivers/block/paride/frpw.c", i32 312, i32 1}
!5 = !{ptr @__exitcall_frpw_exit, !6, !"__exitcall_frpw_exit", i1 false, i1 false}
!6 = !{!"../drivers/block/paride/frpw.c", i32 313, i32 1}
!7 = !{ptr @frpw, !8, !"frpw", i1 false, i1 false}
!8 = !{!"../drivers/block/paride/frpw.c", i32 284, i32 27}
!9 = !{ptr @cont_map, !10, !"cont_map", i1 false, i1 false}
!10 = !{!"../drivers/block/paride/frpw.c", i32 45, i32 13}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/block/paride/frpw.c", i32 234, i32 3}
!13 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @frpw_test_proto._entry, !12, !"_entry", i1 false, i1 false}
!16 = !{ptr @frpw_test_proto._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/block/paride/frpw.c", i32 241, i32 3}
!19 = !{ptr @frpw_test_proto._entry.3, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @frpw_test_proto._entry_ptr.5, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/block/paride/frpw.c", i32 264, i32 13}
!23 = !{ptr @frpw_test_proto._entry.6, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @frpw_test_proto._entry_ptr.8, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/block/paride/frpw.c", i32 274, i32 36}
!27 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/block/paride/frpw.c", i32 274, i32 44}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/block/paride/frpw.c", i32 274, i32 52}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/block/paride/frpw.c", i32 275, i32 8}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/block/paride/frpw.c", i32 275, i32 16}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/block/paride/frpw.c", i32 275, i32 25}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/block/paride/frpw.c", i32 277, i32 9}
!39 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @frpw_log_adapter._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @frpw_log_adapter._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/block/paride/frpw.c", i32 279, i32 9}
!47 = !{ptr @frpw_log_adapter._entry.20, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @frpw_log_adapter._entry_ptr.22, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{i32 1, !"wchar_size", i32 2}
!50 = !{i32 1, !"min_enum_size", i32 4}
!51 = !{i32 8, !"branch-target-enforcement", i32 0}
!52 = !{i32 8, !"sign-return-address", i32 0}
!53 = !{i32 8, !"sign-return-address-all", i32 0}
!54 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!55 = !{i32 7, !"uwtable", i32 1}
!56 = !{i32 7, !"frame-pointer", i32 2}
!57 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!58 = !{i64 2152121098}
!59 = !{i64 4535653}
!60 = !{i64 2152122108}
!61 = !{i64 2152123175}
!62 = !{i64 2152124191}
!63 = !{i64 2152125207}
!64 = !{i64 2152126223}
!65 = !{i64 2152127233}
!66 = !{i64 2152128243}
!67 = !{i64 2152129253}
!68 = !{i64 2152130269}
!69 = !{i64 2152131279}
!70 = !{i64 2152132289}
!71 = !{i64 2152133299}
!72 = !{i64 2152134309}
!73 = !{i64 2152106968}
!74 = !{i64 2152107978}
!75 = !{i64 2152109045}
!76 = !{i64 2152110061}
!77 = !{i64 2152111077}
!78 = !{i64 2152112093}
!79 = !{i64 2152113103}
!80 = !{i64 2152114113}
!81 = !{i64 2152115123}
!82 = !{i64 2152116133}
!83 = !{i64 4536048}
!84 = !{i64 2152117828}
!85 = !{i64 2152118096}
!86 = !{i64 2152119791}
!87 = !{i64 2152120059}
!88 = !{i64 2152229884}
!89 = !{i64 2152230894}
!90 = !{i64 2152231961}
!91 = !{i64 2152232977}
!92 = !{i64 2152233993}
!93 = !{i64 2152235009}
!94 = !{i64 2152236019}
!95 = !{i64 2152237029}
!96 = !{i64 2152238039}
!97 = !{i64 2152239049}
!98 = !{i64 2152240074}
!99 = !{i64 2152241084}
!100 = !{i64 2152242094}
!101 = !{i64 2152243104}
!102 = !{i64 2152244114}
!103 = !{i64 2152245133}
!104 = !{i64 2152246200}
!105 = !{i64 2152247216}
!106 = !{i64 2152248232}
!107 = !{i64 2152249248}
!108 = !{i64 2152250258}
!109 = !{i64 2152251268}
!110 = !{i64 2152252278}
!111 = !{i64 2152253288}
!112 = !{i64 2152254313}
!113 = !{i64 2152255323}
!114 = !{i64 2152256333}
!115 = !{i64 2152257352}
!116 = !{i64 2152258419}
!117 = !{i64 2152259435}
!118 = !{i64 2152260451}
!119 = !{i64 2152261467}
!120 = !{i64 2152262477}
!121 = !{i64 2152263487}
!122 = !{i64 2152264497}
!123 = !{i64 2152265507}
!124 = !{i64 2152266558}
!125 = !{i64 4535230}
!126 = !{i64 2152267686}
!127 = !{i64 2152268696}
!128 = !{i64 2152269715}
!129 = !{i64 2152270782}
!130 = !{i64 2152271798}
!131 = !{i64 2152272814}
!132 = !{i64 2152273830}
!133 = !{i64 2152274840}
!134 = !{i64 2152275850}
!135 = !{i64 2152276860}
!136 = !{i64 2152277870}
!137 = !{i64 2152278921}
!138 = !{i64 4535850}
!139 = !{i64 2152280049}
!140 = !{i64 2152281744}
!141 = !{i64 2152282697}
!142 = !{i64 2152282965}
!143 = !{i64 2152283975}
!144 = !{i64 2152284994}
!145 = !{i64 2152286061}
!146 = !{i64 2152287077}
!147 = !{i64 2152288093}
!148 = !{i64 2152289109}
!149 = !{i64 2152290119}
!150 = !{i64 2152291129}
!151 = !{i64 2152292139}
!152 = !{i64 2152293182}
!153 = !{i64 2152294225}
!154 = !{i64 2152295920}
!155 = !{i64 2152296873}
!156 = !{i64 2152297141}
!157 = !{i64 2152298151}
!158 = !{i64 2152299161}
!159 = !{i64 2152300171}
!160 = !{i64 2152301866}
!161 = !{i64 2152302134}
!162 = !{i64 2152303829}
!163 = !{i64 2152304103}
!164 = !{i64 2152305119}
!165 = !{i64 2152306129}
!166 = !{i64 2152307172}
!167 = !{i64 2152308215}
!168 = !{i64 2152135319}
!169 = !{i64 2152136338}
!170 = !{i64 2152137405}
!171 = !{i64 2152138421}
!172 = !{i64 2152139437}
!173 = !{i64 2152140453}
!174 = !{i64 2152145524}
!175 = !{i64 2152146534}
!176 = !{i64 2152147544}
!177 = !{i64 2152148554}
!178 = !{i64 2152150249}
!179 = !{i64 2152150517}
!180 = !{i64 2152152212}
!181 = !{i64 2152152509}
!182 = !{i64 2152153519}
!183 = !{i64 2152154559}
!184 = !{i64 2152155626}
!185 = !{i64 2152156642}
!186 = !{i64 2152157658}
!187 = !{i64 2152158674}
!188 = !{i64 2152159684}
!189 = !{i64 2152160694}
!190 = !{i64 2152161704}
!191 = !{i64 2152162723}
!192 = !{i64 2152163757}
!193 = !{i64 2152165452}
!194 = !{i64 2152165729}
!195 = !{i64 2152166748}
!196 = !{i64 2152167758}
!197 = !{i64 2152168768}
!198 = !{i64 2152169808}
!199 = !{i64 2152170875}
!200 = !{i64 2152171891}
!201 = !{i64 2152172907}
!202 = !{i64 2152173923}
!203 = !{i64 2152174933}
!204 = !{i64 2152175943}
!205 = !{i64 2152176953}
!206 = !{i64 2152178648}
!207 = !{i64 2152178925}
!208 = !{i64 2152179944}
!209 = !{i64 2152180954}
!210 = !{i64 2152181964}
!211 = !{i64 2152183004}
!212 = !{i64 2152184071}
!213 = !{i64 2152185087}
!214 = !{i64 2152186103}
!215 = !{i64 2152187119}
!216 = !{i64 2152188129}
!217 = !{i64 2152189139}
!218 = !{i64 2152190149}
!219 = !{i64 2152191844}
!220 = !{i64 2152192121}
!221 = !{i64 2152193140}
!222 = !{i64 2152194835}
!223 = !{i64 2152195788}
!224 = !{i64 2152196056}
!225 = !{i64 2152197066}
!226 = !{i64 2152198106}
!227 = !{i64 2152199173}
!228 = !{i64 2152200189}
!229 = !{i64 2152201205}
!230 = !{i64 2152202221}
!231 = !{i64 2152203231}
!232 = !{i64 2152204241}
!233 = !{i64 2152205251}
!234 = !{i64 4535430}
!235 = !{i64 2152207298}
!236 = !{i64 2152207575}
!237 = !{i64 2152208594}
!238 = !{i64 2152210289}
!239 = !{i64 2152211242}
!240 = !{i64 2152211510}
!241 = !{i64 2152212520}
!242 = !{i64 2152213560}
!243 = !{i64 2152214627}
!244 = !{i64 2152215643}
!245 = !{i64 2152216659}
!246 = !{i64 2152217675}
!247 = !{i64 2152218685}
!248 = !{i64 2152219695}
!249 = !{i64 2152220705}
!250 = !{i64 4536268}
!251 = !{i64 2152222756}
!252 = !{i64 2152223709}
!253 = !{i64 2152224662}
!254 = !{i64 2152224939}
!255 = !{i64 2152225958}
!256 = !{i64 2152227653}
!257 = !{i64 2152228606}
!258 = !{i64 2152228874}
