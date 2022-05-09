; ModuleID = '/llk/IR_all_yes/net/bridge/netfilter/ebt_vlan.c_pt.bc'
source_filename = "../net/bridge/netfilter/ebt_vlan.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xt_match = type { %struct.list_head, [29 x i8], i8, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.vlan_hdr = type { i16, i16 }
%struct.xt_action_param = type { %union.anon.141, %union.anon.142, ptr, i32, i16, i8 }
%union.anon.141 = type { ptr }
%union.anon.142 = type { ptr }
%struct.sk_buff = type { %union.anon, %union.anon.124, %union.anon.125, [48 x i8], %union.anon.126, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.128, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.124 = type { ptr }
%union.anon.125 = type { i64 }
%union.anon.126 = type { %struct.anon.127 }
%struct.anon.127 = type { i32, ptr }
%union.anon.128 = type { %struct.anon.129 }
%struct.anon.129 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.130, i32, i32, i32, i16, i16, %union.anon.132, i32, %union.anon.133, %union.anon.134, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.130 = type { i32 }
%union.anon.132 = type { i32 }
%union.anon.133 = type { i32 }
%union.anon.134 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.ebt_vlan_info = type { i16, i8, i16, i8, i8 }
%struct.xt_mtchk_param = type { ptr, ptr, ptr, ptr, ptr, i32, i8, i8 }
%struct.ebt_entry = type { i32, i32, i16, [16 x i8], [16 x i8], [16 x i8], [16 x i8], [6 x i8], [6 x i8], [6 x i8], [6 x i8], i32, i32, i32, [0 x i8] }

@__UNIQUE_ID_author476 = internal constant [51 x i8] c"ebt_vlan.author=Nick Fedchik <nick@fedchik.org.ua>\00", section ".modinfo", align 1
@__UNIQUE_ID_description477 = internal constant [53 x i8] c"ebt_vlan.description=Ebtables: 802.1Q VLAN tag match\00", section ".modinfo", align 1
@__UNIQUE_ID_file478 = internal constant [44 x i8] c"ebt_vlan.file=net/bridge/netfilter/ebt_vlan\00", section ".modinfo", align 1
@__UNIQUE_ID_license479 = internal constant [21 x i8] c"ebt_vlan.license=GPL\00", section ".modinfo", align 1
@ebt_vlan_mt_reg = internal global %struct.xt_match { %struct.list_head zeroinitializer, [29 x i8] c"vlan\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, ptr @ebt_vlan_mt, ptr @ebt_vlan_mt_check, ptr null, ptr null, ptr null, i32 8, i32 0, i32 0, i16 0, i16 7 }, section ".data..read_mostly", align 4
@__initcall__kmod_ebt_vlan__487_172_ebt_vlan_init6 = internal global ptr @ebt_vlan_init, section ".initcall6.init", align 4
@__exitcall_ebt_vlan_fini = internal global ptr @ebt_vlan_fini, section ".exitcall.exit", align 4
@ebt_vlan_mt_check.__UNIQUE_ID_ddebug480 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 21, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ebt_vlan\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ebt_vlan_mt_check\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"net/bridge/netfilter/ebt_vlan.c\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"passed entry proto %2.4X is not 802.1Q (8100)\0A\00", [49 x i8] zeroinitializer }, align 32
@ebt_vlan_mt_check.__UNIQUE_ID_ddebug481 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 23, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"bitmask %2X is out of mask (%2X)\0A\00", [62 x i8] zeroinitializer }, align 32
@ebt_vlan_mt_check.__UNIQUE_ID_ddebug482 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, i8 0, i8 25, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"inversion flags %2X is out of mask (%2X)\0A\00", [54 x i8] zeroinitializer }, align 32
@ebt_vlan_mt_check.__UNIQUE_ID_ddebug483 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.6, i8 0, i8 29, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"id %d is out of range (1-4096)\0A\00", [32 x i8] zeroinitializer }, align 32
@ebt_vlan_mt_check.__UNIQUE_ID_ddebug484 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.7, i8 0, i8 33, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"prio %d is out of range (0-7)\0A\00", [33 x i8] zeroinitializer }, align 32
@ebt_vlan_mt_check.__UNIQUE_ID_ddebug485 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.8, i8 0, i8 35, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"encap frame length %d is less than minimal\0A\00", [52 x i8] zeroinitializer }, align 32
@ebt_vlan_init.__UNIQUE_ID_ddebug486 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.10, i8 0, i8 40, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ebt_vlan_init\00", [18 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"ebtables 802.1Q extension module v0.6\0A\00", [57 x i8] zeroinitializer }, align 32
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 84, i32 3 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 93, i32 3 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 100, i32 3 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 115, i32 5 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 131, i32 4 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 142, i32 4 }
@___asan_gen_.41 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.42 = private constant [35 x i8] c"../net/bridge/netfilter/ebt_vlan.c\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 163, i32 2 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @__UNIQUE_ID_author476, ptr @__UNIQUE_ID_description477, ptr @__UNIQUE_ID_file478, ptr @__UNIQUE_ID_license479, ptr @__exitcall_ebt_vlan_fini, ptr @__initcall__kmod_ebt_vlan__487_172_ebt_vlan_init6, ptr @ebt_vlan_fini, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ebt_vlan_fini() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @xt_unregister_match(ptr noundef nonnull @ebt_vlan_mt_reg) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xt_unregister_match(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ebt_vlan_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ebt_vlan_init.__UNIQUE_ID_ddebug486, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ebt_vlan_init, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !47

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ebt_vlan_init.__UNIQUE_ID_ddebug486, ptr noundef nonnull @.str.10) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call3 = tail call i32 @xt_register_match(ptr noundef nonnull @ebt_vlan_mt_reg) #4
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @ebt_vlan_mt(ptr noundef %skb, ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  %_frame = alloca %struct.vlan_hdr, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %_frame.sroa.gep = getelementptr inbounds %struct.vlan_hdr, ptr %_frame, i32 0, i32 1
  %0 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %vlan_present = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %3 = ptrtoint ptr %vlan_present to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %bf.load = load i32, ptr %vlan_present, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load)
  %tobool.not = icmp sgt i32 %bf.load, -1
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %vlan_tci = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 10
  %4 = ptrtoint ptr %vlan_tci to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %vlan_tci, align 2
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %6 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %protocol, align 8
  br label %if.end3

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_frame) #4
  %8 = ptrtoint ptr %_frame to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 -1, ptr %_frame, align 2, !annotation !48
  %9 = ptrtoint ptr %_frame.sroa.gep to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 -1, ptr %_frame.sroa.gep, align 2, !annotation !48
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %10 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %12 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %11, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.i.i)
  %cmp.i.i = icmp sgt i32 %sub.i.i, 3
  br i1 %cmp.i.i, label %skb_header_pointer.exit, label %if.end.i.i, !prof !49

if.end.i.i:                                       ; preds = %if.else
  %tobool2.not.i.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.cleanup.thread_crit_edge, label %lor.lhs.false.i.i

if.end.i.i.cleanup.thread_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.thread

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %call.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef 0, ptr noundef nonnull %_frame, i32 noundef 4) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i.i, label %lor.lhs.false.i.i.cleanup.thread_crit_edge, label %lor.lhs.false.i.i.cleanup_crit_edge

lor.lhs.false.i.i.cleanup_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false.i.i.cleanup.thread_crit_edge:       ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.thread

skb_header_pointer.exit:                          ; preds = %if.else
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %14 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data.i, align 4
  %.sroa.gep = getelementptr inbounds %struct.vlan_hdr, ptr %15, i32 0, i32 1
  %cmp = icmp eq ptr %15, null
  br i1 %cmp, label %skb_header_pointer.exit.cleanup.thread_crit_edge, label %skb_header_pointer.exit.cleanup_crit_edge

skb_header_pointer.exit.cleanup_crit_edge:        ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

skb_header_pointer.exit.cleanup.thread_crit_edge: ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %skb_header_pointer.exit.cleanup.thread_crit_edge, %lor.lhs.false.i.i.cleanup.thread_crit_edge, %if.end.i.i.cleanup.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_frame) #4
  br label %cleanup71

cleanup:                                          ; preds = %skb_header_pointer.exit.cleanup_crit_edge, %lor.lhs.false.i.i.cleanup_crit_edge
  %retval.0.i.i96 = phi ptr [ %15, %skb_header_pointer.exit.cleanup_crit_edge ], [ %_frame, %lor.lhs.false.i.i.cleanup_crit_edge ]
  %retval.0.i.i96.sroa.phi = phi ptr [ %.sroa.gep, %skb_header_pointer.exit.cleanup_crit_edge ], [ %_frame.sroa.gep, %lor.lhs.false.i.i.cleanup_crit_edge ]
  %16 = ptrtoint ptr %retval.0.i.i96 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %retval.0.i.i96, align 2
  %18 = ptrtoint ptr %retval.0.i.i96.sroa.phi to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %retval.0.i.i96.sroa.phi, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_frame) #4
  br label %if.end3

if.end3:                                          ; preds = %cleanup, %if.then
  %TCI.1 = phi i16 [ %5, %if.then ], [ %17, %cleanup ]
  %encap.1 = phi i16 [ %7, %if.then ], [ %19, %cleanup ]
  %20 = lshr i16 %TCI.1, 13
  %bitmask = getelementptr inbounds %struct.ebt_vlan_info, ptr %2, i32 0, i32 3
  %21 = ptrtoint ptr %bitmask to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %bitmask, align 2
  %23 = and i8 %22, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool10.not = icmp eq i8 %23, 0
  br i1 %tobool10.not, label %if.end3.if.end24_crit_edge, label %if.then11

if.end3.if.end24_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end24

if.then11:                                        ; preds = %if.end3
  %and = and i16 %TCI.1, 4095
  %24 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %2, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %25, i16 %and)
  %cmp15 = icmp ne i16 %25, %and
  %invflags = getelementptr inbounds %struct.ebt_vlan_info, ptr %2, i32 0, i32 4
  %26 = ptrtoint ptr %invflags to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %invflags, align 1
  %28 = and i8 %27, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %29 = icmp ne i8 %28, 0
  %tobool21.not = xor i1 %cmp15, %29
  br i1 %tobool21.not, label %if.then11.cleanup71_crit_edge, label %if.then11.if.end24_crit_edge

if.then11.if.end24_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end24

if.then11.cleanup71_crit_edge:                    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup71

if.end24:                                         ; preds = %if.then11.if.end24_crit_edge, %if.end3.if.end24_crit_edge
  %30 = and i8 %22, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool28.not = icmp eq i8 %30, 0
  br i1 %tobool28.not, label %if.end24.if.end47_crit_edge, label %if.then29

if.end24.if.end47_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end47

if.then29:                                        ; preds = %if.end24
  %prio30 = getelementptr inbounds %struct.ebt_vlan_info, ptr %2, i32 0, i32 1
  %31 = ptrtoint ptr %prio30 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %prio30, align 2
  %33 = zext i8 %32 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %20, i16 %33)
  %cmp33 = icmp ne i16 %20, %33
  %invflags35 = getelementptr inbounds %struct.ebt_vlan_info, ptr %2, i32 0, i32 4
  %34 = ptrtoint ptr %invflags35 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %invflags35, align 1
  %36 = and i8 %35, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %37 = icmp ne i8 %36, 0
  %tobool44.not = xor i1 %cmp33, %37
  br i1 %tobool44.not, label %if.then29.cleanup71_crit_edge, label %if.then29.if.end47_crit_edge

if.then29.if.end47_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end47

if.then29.cleanup71_crit_edge:                    ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup71

if.end47:                                         ; preds = %if.then29.if.end47_crit_edge, %if.end24.if.end47_crit_edge
  %38 = and i8 %22, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool51.not = icmp eq i8 %38, 0
  br i1 %tobool51.not, label %if.end47.if.end70_crit_edge, label %if.then52

if.end47.if.end70_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end70

if.then52:                                        ; preds = %if.end47
  %encap53 = getelementptr inbounds %struct.ebt_vlan_info, ptr %2, i32 0, i32 2
  %39 = ptrtoint ptr %encap53 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %encap53, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %40, i16 %encap.1)
  %cmp56 = icmp ne i16 %40, %encap.1
  %invflags58 = getelementptr inbounds %struct.ebt_vlan_info, ptr %2, i32 0, i32 4
  %41 = ptrtoint ptr %invflags58 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %invflags58, align 1
  %43 = and i8 %42, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %44 = icmp ne i8 %43, 0
  %tobool67.not = xor i1 %cmp56, %44
  br i1 %tobool67.not, label %if.then52.cleanup71_crit_edge, label %if.then52.if.end70_crit_edge

if.then52.if.end70_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end70

if.then52.cleanup71_crit_edge:                    ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup71

if.end70:                                         ; preds = %if.then52.if.end70_crit_edge, %if.end47.if.end70_crit_edge
  br label %cleanup71

cleanup71:                                        ; preds = %if.end70, %if.then52.cleanup71_crit_edge, %if.then29.cleanup71_crit_edge, %if.then11.cleanup71_crit_edge, %cleanup.thread
  %retval.1 = phi i1 [ true, %if.end70 ], [ false, %if.then11.cleanup71_crit_edge ], [ false, %if.then29.cleanup71_crit_edge ], [ false, %if.then52.cleanup71_crit_edge ], [ false, %cleanup.thread ]
  ret i1 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ebt_vlan_mt_check(ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %matchinfo = getelementptr inbounds %struct.xt_mtchk_param, ptr %par, i32 0, i32 4
  %0 = ptrtoint ptr %matchinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %matchinfo, align 4
  %entryinfo = getelementptr inbounds %struct.xt_mtchk_param, ptr %par, i32 0, i32 2
  %2 = ptrtoint ptr %entryinfo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %entryinfo, align 4
  %ethproto = getelementptr inbounds %struct.ebt_entry, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %ethproto to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %ethproto, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32512, i16 %5)
  %cmp.not = icmp eq i16 %5, -32512
  br i1 %cmp.not, label %if.end7, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ebt_vlan_mt_check.__UNIQUE_ID_ddebug480, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ebt_vlan_mt_check, %if.then4)) #4
          to label %cleanup [label %if.then4], !srcloc !47

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %ethproto to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %ethproto, align 4
  %conv6 = zext i16 %7 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ebt_vlan_mt_check.__UNIQUE_ID_ddebug480, ptr noundef nonnull @.str.3, i32 noundef %conv6) #4
  br label %cleanup

if.end7:                                          ; preds = %entry
  %bitmask = getelementptr inbounds %struct.ebt_vlan_info, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %bitmask to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bitmask, align 2
  %conv8 = zext i8 %9 to i32
  %and = and i32 %conv8, 248
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %if.end29, label %do.body11

do.body11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ebt_vlan_mt_check.__UNIQUE_ID_ddebug481, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ebt_vlan_mt_check, %if.then23)) #4
          to label %cleanup [label %if.then23], !srcloc !47

if.then23:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %bitmask to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bitmask, align 2
  %conv25 = zext i8 %11 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ebt_vlan_mt_check.__UNIQUE_ID_ddebug481, ptr noundef nonnull @.str.4, i32 noundef %conv25, i32 noundef 7) #4
  br label %cleanup

if.end29:                                         ; preds = %if.end7
  %invflags = getelementptr inbounds %struct.ebt_vlan_info, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %invflags to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %invflags, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %13)
  %tobool32.not = icmp ult i8 %13, 8
  br i1 %tobool32.not, label %if.end52, label %do.body34

do.body34:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ebt_vlan_mt_check.__UNIQUE_ID_ddebug482, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ebt_vlan_mt_check, %if.then46)) #4
          to label %cleanup [label %if.then46], !srcloc !47

if.then46:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #6
  %14 = ptrtoint ptr %invflags to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %invflags, align 1
  %conv48 = zext i8 %15 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ebt_vlan_mt_check.__UNIQUE_ID_ddebug482, ptr noundef nonnull @.str.5, i32 noundef %conv48, i32 noundef 7) #4
  br label %cleanup

if.end52:                                         ; preds = %if.end29
  %and55 = and i32 %conv8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %if.end52.if.end89_crit_edge, label %if.then57

if.end52.if.end89_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end89

if.then57:                                        ; preds = %if.end52
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool58.not = icmp eq i16 %17, 0
  br i1 %tobool58.not, label %if.then57.if.end89_crit_edge, label %if.then59

if.then57.if.end89_crit_edge:                     ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end89

if.then59:                                        ; preds = %if.then57
  call void @__sanitizer_cov_trace_const_cmp2(i16 4096, i16 %17)
  %cmp62 = icmp ugt i16 %17, 4096
  br i1 %cmp62, label %do.body65, label %if.end83

do.body65:                                        ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ebt_vlan_mt_check.__UNIQUE_ID_ddebug483, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ebt_vlan_mt_check, %if.then77)) #4
          to label %cleanup [label %if.then77], !srcloc !47

if.then77:                                        ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #6
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %1, align 2
  %conv79 = zext i16 %19 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ebt_vlan_mt_check.__UNIQUE_ID_ddebug483, ptr noundef nonnull @.str.6, i32 noundef %conv79) #4
  br label %cleanup

if.end83:                                         ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #6
  %and86 = and i8 %9, -3
  %20 = ptrtoint ptr %bitmask to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %and86, ptr %bitmask, align 2
  br label %if.end89

if.end89:                                         ; preds = %if.end83, %if.then57.if.end89_crit_edge, %if.end52.if.end89_crit_edge
  %21 = ptrtoint ptr %bitmask to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %bitmask, align 2
  %23 = and i8 %22, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool93.not = icmp eq i8 %23, 0
  br i1 %tobool93.not, label %if.end89.if.end118_crit_edge, label %if.then94

if.end89.if.end118_crit_edge:                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end118

if.then94:                                        ; preds = %if.end89
  %prio = getelementptr inbounds %struct.ebt_vlan_info, ptr %1, i32 0, i32 1
  %24 = ptrtoint ptr %prio to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %prio, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %25)
  %cmp96 = icmp ugt i8 %25, 7
  br i1 %cmp96, label %do.body99, label %if.then94.if.end118_crit_edge

if.then94.if.end118_crit_edge:                    ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end118

do.body99:                                        ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ebt_vlan_mt_check.__UNIQUE_ID_ddebug484, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ebt_vlan_mt_check, %if.then111)) #4
          to label %cleanup [label %if.then111], !srcloc !47

if.then111:                                       ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #6
  %26 = ptrtoint ptr %prio to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %prio, align 2
  %conv113 = zext i8 %27 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ebt_vlan_mt_check.__UNIQUE_ID_ddebug484, ptr noundef nonnull @.str.7, i32 noundef %conv113) #4
  br label %cleanup

if.end118:                                        ; preds = %if.then94.if.end118_crit_edge, %if.end89.if.end118_crit_edge
  %28 = and i8 %22, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool122.not = icmp eq i8 %28, 0
  br i1 %tobool122.not, label %if.end118.cleanup_crit_edge, label %if.then123

if.end118.cleanup_crit_edge:                      ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then123:                                       ; preds = %if.end118
  %encap = getelementptr inbounds %struct.ebt_vlan_info, ptr %1, i32 0, i32 2
  %29 = ptrtoint ptr %encap to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %encap, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 60, i16 %30)
  %cmp125 = icmp ult i16 %30, 60
  br i1 %cmp125, label %do.body128, label %if.then123.cleanup_crit_edge

if.then123.cleanup_crit_edge:                     ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body128:                                       ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ebt_vlan_mt_check.__UNIQUE_ID_ddebug485, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ebt_vlan_mt_check, %if.then140)) #4
          to label %cleanup [label %if.then140], !srcloc !47

if.then140:                                       ; preds = %do.body128
  call void @__sanitizer_cov_trace_pc() #6
  %31 = ptrtoint ptr %encap to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %encap, align 2
  %conv142 = zext i16 %32 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ebt_vlan_mt_check.__UNIQUE_ID_ddebug485, ptr noundef nonnull @.str.8, i32 noundef %conv142) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then140, %do.body128, %if.then123.cleanup_crit_edge, %if.end118.cleanup_crit_edge, %if.then111, %do.body99, %if.then77, %do.body65, %if.then46, %do.body34, %if.then23, %do.body11, %if.then4, %do.body
  %retval.0 = phi i32 [ -22, %if.then4 ], [ -22, %if.then23 ], [ -22, %if.then46 ], [ -22, %if.then77 ], [ -22, %if.then111 ], [ -22, %if.then140 ], [ 0, %if.then123.cleanup_crit_edge ], [ 0, %if.end118.cleanup_crit_edge ], [ -22, %do.body ], [ -22, %do.body11 ], [ -22, %do.body34 ], [ -22, %do.body65 ], [ -22, %do.body99 ], [ -22, %do.body128 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xt_register_match(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !16, !17, !18, !19, !21, !22, !24, !25, !27, !28, !30, !31, !33, !34, !36, !37}
!llvm.module.flags = !{!38, !39, !40, !41, !42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = !{ptr @__UNIQUE_ID_author476, !1, !"__UNIQUE_ID_author476", i1 false, i1 false}
!1 = !{!"../net/bridge/netfilter/ebt_vlan.c", i32 18, i32 1}
!2 = !{ptr @__UNIQUE_ID_description477, !3, !"__UNIQUE_ID_description477", i1 false, i1 false}
!3 = !{!"../net/bridge/netfilter/ebt_vlan.c", i32 19, i32 1}
!4 = !{ptr @__UNIQUE_ID_file478, !5, !"__UNIQUE_ID_file478", i1 false, i1 false}
!5 = !{!"../net/bridge/netfilter/ebt_vlan.c", i32 20, i32 1}
!6 = !{ptr @__UNIQUE_ID_license479, !5, !"__UNIQUE_ID_license479", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_ebt_vlan__487_172_ebt_vlan_init6, !8, !"__initcall__kmod_ebt_vlan__487_172_ebt_vlan_init6", i1 false, i1 false}
!8 = !{!"../net/bridge/netfilter/ebt_vlan.c", i32 172, i32 1}
!9 = !{ptr @__exitcall_ebt_vlan_fini, !10, !"__exitcall_ebt_vlan_fini", i1 false, i1 false}
!10 = !{!"../net/bridge/netfilter/ebt_vlan.c", i32 173, i32 1}
!11 = !{ptr @ebt_vlan_mt_reg, !12, !"ebt_vlan_mt_reg", i1 false, i1 false}
!12 = !{!"../net/bridge/netfilter/ebt_vlan.c", i32 151, i32 24}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../net/bridge/netfilter/ebt_vlan.c", i32 84, i32 3}
!15 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @ebt_vlan_mt_check.__UNIQUE_ID_ddebug480, !14, !"__UNIQUE_ID_ddebug480", i1 false, i1 false}
!19 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../net/bridge/netfilter/ebt_vlan.c", i32 93, i32 3}
!21 = !{ptr @ebt_vlan_mt_check.__UNIQUE_ID_ddebug481, !20, !"__UNIQUE_ID_ddebug481", i1 false, i1 false}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../net/bridge/netfilter/ebt_vlan.c", i32 100, i32 3}
!24 = !{ptr @ebt_vlan_mt_check.__UNIQUE_ID_ddebug482, !23, !"__UNIQUE_ID_ddebug482", i1 false, i1 false}
!25 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../net/bridge/netfilter/ebt_vlan.c", i32 115, i32 5}
!27 = !{ptr @ebt_vlan_mt_check.__UNIQUE_ID_ddebug483, !26, !"__UNIQUE_ID_ddebug483", i1 false, i1 false}
!28 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../net/bridge/netfilter/ebt_vlan.c", i32 131, i32 4}
!30 = !{ptr @ebt_vlan_mt_check.__UNIQUE_ID_ddebug484, !29, !"__UNIQUE_ID_ddebug484", i1 false, i1 false}
!31 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../net/bridge/netfilter/ebt_vlan.c", i32 142, i32 4}
!33 = !{ptr @ebt_vlan_mt_check.__UNIQUE_ID_ddebug485, !32, !"__UNIQUE_ID_ddebug485", i1 false, i1 false}
!34 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../net/bridge/netfilter/ebt_vlan.c", i32 163, i32 2}
!36 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @ebt_vlan_init.__UNIQUE_ID_ddebug486, !35, !"__UNIQUE_ID_ddebug486", i1 false, i1 false}
!38 = !{i32 1, !"wchar_size", i32 2}
!39 = !{i32 1, !"min_enum_size", i32 4}
!40 = !{i32 8, !"branch-target-enforcement", i32 0}
!41 = !{i32 8, !"sign-return-address", i32 0}
!42 = !{i32 8, !"sign-return-address-all", i32 0}
!43 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!44 = !{i32 7, !"uwtable", i32 1}
!45 = !{i32 7, !"frame-pointer", i32 2}
!46 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!47 = !{i64 2148834784, i64 2148834789, i64 2148834802, i64 2148834846, i64 2148834880, i64 2148834901}
!48 = !{!"auto-init"}
!49 = !{!"branch_weights", i32 2000, i32 1}
