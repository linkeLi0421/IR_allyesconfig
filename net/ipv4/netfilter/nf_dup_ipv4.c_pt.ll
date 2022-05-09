; ModuleID = '/llk/IR_all_yes/net/ipv4/netfilter/nf_dup_ipv4.c_pt.bc'
source_filename = "../net/ipv4/netfilter/nf_dup_ipv4.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+nf_dup_ipv4\22, \22a\22\09"
module asm "\09.weak\09__crc_nf_dup_ipv4\09\09\09\09"
module asm "\09.long\09__crc_nf_dup_ipv4\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nf_dup_ipv4:\09\09\09\09\09"
module asm "\09.asciz \09\22nf_dup_ipv4\22\09\09\09\09\09"
module asm "__kstrtabns_nf_dup_ipv4:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.flowi4 = type { %struct.flowi_common, i32, i32, %union.flowi_uli }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.kuid_t = type { i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.sk_buff = type { %union.anon.82, %union.anon.117, %union.anon.118, [48 x i8], %union.anon.119, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.121, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.82 = type { %struct.anon.83 }
%struct.anon.83 = type { ptr, ptr, %union.anon.84 }
%union.anon.84 = type { ptr }
%union.anon.117 = type { ptr }
%union.anon.118 = type { i64 }
%union.anon.119 = type { %struct.anon.120 }
%struct.anon.120 = type { i32, ptr }
%union.anon.121 = type { %struct.anon.122 }
%struct.anon.122 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.123, i32, i32, i32, i16, i16, %union.anon.125, i32, %union.anon.126, %union.anon.127, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.123 = type { i32 }
%union.anon.125 = type { i32 }
%union.anon.126 = type { i32 }
%union.anon.127 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }

@nf_skb_duplicated = external dso_local global i8, section ".data..percpu", align 1
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__kstrtab_nf_dup_ipv4 = external dso_local constant [0 x i8], align 1
@__kstrtabns_nf_dup_ipv4 = external dso_local constant [0 x i8], align 1
@__ksymtab_nf_dup_ipv4 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nf_dup_ipv4 to i32), ptr @__kstrtab_nf_dup_ipv4, ptr @__kstrtabns_nf_dup_ipv4 }, section "___ksymtab_gpl+nf_dup_ipv4", align 4
@__UNIQUE_ID_author593 = internal constant [68 x i8] c"nf_dup_ipv4.author=Sebastian Cla\C3\9Fen <sebastian.classen@freenet.ag>\00", section ".modinfo", align 1
@__UNIQUE_ID_author594 = internal constant [55 x i8] c"nf_dup_ipv4.author=Jan Engelhardt <jengelh@medozas.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description595 = internal constant [59 x i8] c"nf_dup_ipv4.description=nf_dup_ipv4: Duplicate IPv4 packet\00", section ".modinfo", align 1
@__UNIQUE_ID_file596 = internal constant [48 x i8] c"nf_dup_ipv4.file=net/ipv4/netfilter/nf_dup_ipv4\00", section ".modinfo", align 1
@__UNIQUE_ID_license597 = internal constant [24 x i8] c"nf_dup_ipv4.license=GPL\00", section ".modinfo", align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_author593, ptr @__UNIQUE_ID_author594, ptr @__UNIQUE_ID_description595, ptr @__UNIQUE_ID_file596, ptr @__UNIQUE_ID_license597, ptr @__ksymtab_nf_dup_ipv4], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nf_dup_ipv4(ptr noundef %net, ptr noundef %skb, i32 noundef %hooknum, ptr nocapture noundef readonly %gw, i32 noundef %oif) #0 align 64 {
entry:
  %fl4.i = alloca %struct.flowi4, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !13) #5
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %3, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !23
  %4 = tail call i32 @llvm.read_register.i32(metadata !13) #5
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %add = add i32 %9, ptrtoint (ptr @nf_skb_duplicated to i32)
  %10 = inttoptr i32 %add to ptr
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load volatile i8, ptr %10, align 1, !range !24
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not = icmp eq i8 %12, 0
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !25
  %13 = tail call i32 @llvm.read_register.i32(metadata !13) #5
  %and.i.i.i100 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i100 to ptr
  %preempt_count.i.i101 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i101 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i101, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i101, align 4
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %17 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data.i.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %19 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %18 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %20 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %call.i.i = tail call ptr @__pskb_copy_fclone(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i, i32 noundef 2592, i1 noundef zeroext false) #5
  %cmp = icmp eq ptr %call.i.i, null
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end34

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end34:                                         ; preds = %if.end
  %_nfct.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 5
  %21 = ptrtoint ptr %_nfct.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %_nfct.i.i, align 8
  %and.i.i = and i32 %22, -8
  %23 = inttoptr i32 %and.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end34.nf_reset_ct.exit_crit_edge, label %land.lhs.true.i.i

if.end34.nf_reset_ct.exit_crit_edge:              ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  br label %nf_reset_ct.exit

land.lhs.true.i.i:                                ; preds = %if.end34
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %23, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !26
  tail call void @llvm.prefetch.p0(ptr nonnull %23, i32 1, i32 3, i32 1) #5
  %24 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %23, ptr nonnull %23, i32 1, ptr nonnull elementtype(i32) %23) #5, !srcloc !27
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %24, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.nf_reset_ct.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !28

if.end5.i.i.i.i.i.nf_reset_ct.exit_crit_edge:     ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nf_reset_ct.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @refcount_warn_saturate(ptr noundef nonnull %23, i32 noundef 3) #5
  br label %nf_reset_ct.exit

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !29
  tail call void @nf_conntrack_destroy(ptr noundef nonnull %23) #5
  br label %nf_reset_ct.exit

nf_reset_ct.exit:                                 ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.nf_reset_ct.exit_crit_edge, %if.end34.nf_reset_ct.exit_crit_edge
  %slow_gro.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 3
  %25 = ptrtoint ptr %slow_gro.i.i to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %bf.load.i.i = load i32, ptr %slow_gro.i.i, align 2
  %bf.set.i.i = or i32 %bf.load.i.i, 4096
  store i32 %bf.set.i.i, ptr %slow_gro.i.i, align 2
  %26 = ptrtoint ptr %_nfct.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 7, ptr %_nfct.i.i, align 8
  %head.i.i103 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 18
  %27 = ptrtoint ptr %head.i.i103 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %head.i.i103, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 20
  %29 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %30 to i32
  %add.ptr.i.i = getelementptr i8, ptr %28, i32 %conv.i.i
  %frag_off = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 4
  %31 = ptrtoint ptr %frag_off to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %frag_off, align 2
  %33 = or i16 %32, 16384
  store i16 %33, ptr %frag_off, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %hooknum)
  %switch = icmp ult i32 %hooknum, 2
  br i1 %switch, label %if.then41, label %nf_reset_ct.exit.if.end42_crit_edge

nf_reset_ct.exit.if.end42_crit_edge:              ; preds = %nf_reset_ct.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42

if.then41:                                        ; preds = %nf_reset_ct.exit
  call void @__sanitizer_cov_trace_pc() #7
  %ttl = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 5
  %34 = ptrtoint ptr %ttl to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %ttl, align 4
  %dec = add i8 %35, -1
  store i8 %dec, ptr %ttl, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then41, %nf_reset_ct.exit.if.end42_crit_edge
  %36 = ptrtoint ptr %head.i.i103 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %head.i.i103, align 8
  %38 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i.i = zext i16 %39 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %37, i32 %conv.i.i.i
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %fl4.i) #5
  %40 = call ptr @memset(ptr %fl4.i, i32 0, i32 56)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %oif)
  %cmp.not.i = icmp eq i32 %oif, -1
  br i1 %cmp.not.i, label %if.end42.if.end.i_crit_edge, label %if.then.i

if.end42.if.end.i_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #7
  %41 = ptrtoint ptr %fl4.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %oif, ptr %fl4.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end42.if.end.i_crit_edge
  %42 = ptrtoint ptr %gw to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %gw, align 4
  %daddr.i = getelementptr inbounds %struct.flowi4, ptr %fl4.i, i32 0, i32 2
  %44 = ptrtoint ptr %daddr.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %daddr.i, align 4
  %tos.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 1
  %45 = ptrtoint ptr %tos.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %tos.i, align 1
  %47 = and i8 %46, 30
  %flowic_tos.i = getelementptr inbounds %struct.flowi_common, ptr %fl4.i, i32 0, i32 3
  %48 = ptrtoint ptr %flowic_tos.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %flowic_tos.i, align 4
  %flowic_scope.i = getelementptr inbounds %struct.flowi_common, ptr %fl4.i, i32 0, i32 4
  %49 = ptrtoint ptr %flowic_scope.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 0, ptr %flowic_scope.i, align 1
  %flowic_flags.i = getelementptr inbounds %struct.flowi_common, ptr %fl4.i, i32 0, i32 6
  %50 = ptrtoint ptr %flowic_flags.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 2, ptr %flowic_flags.i, align 1
  %call.i.i104 = call ptr @ip_route_output_flow(ptr noundef %net, ptr noundef nonnull %fl4.i, ptr noundef null) #5
  %cmp.i.i = icmp ugt ptr %call.i.i104, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.else, label %if.end8.i

if.end8.i:                                        ; preds = %if.end.i
  %51 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %51, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool.not.i.i105 = icmp ne i32 %53, 0
  %and.i.i.i106 = and i32 %53, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i106)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i106, 0
  %or.cond.i = and i1 %tobool.not.i.i105, %tobool.not.i.i.i
  br i1 %or.cond.i, label %if.then.i.i.i, label %if.end8.i.if.then44_crit_edge

if.end8.i.if.then44_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then44

if.then.i.i.i:                                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  %and1.i.i.i = and i32 %53, -2
  %54 = inttoptr i32 %and1.i.i.i to ptr
  call void @dst_release(ptr noundef %54) #5
  br label %if.then44

if.then44:                                        ; preds = %if.then.i.i.i, %if.end8.i.if.then44_crit_edge
  %tobool.not.i19.i = icmp eq ptr %call.i.i104, null
  %55 = ptrtoint ptr %slow_gro.i.i to i32
  call void @__asan_loadN_noabort(i32 %55, i32 4)
  %bf.load.i.i108 = load i32, ptr %slow_gro.i.i, align 2
  %bf.load.mask.i.i = and i32 %bf.load.i.i108, 4096
  %bf.shl.i.i = select i1 %tobool.not.i19.i, i32 %bf.load.mask.i.i, i32 4096
  %bf.clear4.i.i = and i32 %bf.load.i.i108, -4097
  %bf.set.i.i109 = or i32 %bf.shl.i.i, %bf.clear4.i.i
  store i32 %bf.set.i.i109, ptr %slow_gro.i.i, align 2
  %56 = ptrtoint ptr %call.i.i104 to i32
  %57 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %51, align 8
  %58 = ptrtoint ptr %call.i.i104 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %call.i.i104, align 4
  %60 = getelementptr inbounds %struct.anon.83, ptr %call.i.i, i32 0, i32 2
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %59, ptr %60, align 8
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 18
  %62 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 2048, ptr %protocol.i, align 8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %fl4.i) #5
  %63 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %cpu, align 4
  %arrayidx60 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %64
  %65 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx60, align 4
  %add61 = add i32 %66, ptrtoint (ptr @nf_skb_duplicated to i32)
  %67 = inttoptr i32 %add61 to ptr
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 1, ptr %67, align 1
  %69 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 1
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %69, align 4
  %call66 = call i32 @ip_local_out(ptr noundef %net, ptr noundef %71, ptr noundef nonnull %call.i.i) #5
  %72 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %cpu, align 4
  %arrayidx82 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %73
  %74 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx82, align 4
  %add83 = add i32 %75, ptrtoint (ptr @nf_skb_duplicated to i32)
  %76 = inttoptr i32 %add83 to ptr
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 0, ptr %76, align 1
  br label %cleanup

if.else:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %fl4.i) #5
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #5
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then44, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_local_out(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_copy_fclone(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_conntrack_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip_route_output_flow(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind readonly }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12}
!llvm.named.register.sp = !{!13}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/ipv4/netfilter/nf_dup_ipv4.c", i32 87, i32 3}
!2 = !{ptr @__ksymtab_nf_dup_ipv4, !3, !"__ksymtab_nf_dup_ipv4", i1 false, i1 false}
!3 = !{!"../net/ipv4/netfilter/nf_dup_ipv4.c", i32 94, i32 1}
!4 = !{ptr @__UNIQUE_ID_author593, !5, !"__UNIQUE_ID_author593", i1 false, i1 false}
!5 = !{!"../net/ipv4/netfilter/nf_dup_ipv4.c", i32 96, i32 1}
!6 = !{ptr @__UNIQUE_ID_author594, !7, !"__UNIQUE_ID_author594", i1 false, i1 false}
!7 = !{!"../net/ipv4/netfilter/nf_dup_ipv4.c", i32 97, i32 1}
!8 = !{ptr @__UNIQUE_ID_description595, !9, !"__UNIQUE_ID_description595", i1 false, i1 false}
!9 = !{!"../net/ipv4/netfilter/nf_dup_ipv4.c", i32 98, i32 1}
!10 = !{ptr @__UNIQUE_ID_file596, !11, !"__UNIQUE_ID_file596", i1 false, i1 false}
!11 = !{!"../net/ipv4/netfilter/nf_dup_ipv4.c", i32 99, i32 1}
!12 = !{ptr @__UNIQUE_ID_license597, !11, !"__UNIQUE_ID_license597", i1 false, i1 false}
!13 = !{!"sp"}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 1, !"min_enum_size", i32 4}
!16 = !{i32 8, !"branch-target-enforcement", i32 0}
!17 = !{i32 8, !"sign-return-address", i32 0}
!18 = !{i32 8, !"sign-return-address-all", i32 0}
!19 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!23 = !{i64 2158045024}
!24 = !{i8 0, i8 2}
!25 = !{i64 2158061942}
!26 = !{i64 2148440049}
!27 = !{i64 2148354513, i64 2148354545, i64 2148354574, i64 2148354608, i64 2148354639, i64 2148354662}
!28 = !{!"branch_weights", i32 2000, i32 1}
!29 = !{i64 2150521702}
