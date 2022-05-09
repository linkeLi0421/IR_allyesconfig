; ModuleID = '/llk/IR_all_yes/net/ipv4/gre_demux.c_pt.bc'
source_filename = "../net/ipv4/gre_demux.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+gre_add_protocol\22, \22a\22\09"
module asm "\09.weak\09__crc_gre_add_protocol\09\09\09\09"
module asm "\09.long\09__crc_gre_add_protocol\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gre_add_protocol:\09\09\09\09\09"
module asm "\09.asciz \09\22gre_add_protocol\22\09\09\09\09\09"
module asm "__kstrtabns_gre_add_protocol:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+gre_del_protocol\22, \22a\22\09"
module asm "\09.weak\09__crc_gre_del_protocol\09\09\09\09"
module asm "\09.long\09__crc_gre_del_protocol\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gre_del_protocol:\09\09\09\09\09"
module asm "\09.asciz \09\22gre_del_protocol\22\09\09\09\09\09"
module asm "__kstrtabns_gre_del_protocol:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+gre_parse_header\22, \22a\22\09"
module asm "\09.weak\09__crc_gre_parse_header\09\09\09\09"
module asm "\09.long\09__crc_gre_parse_header\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gre_parse_header:\09\09\09\09\09"
module asm "\09.asciz \09\22gre_parse_header\22\09\09\09\09\09"
module asm "__kstrtabns_gre_parse_header:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.net_protocol = type { ptr, ptr, ptr, ptr, i8 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.sk_buff = type { %union.anon, %union.anon.137, %union.anon.138, [48 x i8], %union.anon.139, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.141, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.137 = type { ptr }
%union.anon.138 = type { i64 }
%union.anon.139 = type { %struct.anon.140 }
%struct.anon.140 = type { i32, ptr }
%union.anon.141 = type { %struct.anon.142 }
%struct.anon.142 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.143, i32, i32, i32, i16, i16, %union.anon.145, i32, %union.anon.146, %union.anon.147, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.143 = type { i32 }
%union.anon.145 = type { i32 }
%union.anon.146 = type { i32 }
%union.anon.147 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.gre_base_hdr = type { i16, i16 }
%struct.tnl_ptk_info = type { i16, i16, i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.gre_protocol = type { ptr, ptr }

@gre_proto = internal global [2 x ptr] zeroinitializer, section ".data..read_mostly", align 4
@__kstrtab_gre_add_protocol = external dso_local constant [0 x i8], align 1
@__kstrtabns_gre_add_protocol = external dso_local constant [0 x i8], align 1
@__ksymtab_gre_add_protocol = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gre_add_protocol to i32), ptr @__kstrtab_gre_add_protocol, ptr @__kstrtabns_gre_add_protocol }, section "___ksymtab_gpl+gre_add_protocol", align 4
@__kstrtab_gre_del_protocol = external dso_local constant [0 x i8], align 1
@__kstrtabns_gre_del_protocol = external dso_local constant [0 x i8], align 1
@__ksymtab_gre_del_protocol = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gre_del_protocol to i32), ptr @__kstrtab_gre_del_protocol, ptr @__kstrtabns_gre_del_protocol }, section "___ksymtab_gpl+gre_del_protocol", align 4
@__kstrtab_gre_parse_header = external dso_local constant [0 x i8], align 1
@__kstrtabns_gre_parse_header = external dso_local constant [0 x i8], align 1
@__ksymtab_gre_parse_header = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gre_parse_header to i32), ptr @__kstrtab_gre_parse_header, ptr @__kstrtabns_gre_parse_header }, section "___ksymtab+gre_parse_header", align 4
@net_gre_protocol = internal constant { %struct.net_protocol, [44 x i8] } { %struct.net_protocol { ptr null, ptr null, ptr @gre_rcv, ptr @gre_err, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__initcall__kmod_gre__579_216_gre_init6 = internal global ptr @gre_init, section ".initcall6.init", align 4
@__exitcall_gre_exit = internal global ptr @gre_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description580 = internal constant [51 x i8] c"gre.description=GRE over IPv4 demultiplexer driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author581 = internal constant [35 x i8] c"gre.author=D. Kozlov (xeb@mail.ru)\00", section ".modinfo", align 1
@__UNIQUE_ID_file582 = internal constant [22 x i8] c"gre.file=net/ipv4/gre\00", section ".modinfo", align 1
@__UNIQUE_ID_license583 = internal constant [16 x i8] c"gre.license=GPL\00", section ".modinfo", align 1
@gre_rcv.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"net/ipv4/gre_demux.c\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@gre_err.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@gre_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str, i32 202, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016gre: GRE over IPv4 demultiplexor driver\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gre_init\00", [23 x i8] zeroinitializer }, align 32
@gre_init._entry_ptr = internal global ptr @gre_init._entry, section ".printk_index", align 4
@gre_init._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str, i32 205, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013gre: can't add protocol\0A\00", [37 x i8] zeroinitializer }, align 32
@gre_init._entry_ptr.9 = internal global ptr @gre_init._entry.7, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 2, i64 1, i64 3]
@___asan_gen_.10 = private unnamed_addr constant [17 x i8] c"net_gre_protocol\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 195, i32 34 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 160, i32 10 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 695, i32 2 }
@___asan_gen_.26 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 723, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 202, i32 2 }
@___asan_gen_.37 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.40 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.41 = private constant [24 x i8] c"../net/ipv4/gre_demux.c\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 205, i32 3 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @__UNIQUE_ID_author581, ptr @__UNIQUE_ID_description580, ptr @__UNIQUE_ID_file582, ptr @__UNIQUE_ID_license583, ptr @__exitcall_gre_exit, ptr @__initcall__kmod_gre__579_216_gre_init6, ptr @__ksymtab_gre_add_protocol, ptr @__ksymtab_gre_del_protocol, ptr @__ksymtab_gre_parse_header, ptr @gre_exit, ptr @gre_init._entry, ptr @gre_init._entry.7, ptr @gre_init._entry_ptr, ptr @gre_init._entry_ptr.9, ptr @net_gre_protocol, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @net_gre_protocol to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gre_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gre_init._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gre_add_protocol(ptr noundef %proto, i8 noundef zeroext %version) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %version)
  %cmp = icmp ugt i8 %version, 1
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  %conv = zext i8 %version to i32
  %arrayidx = getelementptr [2 x ptr], ptr @gre_proto, i32 0, i32 %conv
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !53
  %0 = ptrtoint ptr %proto to i32
  tail call void @llvm.prefetch.p0(ptr %arrayidx, i32 1, i32 3, i32 1) #8
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.end
  %1 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %arrayidx, i32 0, i32 %0) #8, !srcloc !54
  %asmresult.i = extractvalue { i32, i32 } %1, 0
  %tobool.not.i = icmp eq i32 %asmresult.i, 0
  br i1 %tobool.not.i, label %__cmpxchg.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

__cmpxchg.exit:                                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %asmresult1.i = extractvalue { i32, i32 } %1, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !55
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult1.i)
  %cmp16 = icmp eq i32 %asmresult1.i, 0
  %cond = select i1 %cmp16, i32 0, i32 -16
  br label %return

return:                                           ; preds = %__cmpxchg.exit, %entry.return_crit_edge
  %retval.0 = phi i32 [ %cond, %__cmpxchg.exit ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gre_del_protocol(ptr noundef %proto, i8 noundef zeroext %version) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %version)
  %cmp = icmp ugt i8 %version, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i8 %version to i32
  %arrayidx = getelementptr [2 x ptr], ptr @gre_proto, i32 0, i32 %conv
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !56
  %0 = ptrtoint ptr %proto to i32
  tail call void @llvm.prefetch.p0(ptr %arrayidx, i32 1, i32 3, i32 1) #8
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.end
  %1 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %arrayidx, i32 %0, i32 0) #8, !srcloc !54
  %asmresult.i = extractvalue { i32, i32 } %1, 0
  %tobool.not.i = icmp eq i32 %asmresult.i, 0
  br i1 %tobool.not.i, label %__cmpxchg.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

__cmpxchg.exit:                                   ; preds = %do.body.i
  %asmresult1.i = extractvalue { i32, i32 } %1, 1
  %2 = inttoptr i32 %asmresult1.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !57
  %cmp16 = icmp eq ptr %2, %proto
  br i1 %cmp16, label %if.end19, label %__cmpxchg.exit.cleanup_crit_edge

__cmpxchg.exit.cleanup_crit_edge:                 ; preds = %__cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end19:                                         ; preds = %__cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @synchronize_rcu() #8
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %__cmpxchg.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end19 ], [ -22, %entry.cleanup_crit_edge ], [ -16, %__cmpxchg.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gre_parse_header(ptr noundef %skb, ptr nocapture noundef %tpi, ptr noundef writeonly %csum_err, i16 noundef zeroext %proto, i32 noundef %nhs) #0 align 64 {
entry:
  %_val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %nhs, 4
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %2 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %1, %3
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %sub.i.i)
  %cmp.not.i = icmp ugt i32 %add, %sub.i.i
  br i1 %cmp.not.i, label %if.end.i, label %entry.if.end_crit_edge, !prof !58

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %add)
  %cmp3.i = icmp ult i32 %1, %add
  br i1 %cmp3.i, label %if.end.i.cleanup121_crit_edge, label %pskb_may_pull.exit, !prof !58

if.end.i.cleanup121_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup121

pskb_may_pull.exit:                               ; preds = %if.end.i
  %sub.i = sub i32 %add, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i) #8
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.cleanup121_crit_edge, label %pskb_may_pull.exit.if.end_crit_edge, !prof !58

pskb_may_pull.exit.if.end_crit_edge:              ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

pskb_may_pull.exit.cleanup121_crit_edge:          ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup121

if.end:                                           ; preds = %pskb_may_pull.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 %nhs
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %add.ptr, align 1
  %8 = and i16 %7, 16391
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool3.not = icmp eq i16 %8, 0
  br i1 %tobool3.not, label %if.end11, label %if.end.cleanup121_crit_edge, !prof !59

if.end.cleanup121_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup121

if.end11:                                         ; preds = %if.end
  %conv.i = zext i16 %7 to i32
  %and.lobit.i = lshr i16 %7, 15
  %and4.i = lshr i16 %7, 13
  %9 = and i16 %and4.i, 2
  %10 = or i16 %9, %and.lobit.i
  %and12.i = lshr i16 %7, 11
  %11 = and i16 %and12.i, 4
  %12 = or i16 %10, %11
  %and20.i = lshr i16 %7, 9
  %13 = and i16 %and20.i, 8
  %14 = or i16 %12, %13
  %and28.i = lshr i16 %7, 7
  %15 = and i16 %and28.i, 16
  %16 = or i16 %14, %15
  %and36.i = and i32 %conv.i, 1792
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i)
  %tobool37.not.i = icmp eq i32 %and36.i, 0
  %17 = or i16 %16, 32
  %tflags.5.i = select i1 %tobool37.not.i, i16 %16, i16 %17
  %and44.i = and i32 %conv.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44.i)
  %tobool45.not.i = icmp eq i32 %and44.i, 0
  %18 = or i16 %tflags.5.i, 64
  %tflags.6.i = select i1 %tobool45.not.i, i16 %tflags.5.i, i16 %18
  %19 = ptrtoint ptr %tpi to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %tflags.6.i, ptr %tpi, align 4
  %conv.i177 = zext i16 %tflags.6.i to i32
  %and.i = and i32 %conv.i177, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %spec.select.i = select i1 %tobool.not.i, i32 4, i32 8
  %and2.i = and i32 %conv.i177, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  %add5.i = add nuw nsw i32 %spec.select.i, 4
  %addend.1.i = select i1 %tobool3.not.i, i32 %spec.select.i, i32 %add5.i
  %and8.i = and i32 %conv.i177, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  %add11.i = add nuw nsw i32 %addend.1.i, 4
  %addend.2.i = select i1 %tobool9.not.i, i32 %addend.1.i, i32 %add11.i
  %add17 = add i32 %addend.2.i, %nhs
  %20 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len.i.i, align 4
  %22 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i180 = sub i32 %21, %23
  call void @__sanitizer_cov_trace_cmp4(i32 %add17, i32 %sub.i.i180)
  %cmp.not.i181 = icmp ugt i32 %add17, %sub.i.i180
  br i1 %cmp.not.i181, label %if.end.i183, label %if.end11.if.end20_crit_edge, !prof !58

if.end11.if.end20_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.end.i183:                                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %add17)
  %cmp3.i182 = icmp ult i32 %21, %add17
  br i1 %cmp3.i182, label %if.end.i183.cleanup121_crit_edge, label %pskb_may_pull.exit189, !prof !58

if.end.i183.cleanup121_crit_edge:                 ; preds = %if.end.i183
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup121

pskb_may_pull.exit189:                            ; preds = %if.end.i183
  %sub.i184 = sub i32 %add17, %sub.i.i180
  %call13.i185 = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i184) #8
  %cmp14.i186.not = icmp eq ptr %call13.i185, null
  br i1 %cmp14.i186.not, label %pskb_may_pull.exit189.cleanup121_crit_edge, label %pskb_may_pull.exit189.if.end20_crit_edge

pskb_may_pull.exit189.if.end20_crit_edge:         ; preds = %pskb_may_pull.exit189
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

pskb_may_pull.exit189.cleanup121_crit_edge:       ; preds = %pskb_may_pull.exit189
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup121

if.end20:                                         ; preds = %pskb_may_pull.exit189.if.end20_crit_edge, %if.end11.if.end20_crit_edge
  %24 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data, align 4
  %add.ptr22 = getelementptr i8, ptr %25, i32 %nhs
  %protocol = getelementptr inbounds %struct.gre_base_hdr, ptr %add.ptr22, i32 0, i32 1
  %26 = ptrtoint ptr %protocol to i32
  call void @__asan_loadN_noabort(i32 %26, i32 2)
  %27 = load i16, ptr %protocol, align 1
  %proto23 = getelementptr inbounds %struct.tnl_ptk_info, ptr %tpi, i32 0, i32 1
  %28 = ptrtoint ptr %proto23 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %proto23, align 2
  %add.ptr24 = getelementptr %struct.gre_base_hdr, ptr %add.ptr22, i32 1
  %29 = ptrtoint ptr %add.ptr22 to i32
  call void @__asan_loadN_noabort(i32 %29, i32 2)
  %30 = load i16, ptr %add.ptr22, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %30)
  %tobool28.not = icmp sgt i16 %30, -1
  br i1 %tobool28.not, label %if.end20.if.end45_crit_edge, label %if.then29

if.end20.if.end45_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

if.then29:                                        ; preds = %if.end20
  %csum_valid = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %31 = ptrtoint ptr %csum_valid to i32
  call void @__asan_load2_noabort(i32 %31)
  %bf.load = load i16, ptr %csum_valid, align 8
  %bf.clear = and i16 %bf.load, -2
  store i16 %bf.clear, ptr %csum_valid, align 8
  %bf.lshr.i.i = lshr i16 %bf.load, 9
  %trunc = trunc i16 %bf.lshr.i.i to i2
  %32 = zext i2 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values)
  switch i2 %trunc, label %if.then29.if.then31_crit_edge [
    i2 1, label %if.then29.if.then.i_crit_edge
    i2 -1, label %skb_csum_unnecessary.exit.i
  ]

if.then29.if.then.i_crit_edge:                    ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then29.if.then31_crit_edge:                    ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then31

skb_csum_unnecessary.exit.i:                      ; preds = %if.then29
  %33 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %33, align 8
  %conv.i.i.i = zext i16 %35 to i32
  %36 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %data, align 4
  %head.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %38 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %head.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %37 to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %39 to i32
  %sub.ptr.sub.i.neg.i.i.i = sub i32 %conv.i.i.i, %sub.ptr.lhs.cast.i.i.i.i
  %sub.i.i.i = add i32 %sub.ptr.sub.i.neg.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i)
  %tobool.not.i190 = icmp slt i32 %sub.i.i.i, 0
  br i1 %tobool.not.i190, label %skb_csum_unnecessary.exit.i.if.then31_crit_edge, label %skb_csum_unnecessary.exit.i.if.then.i_crit_edge

skb_csum_unnecessary.exit.i.if.then.i_crit_edge:  ; preds = %skb_csum_unnecessary.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

skb_csum_unnecessary.exit.i.if.then31_crit_edge:  ; preds = %skb_csum_unnecessary.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then31

if.then.i:                                        ; preds = %skb_csum_unnecessary.exit.i.if.then.i_crit_edge, %if.then29.if.then.i_crit_edge
  %bf.set.i = or i16 %bf.load, 1
  %40 = ptrtoint ptr %csum_valid to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %bf.set.i, ptr %csum_valid, align 8
  %41 = and i16 %bf.load, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %41)
  %cmp.i3.i = icmp eq i16 %41, 512
  br i1 %cmp.i3.i, label %if.then.i.i, label %if.then.i.do.body_crit_edge

if.then.i.do.body_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.then.i.i:                                      ; preds = %if.then.i
  %csum_level.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %42 = ptrtoint ptr %csum_level.i.i to i32
  call void @__asan_loadN_noabort(i32 %42, i32 4)
  %bf.load2.i.i = load i32, ptr %csum_level.i.i, align 2
  %43 = and i32 %bf.load2.i.i, 805306368
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp7.i.i = icmp eq i32 %43, 0
  br i1 %cmp7.i.i, label %if.then9.i.i, label %if.else.i.i

if.then9.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %bf.clear12.i.i = and i16 %bf.set.i, -1537
  %44 = ptrtoint ptr %csum_valid to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %bf.clear12.i.i, ptr %csum_valid, align 8
  br label %do.body

if.else.i.i:                                      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %45 = add i32 %bf.load2.i.i, 805306368
  %bf.shl.i.i = and i32 %45, 805306368
  %bf.clear19.i.i = and i32 %bf.load2.i.i, -805306369
  %bf.set20.i.i = or i32 %bf.shl.i.i, %bf.clear19.i.i
  %46 = ptrtoint ptr %csum_level.i.i to i32
  call void @__asan_storeN_noabort(i32 %46, i32 4)
  store i32 %bf.set20.i.i, ptr %csum_level.i.i, align 2
  br label %do.body

if.then31:                                        ; preds = %skb_csum_unnecessary.exit.i.if.then31_crit_edge, %if.then29.if.then31_crit_edge
  %47 = ptrtoint ptr %csum_valid to i32
  call void @__asan_load2_noabort(i32 %47)
  %bf.load.i = load i16, ptr %csum_valid, align 8
  %48 = and i16 %bf.load.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %48)
  %cmp.i = icmp eq i16 %48, 1024
  br i1 %cmp.i, label %if.then.i192, label %if.then31.__skb_checksum_validate_complete.exit_crit_edge

if.then31.__skb_checksum_validate_complete.exit_crit_edge: ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #10
  br label %__skb_checksum_validate_complete.exit

if.then.i192:                                     ; preds = %if.then31
  %49 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %49, align 8
  %52 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %51) #11, !srcloc !60
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65537, i32 %52)
  %tobool.not.i191 = icmp ugt i32 %52, -65537
  br i1 %tobool.not.i191, label %__skb_checksum_validate_complete.exit.thread, label %if.then.i192.__skb_checksum_validate_complete.exit_crit_edge

if.then.i192.__skb_checksum_validate_complete.exit_crit_edge: ; preds = %if.then.i192
  call void @__sanitizer_cov_trace_pc() #10
  br label %__skb_checksum_validate_complete.exit

__skb_checksum_validate_complete.exit.thread:     ; preds = %if.then.i192
  call void @__sanitizer_cov_trace_pc() #10
  %bf.set.i193 = or i16 %bf.load.i, 1
  %53 = ptrtoint ptr %csum_valid to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %bf.set.i193, ptr %csum_valid, align 8
  br label %do.body

__skb_checksum_validate_complete.exit:            ; preds = %if.then.i192.__skb_checksum_validate_complete.exit_crit_edge, %if.then31.__skb_checksum_validate_complete.exit_crit_edge
  %54 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %54, align 8
  %call12.i = tail call zeroext i16 @__skb_checksum_complete(ptr noundef %skb) #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call12.i)
  %tobool13.not.i = icmp eq i16 %call12.i, 0
  %56 = zext i1 %tobool13.not.i to i16
  %57 = ptrtoint ptr %csum_valid to i32
  call void @__asan_load2_noabort(i32 %57)
  %bf.load16.i = load i16, ptr %csum_valid, align 8
  %bf.clear17.i = and i16 %bf.load16.i, -2
  %bf.set18.i = or i16 %bf.clear17.i, %56
  store i16 %bf.set18.i, ptr %csum_valid, align 8
  br i1 %tobool13.not.i, label %__skb_checksum_validate_complete.exit.do.body_crit_edge, label %if.else

__skb_checksum_validate_complete.exit.do.body_crit_edge: ; preds = %__skb_checksum_validate_complete.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.body:                                          ; preds = %__skb_checksum_validate_complete.exit.do.body_crit_edge, %__skb_checksum_validate_complete.exit.thread, %if.else.i.i, %if.then9.i.i, %if.then.i.do.body_crit_edge
  %58 = ptrtoint ptr %csum_valid to i32
  call void @__asan_load2_noabort(i32 %58)
  %bf.load.i196 = load i16, ptr %csum_valid, align 8
  %59 = and i16 %bf.load.i196, 1537
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %59)
  %60 = icmp eq i16 %59, 1
  br i1 %60, label %if.then38, label %do.body.if.end44_crit_edge

do.body.if.end44_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44

if.then38:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %61 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 -1, ptr %61, align 8
  %bf.clear.i = and i16 %bf.load.i196, -1537
  %bf.set.i199 = or i16 %bf.clear.i, 1024
  %63 = ptrtoint ptr %csum_valid to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %bf.set.i199, ptr %csum_valid, align 8
  br label %if.end44

if.else:                                          ; preds = %__skb_checksum_validate_complete.exit
  %tobool41.not = icmp eq ptr %csum_err, null
  br i1 %tobool41.not, label %if.else.if.end44_crit_edge, label %if.then42

if.else.if.end44_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44

if.then42:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %64 = ptrtoint ptr %csum_err to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 1, ptr %csum_err, align 1
  br label %cleanup121

if.end44:                                         ; preds = %if.else.if.end44_crit_edge, %if.then38, %do.body.if.end44_crit_edge
  %incdec.ptr = getelementptr i32, ptr %add.ptr24, i32 1
  br label %if.end45

if.end45:                                         ; preds = %if.end44, %if.end20.if.end45_crit_edge
  %options.0 = phi ptr [ %incdec.ptr, %if.end44 ], [ %add.ptr24, %if.end20.if.end45_crit_edge ]
  %65 = ptrtoint ptr %add.ptr22 to i32
  call void @__asan_loadN_noabort(i32 %65, i32 2)
  %66 = load i16, ptr %add.ptr22, align 1
  %67 = and i16 %66, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %67)
  %tobool49.not = icmp eq i16 %67, 0
  br i1 %tobool49.not, label %if.end45.if.end54_crit_edge, label %if.then50

if.end45.if.end54_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54

if.then50:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  %68 = ptrtoint ptr %options.0 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %options.0, align 4
  %incdec.ptr51 = getelementptr i32, ptr %options.0, i32 1
  br label %if.end54

if.end54:                                         ; preds = %if.then50, %if.end45.if.end54_crit_edge
  %.sink = phi i32 [ %69, %if.then50 ], [ 0, %if.end45.if.end54_crit_edge ]
  %options.1 = phi ptr [ %incdec.ptr51, %if.then50 ], [ %options.0, %if.end45.if.end54_crit_edge ]
  %70 = getelementptr inbounds %struct.tnl_ptk_info, ptr %tpi, i32 0, i32 2
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %.sink, ptr %70, align 4
  %72 = ptrtoint ptr %add.ptr22 to i32
  call void @__asan_loadN_noabort(i32 %72, i32 2)
  %73 = load i16, ptr %add.ptr22, align 1
  %74 = and i16 %73, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %74)
  %tobool58.not = icmp eq i16 %74, 0
  br i1 %tobool58.not, label %if.end54.if.end69_crit_edge, label %if.then65, !prof !59

if.end54.if.end69_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then65:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  %75 = ptrtoint ptr %options.1 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %options.1, align 4
  br label %if.end69

if.end69:                                         ; preds = %if.then65, %if.end54.if.end69_crit_edge
  %.sink242 = phi i32 [ %76, %if.then65 ], [ 0, %if.end54.if.end69_crit_edge ]
  %77 = getelementptr inbounds %struct.tnl_ptk_info, ptr %tpi, i32 0, i32 3
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %.sink242, ptr %77, align 4
  %79 = ptrtoint ptr %add.ptr22 to i32
  call void @__asan_loadN_noabort(i32 %79, i32 2)
  %80 = load i16, ptr %add.ptr22, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %80)
  %cmp = icmp eq i16 %80, 0
  br i1 %cmp, label %land.lhs.true, label %if.end69.if.end92_crit_edge

if.end69.if.end92_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end92

land.lhs.true:                                    ; preds = %if.end69
  %81 = ptrtoint ptr %proto23 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %proto23, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30658, i16 %82)
  %cmp75 = icmp eq i16 %82, -30658
  br i1 %cmp75, label %if.then77, label %land.lhs.true.if.end92_crit_edge

land.lhs.true.if.end92_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end92

if.then77:                                        ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %_val) #8
  %83 = ptrtoint ptr %_val to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 -1, ptr %_val, align 1, !annotation !61
  %84 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %len.i.i, align 4
  %86 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %data_len.i.i, align 8
  %88 = add i32 %add17, %87
  %sub.i1.i = sub i32 %85, %88
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i1.i)
  %cmp.i.i202 = icmp sgt i32 %sub.i1.i, 0
  br i1 %cmp.i.i202, label %skb_header_pointer.exit, label %if.end.i.i, !prof !59

if.end.i.i:                                       ; preds = %if.then77
  %tobool2.not.i.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.cleanup.thread_crit_edge, label %lor.lhs.false.i.i

if.end.i.i.cleanup.thread_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %call.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %add17, ptr noundef nonnull %_val, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i.i, label %lor.lhs.false.i.i.cleanup.thread_crit_edge, label %lor.lhs.false.i.i.cleanup_crit_edge

lor.lhs.false.i.i.cleanup_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false.i.i.cleanup.thread_crit_edge:       ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

skb_header_pointer.exit:                          ; preds = %if.then77
  %89 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %data, align 4
  %add.ptr.i.i = getelementptr i8, ptr %90, i32 %add17
  %tobool80.not = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool80.not, label %skb_header_pointer.exit.cleanup.thread_crit_edge, label %skb_header_pointer.exit.cleanup_crit_edge

skb_header_pointer.exit.cleanup_crit_edge:        ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

skb_header_pointer.exit.cleanup.thread_crit_edge: ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %skb_header_pointer.exit.cleanup.thread_crit_edge, %lor.lhs.false.i.i.cleanup.thread_crit_edge, %if.end.i.i.cleanup.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %_val) #8
  br label %cleanup121

cleanup:                                          ; preds = %skb_header_pointer.exit.cleanup_crit_edge, %lor.lhs.false.i.i.cleanup_crit_edge
  %retval.0.i.i233 = phi ptr [ %add.ptr.i.i, %skb_header_pointer.exit.cleanup_crit_edge ], [ %_val, %lor.lhs.false.i.i.cleanup_crit_edge ]
  %91 = ptrtoint ptr %proto23 to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 %proto, ptr %proto23, align 2
  %92 = ptrtoint ptr %retval.0.i.i233 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %retval.0.i.i233, align 1
  %94 = and i8 %93, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %94)
  %cmp86.not = icmp eq i8 %94, 64
  %add89 = add nuw nsw i32 %addend.2.i, 4
  %spec.select = select i1 %cmp86.not, i32 %addend.2.i, i32 %add89
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %_val) #8
  br label %if.end92

if.end92:                                         ; preds = %cleanup, %land.lhs.true.if.end92_crit_edge, %if.end69.if.end92_crit_edge
  %hdr_len.2 = phi i32 [ %spec.select, %cleanup ], [ %addend.2.i, %land.lhs.true.if.end92_crit_edge ], [ %addend.2.i, %if.end69.if.end92_crit_edge ]
  %hdr_len93 = getelementptr inbounds %struct.tnl_ptk_info, ptr %tpi, i32 0, i32 4
  %95 = ptrtoint ptr %hdr_len93 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %hdr_len.2, ptr %hdr_len93, align 4
  %96 = ptrtoint ptr %protocol to i32
  call void @__asan_loadN_noabort(i32 %96, i32 2)
  %97 = load i16, ptr %protocol, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30530, i16 %97)
  %cmp96 = icmp eq i16 %97, -30530
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %hdr_len.2)
  %cmp99.not = icmp ne i32 %hdr_len.2, 4
  %or.cond = select i1 %cmp96, i1 %cmp99.not, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 8939, i16 %97)
  %cmp103 = icmp eq i16 %97, 8939
  %or.cond240 = or i1 %cmp103, %or.cond
  br i1 %or.cond240, label %if.then105, label %if.end92.cleanup121_crit_edge

if.end92.cleanup121_crit_edge:                    ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup121

if.then105:                                       ; preds = %if.end92
  %add107 = add i32 %add, %hdr_len.2
  %98 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %len.i.i, align 4
  %100 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i206 = sub i32 %99, %101
  call void @__sanitizer_cov_trace_cmp4(i32 %add107, i32 %sub.i.i206)
  %cmp.not.i207 = icmp ugt i32 %add107, %sub.i.i206
  br i1 %cmp.not.i207, label %if.end.i209, label %if.then105.if.end110_crit_edge, !prof !58

if.then105.if.end110_crit_edge:                   ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end110

if.end.i209:                                      ; preds = %if.then105
  call void @__sanitizer_cov_trace_cmp4(i32 %99, i32 %add107)
  %cmp3.i208 = icmp ult i32 %99, %add107
  br i1 %cmp3.i208, label %if.end.i209.cleanup121_crit_edge, label %pskb_may_pull.exit215, !prof !58

if.end.i209.cleanup121_crit_edge:                 ; preds = %if.end.i209
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup121

pskb_may_pull.exit215:                            ; preds = %if.end.i209
  %sub.i210 = sub i32 %add107, %sub.i.i206
  %call13.i211 = call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i210) #8
  %cmp14.i212.not = icmp eq ptr %call13.i211, null
  br i1 %cmp14.i212.not, label %pskb_may_pull.exit215.cleanup121_crit_edge, label %pskb_may_pull.exit215.if.end110_crit_edge

pskb_may_pull.exit215.if.end110_crit_edge:        ; preds = %pskb_may_pull.exit215
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end110

pskb_may_pull.exit215.cleanup121_crit_edge:       ; preds = %pskb_may_pull.exit215
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup121

if.end110:                                        ; preds = %pskb_may_pull.exit215.if.end110_crit_edge, %if.then105.if.end110_crit_edge
  %102 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %data, align 4
  %add.ptr112 = getelementptr i8, ptr %103, i32 %nhs
  %add.ptr113 = getelementptr i8, ptr %add.ptr112, i32 %hdr_len.2
  %104 = ptrtoint ptr %add.ptr113 to i32
  call void @__asan_loadN_noabort(i32 %104, i32 4)
  %bf.load.i216 = load i32, ptr %add.ptr113, align 1
  %conv5.i = and i32 %bf.load.i216, 1023
  %105 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %conv5.i, ptr %70, align 4
  br label %cleanup121

cleanup121:                                       ; preds = %if.end110, %pskb_may_pull.exit215.cleanup121_crit_edge, %if.end.i209.cleanup121_crit_edge, %if.end92.cleanup121_crit_edge, %cleanup.thread, %if.then42, %pskb_may_pull.exit189.cleanup121_crit_edge, %if.end.i183.cleanup121_crit_edge, %if.end.cleanup121_crit_edge, %pskb_may_pull.exit.cleanup121_crit_edge, %if.end.i.cleanup121_crit_edge
  %retval.3 = phi i32 [ -22, %if.then42 ], [ -22, %pskb_may_pull.exit.cleanup121_crit_edge ], [ -22, %if.end.cleanup121_crit_edge ], [ -22, %pskb_may_pull.exit189.cleanup121_crit_edge ], [ %hdr_len.2, %if.end110 ], [ -22, %pskb_may_pull.exit215.cleanup121_crit_edge ], [ -22, %cleanup.thread ], [ -22, %if.end.i.cleanup121_crit_edge ], [ -22, %if.end.i183.cleanup121_crit_edge ], [ -22, %if.end.i209.cleanup121_crit_edge ], [ %hdr_len.2, %if.end92.cleanup121_crit_edge ]
  ret i32 %retval.3
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @gre_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @inet_del_protocol(ptr noundef nonnull @net_gre_protocol, i8 noundef zeroext 47) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_del_protocol(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @gre_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #12
  %call1 = tail call i32 @inet_add_protocol(ptr noundef nonnull @net_gre_protocol, i8 noundef zeroext 47) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end3, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

do.end3:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #12
  br label %return

return:                                           ; preds = %do.end3, %entry.return_crit_edge
  %retval.0 = phi i32 [ -11, %do.end3 ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @__skb_checksum_complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gre_rcv(ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %2 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %1, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %sub.i.i)
  %cmp.not.i = icmp ult i32 %sub.i.i, 12
  br i1 %cmp.not.i, label %if.end.i, label %entry.if.end_crit_edge, !prof !58

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %1)
  %cmp3.i = icmp ult i32 %1, 12
  br i1 %cmp3.i, label %if.end.i.drop_crit_edge, label %pskb_may_pull.exit, !prof !58

if.end.i.drop_crit_edge:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %drop

pskb_may_pull.exit:                               ; preds = %if.end.i
  %sub.i = sub nuw nsw i32 12, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i) #8
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.drop_crit_edge, label %pskb_may_pull.exit.if.end_crit_edge

pskb_may_pull.exit.if.end_crit_edge:              ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

pskb_may_pull.exit.drop_crit_edge:                ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %drop

if.end:                                           ; preds = %pskb_may_pull.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %arrayidx = getelementptr i8, ptr %5, i32 1
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  %8 = and i8 %7, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %8)
  %cmp = icmp ugt i8 %8, 1
  br i1 %cmp, label %if.end.drop_crit_edge, label %if.end5

if.end.drop_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %drop

if.end5:                                          ; preds = %if.end
  %conv2 = zext i8 %8 to i32
  %9 = tail call i32 @llvm.read_register.i32(metadata !43) #8
  %and.i.i.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %12, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !62
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i, label %if.end5.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end5.rcu_read_lock.exit_crit_edge:             ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end5
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 696, ptr noundef nonnull @.str.3) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end5.rcu_read_lock.exit_crit_edge
  %arrayidx6 = getelementptr [2 x ptr], ptr @gre_proto, i32 0, i32 %conv2
  %13 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %arrayidx6, align 4
  %call8 = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end16_crit_edge

rcu_read_lock.exit.do.end16_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end16

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call9 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %land.lhs.true.do.end16_crit_edge, label %land.lhs.true11

land.lhs.true.do.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end16

land.lhs.true11:                                  ; preds = %land.lhs.true
  %.b33 = load i1, ptr @gre_rcv.__warned, align 1
  br i1 %.b33, label %land.lhs.true11.do.end16_crit_edge, label %if.then13

land.lhs.true11.do.end16_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end16

if.then13:                                        ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @gre_rcv.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 160, ptr noundef nonnull @.str.1) #8
  br label %do.end16

do.end16:                                         ; preds = %if.then13, %land.lhs.true11.do.end16_crit_edge, %land.lhs.true.do.end16_crit_edge, %rcu_read_lock.exit.do.end16_crit_edge
  %tobool18.not = icmp eq ptr %14, null
  br i1 %tobool18.not, label %do.end16.drop_unlock_crit_edge, label %lor.lhs.false

do.end16.drop_unlock_crit_edge:                   ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %drop_unlock

lor.lhs.false:                                    ; preds = %do.end16
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %tobool19.not = icmp eq ptr %16, null
  br i1 %tobool19.not, label %lor.lhs.false.drop_unlock_crit_edge, label %if.end21

lor.lhs.false.drop_unlock_crit_edge:              ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %drop_unlock

if.end21:                                         ; preds = %lor.lhs.false
  %call23 = tail call i32 %16(ptr noundef %skb) #8
  %call.i34 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i34, label %if.end21.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i37

if.end21.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i37:                                ; preds = %if.end21
  %call1.i35 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i35)
  %tobool.not.i36 = icmp eq i32 %call1.i35, 0
  br i1 %tobool.not.i36, label %land.lhs.true.i37.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i39

land.lhs.true.i37.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i37
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i39:                               ; preds = %land.lhs.true.i37
  %.b4.i38 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i38, label %land.lhs.true2.i39.rcu_read_unlock.exit_crit_edge, label %if.then.i40

land.lhs.true2.i39.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i39
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i40:                                      ; preds = %land.lhs.true2.i39
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 724, ptr noundef nonnull @.str.4) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i40, %land.lhs.true2.i39.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i37.rcu_read_unlock.exit_crit_edge, %if.end21.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !63
  %17 = tail call i32 @llvm.read_register.i32(metadata !43) #8
  %and.i.i.i.i.i41 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i.i.i41 to ptr
  %preempt_count.i.i.i.i42 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %preempt_count.i.i.i.i42 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %preempt_count.i.i.i.i42, align 4
  %sub.i.i.i = add i32 %20, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i42, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  br label %cleanup

drop_unlock:                                      ; preds = %lor.lhs.false.drop_unlock_crit_edge, %do.end16.drop_unlock_crit_edge
  %call.i43 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i43, label %drop_unlock.rcu_read_unlock.exit53_crit_edge, label %land.lhs.true.i46

drop_unlock.rcu_read_unlock.exit53_crit_edge:     ; preds = %drop_unlock
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit53

land.lhs.true.i46:                                ; preds = %drop_unlock
  %call1.i44 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i44)
  %tobool.not.i45 = icmp eq i32 %call1.i44, 0
  br i1 %tobool.not.i45, label %land.lhs.true.i46.rcu_read_unlock.exit53_crit_edge, label %land.lhs.true2.i48

land.lhs.true.i46.rcu_read_unlock.exit53_crit_edge: ; preds = %land.lhs.true.i46
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit53

land.lhs.true2.i48:                               ; preds = %land.lhs.true.i46
  %.b4.i47 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i47, label %land.lhs.true2.i48.rcu_read_unlock.exit53_crit_edge, label %if.then.i49

land.lhs.true2.i48.rcu_read_unlock.exit53_crit_edge: ; preds = %land.lhs.true2.i48
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit53

if.then.i49:                                      ; preds = %land.lhs.true2.i48
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 724, ptr noundef nonnull @.str.4) #8
  br label %rcu_read_unlock.exit53

rcu_read_unlock.exit53:                           ; preds = %if.then.i49, %land.lhs.true2.i48.rcu_read_unlock.exit53_crit_edge, %land.lhs.true.i46.rcu_read_unlock.exit53_crit_edge, %drop_unlock.rcu_read_unlock.exit53_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !63
  %21 = tail call i32 @llvm.read_register.i32(metadata !43) #8
  %and.i.i.i.i.i50 = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i.i.i50 to ptr
  %preempt_count.i.i.i.i51 = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %preempt_count.i.i.i.i51 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %preempt_count.i.i.i.i51, align 4
  %sub.i.i.i52 = add i32 %24, -1
  store volatile i32 %sub.i.i.i52, ptr %preempt_count.i.i.i.i51, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  br label %drop

drop:                                             ; preds = %rcu_read_unlock.exit53, %if.end.drop_crit_edge, %pskb_may_pull.exit.drop_crit_edge, %if.end.i.drop_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %drop, %rcu_read_unlock.exit
  %retval.0 = phi i32 [ 1, %drop ], [ %call23, %rcu_read_unlock.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gre_err(ptr noundef %skb, i32 noundef %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %1, align 4
  %bf.clear = shl i8 %bf.load, 2
  %3 = and i8 %bf.clear, 60
  %4 = or i8 %3, 1
  %add = zext i8 %4 to i32
  %arrayidx = getelementptr i8, ptr %1, i32 %add
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx, align 1
  %7 = and i8 %6, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp = icmp ugt i8 %7, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv4 = zext i8 %7 to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !43) #8
  %and.i.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %11, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !62
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 696, ptr noundef nonnull @.str.3) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %arrayidx6 = getelementptr [2 x ptr], ptr @gre_proto, i32 0, i32 %conv4
  %12 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %arrayidx6, align 4
  %call = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end15_crit_edge

rcu_read_lock.exit.do.end15_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end15

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call8 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %land.lhs.true.do.end15_crit_edge, label %land.lhs.true10

land.lhs.true.do.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end15

land.lhs.true10:                                  ; preds = %land.lhs.true
  %.b32 = load i1, ptr @gre_err.__warned, align 1
  br i1 %.b32, label %land.lhs.true10.do.end15_crit_edge, label %if.then12

land.lhs.true10.do.end15_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end15

if.then12:                                        ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @gre_err.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 185, ptr noundef nonnull @.str.1) #8
  br label %do.end15

do.end15:                                         ; preds = %if.then12, %land.lhs.true10.do.end15_crit_edge, %land.lhs.true.do.end15_crit_edge, %rcu_read_lock.exit.do.end15_crit_edge
  %tobool17.not = icmp eq ptr %13, null
  br i1 %tobool17.not, label %do.end15.if.end22_crit_edge, label %land.lhs.true18

do.end15.if.end22_crit_edge:                      ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

land.lhs.true18:                                  ; preds = %do.end15
  %err_handler = getelementptr inbounds %struct.gre_protocol, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %err_handler to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %err_handler, align 4
  %tobool19.not = icmp eq ptr %15, null
  br i1 %tobool19.not, label %land.lhs.true18.if.end22_crit_edge, label %if.then20

land.lhs.true18.if.end22_crit_edge:               ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.then20:                                        ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %15(ptr noundef %skb, i32 noundef %info) #8
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %land.lhs.true18.if.end22_crit_edge, %do.end15.if.end22_crit_edge
  %err.0 = phi i32 [ 0, %if.then20 ], [ -93, %land.lhs.true18.if.end22_crit_edge ], [ -93, %do.end15.if.end22_crit_edge ]
  %call.i33 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i33, label %if.end22.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i36

if.end22.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i36:                                ; preds = %if.end22
  %call1.i34 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i34)
  %tobool.not.i35 = icmp eq i32 %call1.i34, 0
  br i1 %tobool.not.i35, label %land.lhs.true.i36.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i38

land.lhs.true.i36.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i36
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i38:                               ; preds = %land.lhs.true.i36
  %.b4.i37 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i37, label %land.lhs.true2.i38.rcu_read_unlock.exit_crit_edge, label %if.then.i39

land.lhs.true2.i38.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i38
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i39:                                      ; preds = %land.lhs.true2.i38
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 724, ptr noundef nonnull @.str.4) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i39, %land.lhs.true2.i38.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i36.rcu_read_unlock.exit_crit_edge, %if.end22.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !63
  %16 = tail call i32 @llvm.read_register.i32(metadata !43) #8
  %and.i.i.i.i.i40 = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i.i.i40 to ptr
  %preempt_count.i.i.i.i41 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i.i.i.i41 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i.i.i.i41, align 4
  %sub.i.i.i = add i32 %19, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i41, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %rcu_read_unlock.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_add_protocol(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind readnone }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !19, !21, !23, !24, !25, !27, !28, !29, !31, !32, !34, !36, !37, !38, !39, !41, !42}
!llvm.named.register.sp = !{!43}
!llvm.module.flags = !{!44, !45, !46, !47, !48, !49, !50, !51}
!llvm.ident = !{!52}

!0 = !{ptr @__ksymtab_gre_add_protocol, !1, !"__ksymtab_gre_add_protocol", i1 false, i1 false}
!1 = !{!"../net/ipv4/gre_demux.c", i32 39, i32 1}
!2 = !{ptr @__ksymtab_gre_del_protocol, !3, !"__ksymtab_gre_del_protocol", i1 false, i1 false}
!3 = !{!"../net/ipv4/gre_demux.c", i32 57, i32 1}
!4 = !{ptr @__ksymtab_gre_parse_header, !5, !"__ksymtab_gre_parse_header", i1 false, i1 false}
!5 = !{!"../net/ipv4/gre_demux.c", i32 144, i32 1}
!6 = !{ptr @__initcall__kmod_gre__579_216_gre_init6, !7, !"__initcall__kmod_gre__579_216_gre_init6", i1 false, i1 false}
!7 = !{!"../net/ipv4/gre_demux.c", i32 216, i32 1}
!8 = !{ptr @__exitcall_gre_exit, !9, !"__exitcall_gre_exit", i1 false, i1 false}
!9 = !{!"../net/ipv4/gre_demux.c", i32 217, i32 1}
!10 = !{ptr @__UNIQUE_ID_description580, !11, !"__UNIQUE_ID_description580", i1 false, i1 false}
!11 = !{!"../net/ipv4/gre_demux.c", i32 219, i32 1}
!12 = !{ptr @__UNIQUE_ID_author581, !13, !"__UNIQUE_ID_author581", i1 false, i1 false}
!13 = !{!"../net/ipv4/gre_demux.c", i32 220, i32 1}
!14 = !{ptr @__UNIQUE_ID_file582, !15, !"__UNIQUE_ID_file582", i1 false, i1 false}
!15 = !{!"../net/ipv4/gre_demux.c", i32 221, i32 1}
!16 = !{ptr @__UNIQUE_ID_license583, !15, !"__UNIQUE_ID_license583", i1 false, i1 false}
!17 = !{ptr @gre_proto, !18, !"gre_proto", i1 false, i1 false}
!18 = !{!"../net/ipv4/gre_demux.c", i32 29, i32 41}
!19 = !{ptr @net_gre_protocol, !20, !"net_gre_protocol", i1 false, i1 false}
!20 = !{!"../net/ipv4/gre_demux.c", i32 195, i32 34}
!21 = distinct !{null, !22, !"__warned", i1 false, i1 false}
!22 = !{!"../net/ipv4/gre_demux.c", i32 160, i32 10}
!23 = !{ptr @.str, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.1, !22, !"<string literal>", i1 false, i1 false}
!25 = distinct !{null, !26, !"__warned", i1 false, i1 false}
!26 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!27 = !{ptr @.str.2, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!29 = distinct !{null, !30, !"__warned", i1 false, i1 false}
!30 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!31 = !{ptr @.str.4, !30, !"<string literal>", i1 false, i1 false}
!32 = distinct !{null, !33, !"__warned", i1 false, i1 false}
!33 = !{!"../net/ipv4/gre_demux.c", i32 185, i32 10}
!34 = !{ptr @.str.5, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../net/ipv4/gre_demux.c", i32 202, i32 2}
!36 = !{ptr @.str.6, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @gre_init._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @gre_init._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.8, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../net/ipv4/gre_demux.c", i32 205, i32 3}
!41 = !{ptr @gre_init._entry.7, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @gre_init._entry_ptr.9, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{!"sp"}
!44 = !{i32 1, !"wchar_size", i32 2}
!45 = !{i32 1, !"min_enum_size", i32 4}
!46 = !{i32 8, !"branch-target-enforcement", i32 0}
!47 = !{i32 8, !"sign-return-address", i32 0}
!48 = !{i32 8, !"sign-return-address-all", i32 0}
!49 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!50 = !{i32 7, !"uwtable", i32 1}
!51 = !{i32 7, !"frame-pointer", i32 2}
!52 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!53 = !{i64 2158164288}
!54 = !{i64 852518, i64 852539, i64 852562, i64 852581, i64 852600}
!55 = !{i64 2158164703}
!56 = !{i64 2158167250}
!57 = !{i64 2158167665}
!58 = !{!"branch_weights", i32 1, i32 2000}
!59 = !{!"branch_weights", i32 2000, i32 1}
!60 = !{i64 6598228}
!61 = !{!"auto-init"}
!62 = !{i64 2149359185}
!63 = !{i64 2149359451}
