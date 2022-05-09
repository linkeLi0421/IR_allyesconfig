; ModuleID = '/llk/IR_all_yes/net/ethtool/bitset.c_pt.bc'
source_filename = "../net/ethtool/bitset.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.anon.28 = type { i16, i16 }
%struct.nla_policy = type { i8, i8, i16, %union.anon.27 }
%union.anon.27 = type { i32 }
%struct.sk_buff = type { %union.anon, %union.anon.127, %union.anon.128, [48 x i8], %union.anon.129, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.131, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.127 = type { ptr }
%union.anon.128 = type { i64 }
%union.anon.129 = type { %struct.anon.130 }
%struct.anon.130 = type { i32, ptr }
%union.anon.131 = type { %struct.anon.132 }
%struct.anon.132 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.133, i32, i32, i32, i16, i16, %union.anon.135, i32, %union.anon.136, %union.anon.137, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.133 = type { i32 }
%union.anon.135 = type { i32 }
%union.anon.136 = type { i32 }
%union.anon.137 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.nlattr = type { i16, i16 }
%struct.netlink_ext_ack = type { ptr, ptr, ptr, [20 x i8], i8 }

@ethnl_parse_bitset.__msg = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"value only allowed in compact bitset\00", [59 x i8] zeroinitializer }, align 32
@ethnl_parse_bitset.__msg.1 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"mask only allowed in compact bitset\00", [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@nla_parse_nested.__msg = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"NLA_F_NESTED is missing\00", [40 x i8] zeroinitializer }, align 32
@bitset_policy = internal constant { <{ %struct.nla_policy, %struct.nla_policy, { i8, i8, i16, { %struct.anon.28 } }, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy }>, [48 x i8] } { <{ %struct.nla_policy, %struct.nla_policy, { i8, i8, i16, { %struct.anon.28 } }, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy }> <{ %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 6, i8 0, i16 0, %union.anon.27 zeroinitializer }, { i8, i8, i16, { %struct.anon.28 } } { i8 3, i8 4, i16 0, { %struct.anon.28 } { %struct.anon.28 { i16 0, i16 32767 } } }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.27 zeroinitializer }, %struct.nla_policy { i8 11, i8 0, i16 0, %union.anon.27 zeroinitializer }, %struct.nla_policy { i8 11, i8 0, i16 0, %union.anon.27 zeroinitializer } }>, [48 x i8] zeroinitializer }, align 32
@ethnl_update_bitset32_verbose.__msg = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"value only allowed in compact bitset\00", [59 x i8] zeroinitializer }, align 32
@ethnl_update_bitset32_verbose.__msg.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"mask only allowed in compact bitset\00", [60 x i8] zeroinitializer }, align 32
@ethnl_update_bitset32_verbose.__msg.4 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"only ETHTOOL_A_BITSET_BITS_BIT allowed in ETHTOOL_A_BITSET_BITS\00", [32 x i8] zeroinitializer }, align 32
@ethnl_compact_sanity_checks.__msg = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"mask not allowed in list bitset\00", [32 x i8] zeroinitializer }, align 32
@ethnl_compact_sanity_checks.__msg.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"missing size in compact bitset\00", [33 x i8] zeroinitializer }, align 32
@ethnl_compact_sanity_checks.__msg.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"missing value in compact bitset\00", [32 x i8] zeroinitializer }, align 32
@ethnl_compact_sanity_checks.__msg.7 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"missing mask in compact nonlist bitset\00", [57 x i8] zeroinitializer }, align 32
@ethnl_compact_sanity_checks.__msg.8 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"bitset value length does not match size\00", [56 x i8] zeroinitializer }, align 32
@ethnl_compact_sanity_checks.__msg.9 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"bitset mask length does not match size\00", [57 x i8] zeroinitializer }, align 32
@ethnl_compact_sanity_checks.__msg.10 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"cannot modify bits past kernel bitset size\00", [53 x i8] zeroinitializer }, align 32
@bit_policy = internal constant { [4 x %struct.nla_policy], [32 x i8] } { [4 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.27 zeroinitializer }, %struct.nla_policy { i8 10, i8 0, i16 0, %union.anon.27 zeroinitializer }, %struct.nla_policy { i8 6, i8 0, i16 0, %union.anon.27 zeroinitializer }], [32 x i8] zeroinitializer }, align 32
@ethnl_parse_bit.__msg = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bit index too high\00", [45 x i8] zeroinitializer }, align 32
@ethnl_parse_bit.__msg.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"bit index and name mismatch\00", [36 x i8] zeroinitializer }, align 32
@ethnl_parse_bit.__msg.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bit name not found\00", [45 x i8] zeroinitializer }, align 32
@ethnl_parse_bit.__msg.13 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"neither bit index nor name specified\00", [59 x i8] zeroinitializer }, align 32
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 652, i32 3 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 657, i32 3 }
@___asan_gen_.20 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 991, i32 3 }
@___asan_gen_.24 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 1208, i32 3 }
@___asan_gen_.26 = private unnamed_addr constant [14 x i8] c"bitset_policy\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 305, i32 32 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 440, i32 3 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 445, i32 3 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 459, i32 4 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 490, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 495, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 500, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 505, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 513, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 519, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 529, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant [11 x i8] c"bit_policy\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 314, i32 32 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 395, i32 4 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 404, i32 4 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 412, i32 4 }
@___asan_gen_.71 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.72 = private constant [24 x i8] c"../net/ethtool/bitset.c\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 418, i32 3 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @ethnl_parse_bitset.__msg, ptr @ethnl_parse_bitset.__msg.1, ptr @.str, ptr @nla_parse_nested.__msg, ptr @bitset_policy, ptr @ethnl_update_bitset32_verbose.__msg, ptr @ethnl_update_bitset32_verbose.__msg.3, ptr @ethnl_update_bitset32_verbose.__msg.4, ptr @ethnl_compact_sanity_checks.__msg, ptr @ethnl_compact_sanity_checks.__msg.5, ptr @ethnl_compact_sanity_checks.__msg.6, ptr @ethnl_compact_sanity_checks.__msg.7, ptr @ethnl_compact_sanity_checks.__msg.8, ptr @ethnl_compact_sanity_checks.__msg.9, ptr @ethnl_compact_sanity_checks.__msg.10, ptr @bit_policy, ptr @ethnl_parse_bit.__msg, ptr @ethnl_parse_bit.__msg.11, ptr @ethnl_parse_bit.__msg.12, ptr @ethnl_parse_bit.__msg.13], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethnl_parse_bitset.__msg to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethnl_parse_bitset.__msg.1 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nla_parse_nested.__msg to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bitset_policy to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethnl_update_bitset32_verbose.__msg to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethnl_update_bitset32_verbose.__msg.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethnl_update_bitset32_verbose.__msg.4 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethnl_compact_sanity_checks.__msg to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethnl_compact_sanity_checks.__msg.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethnl_compact_sanity_checks.__msg.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethnl_compact_sanity_checks.__msg.7 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethnl_compact_sanity_checks.__msg.8 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethnl_compact_sanity_checks.__msg.9 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethnl_compact_sanity_checks.__msg.10 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bit_policy to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethnl_parse_bit.__msg to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethnl_parse_bit.__msg.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethnl_parse_bit.__msg.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethnl_parse_bit.__msg.13 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ethnl_bitset32_size(ptr nocapture noundef readonly %val, ptr noundef readonly %mask, i32 noundef %nbits, ptr noundef readonly %names, i1 noundef zeroext %compact) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %mask, null
  br i1 %compact, label %if.then4, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nbits)
  %cmp73.not = icmp eq i32 %nbits, 0
  br i1 %cmp73.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %tobool10.not = icmp eq ptr %names, null
  %cond16 = select i1 %tobool.not, ptr %val, ptr %mask
  br label %for.body

if.then4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %sub = add i32 %nbits, 31
  %cond = select i1 %tobool.not, i32 1, i32 2
  %0 = lshr i32 %sub, 3
  %mul = and i32 %0, 536870908
  %sub.i = add nuw nsw i32 %mul, 7
  %and.i = and i32 %sub.i, 1073741820
  %mul8 = mul nuw nsw i32 %and.i, %cond
  br label %if.end36

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %i.075 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %bits_len.074 = phi i32 [ 0, %for.body.lr.ph ], [ %bits_len.1, %cleanup.for.body_crit_edge ]
  %arrayidx = getelementptr [32 x i8], ptr %names, i32 %i.075
  %spec.select = select i1 %tobool10.not, ptr null, ptr %arrayidx
  %div2.i = lshr i32 %i.075, 5
  %arrayidx.i = getelementptr i32, ptr %cond16, i32 %div2.i
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx.i, align 4
  %rem.i = and i32 %i.075, 31
  %shl.i = shl nuw i32 1, %rem.i
  %and.i58 = and i32 %2, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i58)
  %tobool.i.not = icmp eq i32 %and.i58, 0
  br i1 %tobool.i.not, label %for.body.cleanup_crit_edge, label %if.end19

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end19:                                         ; preds = %for.body
  %tobool21.not = icmp eq ptr %spec.select, null
  br i1 %tobool21.not, label %if.end19.if.end25_crit_edge, label %if.then22

if.end19.if.end25_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 @strnlen(ptr noundef nonnull %spec.select, i32 noundef 32) #9
  %3 = add i32 %call.i, 16
  %add24 = and i32 %3, -4
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %if.end19.if.end25_crit_edge
  %bit_len.0 = phi i32 [ %add24, %if.then22 ], [ 8, %if.end19.if.end25_crit_edge ]
  br i1 %tobool.not, label %if.end25.if.end31_crit_edge, label %land.lhs.true

if.end25.if.end31_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

land.lhs.true:                                    ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i60 = getelementptr i32, ptr %val, i32 %div2.i
  %4 = ptrtoint ptr %arrayidx.i60 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i60, align 4
  %and.i63 = and i32 %5, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i63)
  %tobool.i64.not = icmp eq i32 %and.i63, 0
  %add30 = add i32 %bit_len.0, 4
  %spec.select72 = select i1 %tobool.i64.not, i32 %bit_len.0, i32 %add30
  br label %if.end31

if.end31:                                         ; preds = %land.lhs.true, %if.end25.if.end31_crit_edge
  %bit_len.1 = phi i32 [ %bit_len.0, %if.end25.if.end31_crit_edge ], [ %spec.select72, %land.lhs.true ]
  %sub.i65 = add i32 %bit_len.1, 7
  %and.i66 = and i32 %sub.i65, -4
  %add33 = add i32 %and.i66, %bits_len.074
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %for.body.cleanup_crit_edge
  %bits_len.1 = phi i32 [ %add33, %if.end31 ], [ %bits_len.074, %for.body.cleanup_crit_edge ]
  %inc = add nuw i32 %i.075, 1
  %exitcond.not = icmp eq i32 %inc, %nbits
  br i1 %exitcond.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %bits_len.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %bits_len.1, %cleanup.for.end_crit_edge ]
  %sub.i67 = add i32 %bits_len.0.lcssa, 7
  %and.i68 = and i32 %sub.i67, -4
  br label %if.end36

if.end36:                                         ; preds = %for.end, %if.then4
  %mul8.pn = phi i32 [ %mul8, %if.then4 ], [ %and.i68, %for.end ]
  %len.1 = select i1 %tobool.not, i32 23, i32 15
  %sub.i69 = add i32 %len.1, %mul8.pn
  %and.i70 = and i32 %sub.i69, -4
  ret i32 %and.i70
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ethnl_put_bitset32(ptr noundef %skb, i32 noundef %attrtype, ptr nocapture noundef readonly %val, ptr noundef readonly %mask, i32 noundef %nbits, ptr noundef readonly %names, i1 noundef zeroext %compact) local_unnamed_addr #2 align 64 {
entry:
  %tmp.i155 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %or.i = or i32 %attrtype, 32768
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %0 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef %or.i, i32 noundef 0, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i = icmp slt i32 %call1.i.i, 0
  %tobool.not183 = icmp eq ptr %1, null
  %tobool.not = select i1 %cmp.i.i, i1 true, i1 %tobool.not183
  br i1 %tobool.not, label %entry.cleanup87_crit_edge, label %if.end

entry.cleanup87_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup87

if.end:                                           ; preds = %entry
  %tobool1.not = icmp eq ptr %mask, null
  br i1 %tobool1.not, label %land.lhs.true, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

land.lhs.true:                                    ; preds = %if.end
  %call.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 0, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not = icmp eq i32 %call.i, 0
  br i1 %tobool3.not, label %land.lhs.true.if.end5_crit_edge, label %land.lhs.true.if.then.i.i_crit_edge

land.lhs.true.if.then.i.i_crit_edge:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.end5:                                          ; preds = %land.lhs.true.if.end5_crit_edge, %if.end.if.end5_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #6
  %2 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %nbits, ptr %tmp.i, align 4
  %call.i141 = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i141)
  %tobool7.not = icmp eq i32 %call.i141, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.if.then.i.i_crit_edge

if.end5.if.then.i.i_crit_edge:                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

if.end9:                                          ; preds = %if.end5
  br i1 %compact, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end9
  %sub = add i32 %nbits, 31
  %div139 = lshr i32 %sub, 5
  %mul = shl nuw nsw i32 %div139, 2
  %call12 = call ptr @nla_reserve(ptr noundef %skb, i32 noundef 4, i32 noundef %mul) #6
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %if.then11.if.then.i.i_crit_edge, label %if.end15

if.then11.if.then.i.i_crit_edge:                  ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

if.end15:                                         ; preds = %if.then11
  %add.ptr.i = getelementptr i8, ptr %call12, i32 4
  %3 = call ptr @memcpy(ptr %add.ptr.i, ptr %val, i32 %mul)
  %rem = and i32 %nbits, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool17.not = icmp eq i32 %rem, 0
  br i1 %tobool17.not, label %if.end15.if.end21_crit_edge, label %if.then18

if.end15.if.end21_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i = sub nuw nsw i32 32, %rem
  %shr.i = lshr i32 -1, %sub.i
  %sub20 = add nsw i32 %div139, -1
  %arrayidx = getelementptr i32, ptr %add.ptr.i, i32 %sub20
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %and = and i32 %5, %shr.i
  store i32 %and, ptr %arrayidx, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %if.end15.if.end21_crit_edge
  br i1 %tobool1.not, label %if.end21.if.end85_crit_edge, label %if.then23

if.end21.if.end85_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end85

if.then23:                                        ; preds = %if.end21
  %call24 = call ptr @nla_reserve(ptr noundef %skb, i32 noundef 5, i32 noundef %mul) #6
  %tobool25.not = icmp eq ptr %call24, null
  br i1 %tobool25.not, label %if.then23.if.then.i.i_crit_edge, label %if.end27

if.then23.if.then.i.i_crit_edge:                  ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

if.end27:                                         ; preds = %if.then23
  %add.ptr.i142 = getelementptr i8, ptr %call24, i32 4
  %6 = call ptr @memcpy(ptr %add.ptr.i142, ptr %mask, i32 %mul)
  br i1 %tobool17.not, label %if.end27.if.end85_crit_edge, label %if.then31

if.end27.if.end85_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end85

if.then31:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i144 = sub nuw nsw i32 32, %rem
  %shr.i145 = lshr i32 -1, %sub.i144
  %sub33 = add nsw i32 %div139, -1
  %arrayidx34 = getelementptr i32, ptr %add.ptr.i142, i32 %sub33
  %7 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx34, align 4
  %and35 = and i32 %8, %shr.i145
  store i32 %and35, ptr %arrayidx34, align 4
  br label %if.end85

if.else:                                          ; preds = %if.end9
  %9 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i147 = call i32 @nla_put(ptr noundef %skb, i32 noundef 32771, i32 noundef 0, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i147)
  %cmp.i.i148 = icmp slt i32 %call1.i.i147, 0
  %tobool41.not188 = icmp eq ptr %10, null
  %tobool41.not = select i1 %cmp.i.i148, i1 true, i1 %tobool41.not188
  br i1 %tobool41.not, label %if.else.if.then.i.i_crit_edge, label %for.cond.preheader

if.else.if.then.i.i_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

for.cond.preheader:                               ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nbits)
  %cmp185.not = icmp eq i32 %nbits, 0
  br i1 %cmp185.not, label %for.cond.preheader.cleanup81_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup81_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup81

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %tobool44.not = icmp eq ptr %names, null
  %cond50 = select i1 %tobool1.not, ptr %val, ptr %mask
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0186 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx45 = getelementptr [32 x i8], ptr %names, i32 %i.0186
  %spec.select = select i1 %tobool44.not, ptr null, ptr %arrayidx45
  %div2.i = lshr i32 %i.0186, 5
  %arrayidx.i = getelementptr i32, ptr %cond50, i32 %div2.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i, align 4
  %rem.i150 = and i32 %i.0186, 31
  %shl.i = shl nuw i32 1, %rem.i150
  %and.i = and i32 %12, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %for.body.for.inc_crit_edge, label %if.end53

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end53:                                         ; preds = %for.body
  %13 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i152 = call i32 @nla_put(ptr noundef %skb, i32 noundef 32769, i32 noundef 0, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i152)
  %cmp.i.i153 = icmp slt i32 %call1.i.i152, 0
  %tobool55.not184 = icmp eq ptr %14, null
  %tobool55.not = select i1 %cmp.i.i153, i1 true, i1 %tobool55.not184
  br i1 %tobool55.not, label %if.end53.if.then.i.i_crit_edge, label %if.end57

if.end53.if.then.i.i_crit_edge:                   ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

if.end57:                                         ; preds = %if.end53
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i155) #6
  %15 = ptrtoint ptr %tmp.i155 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %i.0186, ptr %tmp.i155, align 4
  %call.i156 = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i155) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i155) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i156)
  %tobool59.not = icmp eq i32 %call.i156, 0
  br i1 %tobool59.not, label %if.end61, label %if.end57.if.then.i.i_crit_edge

if.end57.if.then.i.i_crit_edge:                   ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

if.end61:                                         ; preds = %if.end57
  %tobool62.not = icmp eq ptr %spec.select, null
  br i1 %tobool62.not, label %if.end61.if.end67_crit_edge, label %land.lhs.true63

if.end61.if.end67_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end67

land.lhs.true63:                                  ; preds = %if.end61
  %call.i157 = call i32 @strnlen(ptr noundef nonnull %spec.select, i32 noundef 32) #9
  %add.i = add i32 %call.i157, 1
  %call1.i = call ptr @nla_reserve(ptr noundef %skb, i32 noundef 2, i32 noundef %add.i) #6
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %land.lhs.true63.if.then.i.i_crit_edge, label %ethnl_put_strz.exit.thread

land.lhs.true63.if.then.i.i_crit_edge:            ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

ethnl_put_strz.exit.thread:                       ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i = getelementptr i8, ptr %call1.i, i32 4
  %16 = call ptr @memcpy(ptr %add.ptr.i.i, ptr %spec.select, i32 %call.i157)
  %arrayidx.i158 = getelementptr i8, ptr %add.ptr.i.i, i32 %call.i157
  %17 = ptrtoint ptr %arrayidx.i158 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %arrayidx.i158, align 1
  br label %if.end67

if.end67:                                         ; preds = %ethnl_put_strz.exit.thread, %if.end61.if.end67_crit_edge
  br i1 %tobool1.not, label %if.end67.if.end75_crit_edge, label %land.lhs.true69

if.end67.if.end75_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end75

land.lhs.true69:                                  ; preds = %if.end67
  %arrayidx.i160 = getelementptr i32, ptr %val, i32 %div2.i
  %18 = ptrtoint ptr %arrayidx.i160 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i160, align 4
  %and.i163 = and i32 %19, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i163)
  %tobool.i164.not = icmp eq i32 %and.i163, 0
  br i1 %tobool.i164.not, label %land.lhs.true69.if.end75_crit_edge, label %land.lhs.true71

land.lhs.true69.if.end75_crit_edge:               ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end75

land.lhs.true71:                                  ; preds = %land.lhs.true69
  %call.i165 = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 0, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i165)
  %tobool73.not = icmp eq i32 %call.i165, 0
  br i1 %tobool73.not, label %land.lhs.true71.if.end75_crit_edge, label %land.lhs.true71.if.then.i.i_crit_edge

land.lhs.true71.if.then.i.i_crit_edge:            ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

land.lhs.true71.if.end75_crit_edge:               ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end75

if.end75:                                         ; preds = %land.lhs.true71.if.end75_crit_edge, %land.lhs.true69.if.end75_crit_edge, %if.end67.if.end75_crit_edge
  %20 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %21 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %14 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %22 = ptrtoint ptr %14 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv.i, ptr %14, align 2
  br label %for.inc

for.inc:                                          ; preds = %if.end75, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.0186, 1
  %exitcond.not = icmp eq i32 %inc, %nbits
  br i1 %exitcond.not, label %for.inc.cleanup81_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.cleanup81_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup81

cleanup81:                                        ; preds = %for.inc.cleanup81_crit_edge, %for.cond.preheader.cleanup81_crit_edge
  %23 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i167 = ptrtoint ptr %24 to i32
  %sub.ptr.rhs.cast.i168 = ptrtoint ptr %10 to i32
  %sub.ptr.sub.i169 = sub i32 %sub.ptr.lhs.cast.i167, %sub.ptr.rhs.cast.i168
  %conv.i170 = trunc i32 %sub.ptr.sub.i169 to i16
  %25 = ptrtoint ptr %10 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv.i170, ptr %10, align 2
  br label %if.end85

if.end85:                                         ; preds = %cleanup81, %if.then31, %if.end27.if.end85_crit_edge, %if.end21.if.end85_crit_edge
  %26 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i172 = ptrtoint ptr %27 to i32
  %sub.ptr.rhs.cast.i173 = ptrtoint ptr %1 to i32
  %sub.ptr.sub.i174 = sub i32 %sub.ptr.lhs.cast.i172, %sub.ptr.rhs.cast.i173
  %conv.i175 = trunc i32 %sub.ptr.sub.i174 to i16
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv.i175, ptr %1, align 2
  br label %cleanup87

if.then.i.i:                                      ; preds = %land.lhs.true71.if.then.i.i_crit_edge, %land.lhs.true63.if.then.i.i_crit_edge, %if.end57.if.then.i.i_crit_edge, %if.end53.if.then.i.i_crit_edge, %if.else.if.then.i.i_crit_edge, %if.then23.if.then.i.i_crit_edge, %if.then11.if.then.i.i_crit_edge, %if.end5.if.then.i.i_crit_edge, %land.lhs.true.if.then.i.i_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %29 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i176 = icmp ugt ptr %30, %1
  br i1 %cmp.i.i176, label %do.end.i.i, label %if.then.i.i.nla_nest_cancel.exit_crit_edge, !prof !49

if.then.i.i.nla_nest_cancel.exit_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nla_nest_cancel.exit

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 991, i32 noundef 9, ptr noundef null) #6
  br label %nla_nest_cancel.exit

nla_nest_cancel.exit:                             ; preds = %do.end.i.i, %if.then.i.i.nla_nest_cancel.exit_crit_edge
  %31 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %32 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i) #6
  br label %cleanup87

cleanup87:                                        ; preds = %nla_nest_cancel.exit, %if.end85, %entry.cleanup87_crit_edge
  %retval.0 = phi i32 [ -90, %nla_nest_cancel.exit ], [ 0, %if.end85 ], [ -90, %entry.cleanup87_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nla_reserve(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ethnl_bitset_is_compact(ptr noundef %bitset, ptr nocapture noundef writeonly %compact) local_unnamed_addr #2 align 64 {
entry:
  %tb = alloca [6 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tb) #6
  %0 = getelementptr inbounds [6 x ptr], ptr %tb, i32 0, i32 2
  %1 = getelementptr inbounds [6 x ptr], ptr %tb, i32 0, i32 3
  %2 = getelementptr inbounds [6 x ptr], ptr %tb, i32 0, i32 4
  %3 = getelementptr inbounds [6 x ptr], ptr %tb, i32 0, i32 5
  %nla_type.i = getelementptr inbounds %struct.nlattr, ptr %bitset, i32 0, i32 1
  %4 = call ptr @memset(ptr %tb, i32 255, i32 24)
  %5 = ptrtoint ptr %nla_type.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %nla_type.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %6)
  %tobool.not.i = icmp sgt i16 %6, -1
  br i1 %tobool.not.i, label %nla_parse_nested.exit.thread, label %nla_parse_nested.exit

nla_parse_nested.exit.thread:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nla_parse_nested.__msg) #6
  br label %cleanup

nla_parse_nested.exit:                            ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %bitset, i32 4
  %7 = ptrtoint ptr %bitset to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %bitset, align 2
  %conv.i.i = zext i16 %8 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call6.i = call i32 @__nla_parse(ptr noundef nonnull %tb, i32 noundef 5, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef nonnull @bitset_policy, i32 noundef 31, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp = icmp slt i32 %call6.i, 0
  br i1 %cmp, label %nla_parse_nested.exit.cleanup_crit_edge, label %if.end

nla_parse_nested.exit.cleanup_crit_edge:          ; preds = %nla_parse_nested.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %nla_parse_nested.exit
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %if.end8, label %if.then1

if.then1:                                         ; preds = %if.end
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %2, align 4
  %tobool3.not = icmp eq ptr %12, null
  br i1 %tobool3.not, label %lor.lhs.false, label %if.then1.cleanup_crit_edge

if.then1.cleanup_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.then1
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %3, align 4
  %tobool5.not = icmp eq ptr %14, null
  br i1 %tobool5.not, label %if.end7, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %compact to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %compact, align 1
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %16 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %0, align 4
  %tobool10.not = icmp eq ptr %17, null
  br i1 %tobool10.not, label %if.end8.cleanup_crit_edge, label %lor.lhs.false11

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false11:                                  ; preds = %if.end8
  %18 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %2, align 4
  %tobool13.not = icmp eq ptr %19, null
  br i1 %tobool13.not, label %lor.lhs.false11.cleanup_crit_edge, label %if.end15

lor.lhs.false11.cleanup_crit_edge:                ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end15:                                         ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %compact to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %compact, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %lor.lhs.false11.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end7, %lor.lhs.false.cleanup_crit_edge, %if.then1.cleanup_crit_edge, %nla_parse_nested.exit.cleanup_crit_edge, %nla_parse_nested.exit.thread
  %retval.0 = phi i32 [ 0, %if.end7 ], [ 0, %if.end15 ], [ %call6.i, %nla_parse_nested.exit.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.then1.cleanup_crit_edge ], [ -22, %lor.lhs.false11.cleanup_crit_edge ], [ -22, %if.end8.cleanup_crit_edge ], [ -22, %nla_parse_nested.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tb) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ethnl_update_bitset32(ptr nocapture noundef %bitmap, i32 noundef %nbits, ptr noundef %attr, ptr noundef %names, ptr noundef %extack, ptr nocapture noundef writeonly %mod) local_unnamed_addr #2 align 64 {
entry:
  %new_val.i = alloca i8, align 1
  %idx.i = alloca i32, align 4
  %tb = alloca [6 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tb) #6
  %0 = getelementptr inbounds [6 x ptr], ptr %tb, i32 0, i32 1
  %1 = getelementptr inbounds [6 x ptr], ptr %tb, i32 0, i32 2
  %2 = getelementptr inbounds [6 x ptr], ptr %tb, i32 0, i32 3
  %3 = getelementptr inbounds [6 x ptr], ptr %tb, i32 0, i32 4
  %4 = getelementptr inbounds [6 x ptr], ptr %tb, i32 0, i32 5
  %tobool.not = icmp eq ptr %attr, null
  %5 = call ptr @memset(ptr %tb, i32 255, i32 24)
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %nla_type.i = getelementptr inbounds %struct.nlattr, ptr %attr, i32 0, i32 1
  %6 = ptrtoint ptr %nla_type.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %nla_type.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %7)
  %tobool.not.i = icmp sgt i16 %7, -1
  br i1 %tobool.not.i, label %do.body.i, label %nla_parse_nested.exit

do.body.i:                                        ; preds = %if.end
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nla_parse_nested.__msg) #6
  %tobool1.not.i = icmp eq ptr %extack, null
  br i1 %tobool1.not.i, label %do.body.i.cleanup_crit_edge, label %if.then2.i

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then2.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @nla_parse_nested.__msg, ptr %extack, align 4
  %bad_attr.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 1
  %9 = ptrtoint ptr %bad_attr.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %attr, ptr %bad_attr.i, align 4
  %policy3.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 2
  %10 = ptrtoint ptr %policy3.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %policy3.i, align 4
  br label %cleanup

nla_parse_nested.exit:                            ; preds = %if.end
  %add.ptr.i.i = getelementptr i8, ptr %attr, i32 4
  %11 = ptrtoint ptr %attr to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %attr, align 2
  %conv.i.i = zext i16 %12 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call6.i = call i32 @__nla_parse(ptr noundef nonnull %tb, i32 noundef 5, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef nonnull @bitset_policy, i32 noundef 31, ptr noundef %extack) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp = icmp slt i32 %call6.i, 0
  br i1 %cmp, label %nla_parse_nested.exit.cleanup_crit_edge, label %if.end2

nla_parse_nested.exit.cleanup_crit_edge:          ; preds = %nla_parse_nested.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end2:                                          ; preds = %nla_parse_nested.exit
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %2, align 4
  %tobool3.not = icmp eq ptr %14, null
  br i1 %tobool3.not, label %if.end7, label %if.then4

if.then4:                                         ; preds = %if.end2
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %3, align 4
  %tobool.not.i55 = icmp eq ptr %16, null
  br i1 %tobool.not.i55, label %if.end4.i60, label %do.body.i57

do.body.i57:                                      ; preds = %if.then4
  call void @do_trace_netlink_extack(ptr noundef nonnull @ethnl_update_bitset32_verbose.__msg) #6
  %tobool1.not.i56 = icmp eq ptr %extack, null
  br i1 %tobool1.not.i56, label %do.body.i57.cleanup_crit_edge, label %if.then2.i59

do.body.i57.cleanup_crit_edge:                    ; preds = %do.body.i57
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then2.i59:                                     ; preds = %do.body.i57
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @ethnl_update_bitset32_verbose.__msg, ptr %extack, align 4
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %3, align 4
  %bad_attr.i58 = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 1
  %20 = ptrtoint ptr %bad_attr.i58 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %bad_attr.i58, align 4
  %policy.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 2
  %21 = ptrtoint ptr %policy.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %policy.i, align 4
  br label %cleanup

if.end4.i60:                                      ; preds = %if.then4
  %22 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %4, align 4
  %tobool6.not.i = icmp eq ptr %23, null
  br i1 %tobool6.not.i, label %if.end19.i, label %do.body8.i

do.body8.i:                                       ; preds = %if.end4.i60
  call void @do_trace_netlink_extack(ptr noundef nonnull @ethnl_update_bitset32_verbose.__msg.3) #6
  %tobool10.not.i = icmp eq ptr %extack, null
  br i1 %tobool10.not.i, label %do.body8.i.cleanup_crit_edge, label %if.then11.i

do.body8.i.cleanup_crit_edge:                     ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then11.i:                                      ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @ethnl_update_bitset32_verbose.__msg.3, ptr %extack, align 4
  %25 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %4, align 4
  %bad_attr14.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 1
  %27 = ptrtoint ptr %bad_attr14.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %bad_attr14.i, align 4
  %policy15.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 2
  %28 = ptrtoint ptr %policy15.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %policy15.i, align 4
  br label %cleanup

if.end19.i:                                       ; preds = %if.end4.i60
  %29 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %0, align 4
  %tobool21.i = icmp ne ptr %30, null
  br i1 %tobool21.i, label %if.then23.i, label %if.end19.i.if.end24.i_crit_edge

if.end19.i.if.end24.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24.i

if.then23.i:                                      ; preds = %if.end19.i
  %div181.i.i = lshr i32 %nbits, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nbits)
  %cmp.not.i.not.i = icmp eq i32 %nbits, 0
  br i1 %cmp.not.i.not.i, label %if.then23.i.if.end24.i_crit_edge, label %if.end.i.i

if.then23.i.if.end24.i_crit_edge:                 ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24.i

if.end.i.i:                                       ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %nbits)
  %cmp2286.i.not.i = icmp ult i32 %nbits, 32
  br i1 %cmp2286.i.not.i, label %if.end.i.i.for.end.i.i_crit_edge, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  br label %for.body.i.i

if.end.i.i.for.end.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end.i.i.for.body.i.i_crit_edge
  %i.087.i.i = phi i32 [ %inc28.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.end.i.i.for.body.i.i_crit_edge ]
  %arrayidx23.i.i = getelementptr i32, ptr %bitmap, i32 %i.087.i.i
  %31 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx23.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool24.not.i.i = icmp eq i32 %32, 0
  br i1 %tobool24.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.then25.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i

if.then25.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %arrayidx23.i.i, align 4
  %34 = ptrtoint ptr %mod to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %mod, align 1
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then25.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %inc28.i.i = add nuw nsw i32 %i.087.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc28.i.i, %div181.i.i
  br i1 %exitcond.not.i.i, label %for.inc.i.i.for.end.i.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %if.end.i.i.for.end.i.i_crit_edge
  %rem29.i.i = and i32 %nbits, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem29.i.i)
  %tobool30.not.i.i = icmp eq i32 %rem29.i.i, 0
  br i1 %tobool30.not.i.i, label %for.end.i.i.if.end24.i_crit_edge, label %if.then31.i.i

for.end.i.i.if.end24.i_crit_edge:                 ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24.i

if.then31.i.i:                                    ; preds = %for.end.i.i
  %sub.i84.i.i = sub nuw nsw i32 32, %rem29.i.i
  %shr.i85.i.i = lshr i32 -1, %sub.i84.i.i
  %arrayidx33.i.i = getelementptr i32, ptr %bitmap, i32 %div181.i.i
  %35 = ptrtoint ptr %arrayidx33.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx33.i.i, align 4
  %and34.i.i = and i32 %36, %shr.i85.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34.i.i)
  %tobool35.not.i.i = icmp eq i32 %and34.i.i, 0
  br i1 %tobool35.not.i.i, label %if.then31.i.i.if.end24.i_crit_edge, label %cleanup.sink.split.i.i

if.then31.i.i.if.end24.i_crit_edge:               ; preds = %if.then31.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24.i

cleanup.sink.split.i.i:                           ; preds = %if.then31.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %neg37.i.i = xor i32 %shr.i85.i.i, -1
  %and39.i.i = and i32 %36, %neg37.i.i
  %37 = ptrtoint ptr %arrayidx33.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %and39.i.i, ptr %arrayidx33.i.i, align 4
  %38 = ptrtoint ptr %mod to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %mod, align 1
  br label %if.end24.i

if.end24.i:                                       ; preds = %cleanup.sink.split.i.i, %if.then31.i.i.if.end24.i_crit_edge, %for.end.i.i.if.end24.i_crit_edge, %if.then23.i.if.end24.i_crit_edge, %if.end19.i.if.end24.i_crit_edge
  %39 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %2, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %40, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %42)
  %cmp.i13.i = icmp ugt i16 %42, 7
  br i1 %cmp.i13.i, label %land.lhs.true.i.preheader.i, label %if.end24.i.cleanup_crit_edge

if.end24.i.cleanup_crit_edge:                     ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.i.preheader.i:                      ; preds = %if.end24.i
  %conv.i.i61 = zext i16 %42 to i32
  %sub.i.i62 = add nsw i32 %conv.i.i61, -4
  %add.ptr.i.i63 = getelementptr i8, ptr %40, i32 4
  br label %land.lhs.true.i.i

land.lhs.true.i.i:                                ; preds = %for.inc.i.land.lhs.true.i.i_crit_edge, %land.lhs.true.i.preheader.i
  %bit_attr.015.i = phi ptr [ %add.ptr.i6.i, %for.inc.i.land.lhs.true.i.i_crit_edge ], [ %add.ptr.i.i63, %land.lhs.true.i.preheader.i ]
  %rem.014.i = phi i32 [ %sub1.i.i, %for.inc.i.land.lhs.true.i.i_crit_edge ], [ %sub.i.i62, %land.lhs.true.i.preheader.i ]
  %43 = ptrtoint ptr %bit_attr.015.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %bit_attr.015.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %44)
  %cmp1.i.i = icmp ult i16 %44, 4
  %conv.i2.i = zext i16 %44 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.014.i, i32 %conv.i2.i)
  %cmp5.i.not.i = icmp ult i32 %rem.014.i, %conv.i2.i
  %or.cond.i = select i1 %cmp1.i.i, i1 true, i1 %cmp5.i.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.i.cleanup_crit_edge, label %for.body.i

land.lhs.true.i.i.cleanup_crit_edge:              ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.i:                                       ; preds = %land.lhs.true.i.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %new_val.i) #6
  %45 = ptrtoint ptr %new_val.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 -1, ptr %new_val.i, align 1, !annotation !50
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idx.i) #6
  %46 = ptrtoint ptr %idx.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 -1, ptr %idx.i, align 4, !annotation !50
  %nla_type.i.i = getelementptr inbounds %struct.nlattr, ptr %bit_attr.015.i, i32 0, i32 1
  %47 = ptrtoint ptr %nla_type.i.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %nla_type.i.i, align 2
  %49 = and i16 %48, 16383
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %49)
  %cmp.not.i = icmp eq i16 %49, 1
  br i1 %cmp.not.i, label %if.end42.i, label %do.body32.i

do.body32.i:                                      ; preds = %for.body.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @ethnl_update_bitset32_verbose.__msg.4) #6
  %tobool34.not.i = icmp eq ptr %extack, null
  br i1 %tobool34.not.i, label %do.body32.i.cleanup.thread.i_crit_edge, label %if.then35.i

do.body32.i.cleanup.thread.i_crit_edge:           ; preds = %do.body32.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread.i

if.then35.i:                                      ; preds = %do.body32.i
  call void @__sanitizer_cov_trace_pc() #8
  %50 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @ethnl_update_bitset32_verbose.__msg.4, ptr %extack, align 4
  %bad_attr37.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 1
  %51 = ptrtoint ptr %bad_attr37.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %bit_attr.015.i, ptr %bad_attr37.i, align 4
  %policy38.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 2
  %52 = ptrtoint ptr %policy38.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %policy38.i, align 4
  br label %cleanup.thread.i

if.end42.i:                                       ; preds = %for.body.i
  %call44.i = call fastcc i32 @ethnl_parse_bit(ptr noundef nonnull %idx.i, ptr noundef nonnull %new_val.i, i32 noundef %nbits, ptr noundef %bit_attr.015.i, i1 noundef zeroext %tobool21.i, ptr noundef %names, ptr noundef %extack) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.i)
  %cmp45.i = icmp slt i32 %call44.i, 0
  br i1 %cmp45.i, label %if.end42.i.cleanup.thread.i_crit_edge, label %if.end47.i

if.end42.i.cleanup.thread.i_crit_edge:            ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread.i

if.end47.i:                                       ; preds = %if.end42.i
  %53 = ptrtoint ptr %idx.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %idx.i, align 4
  %div1.i = lshr i32 %54, 5
  %arrayidx48.i = getelementptr i32, ptr %bitmap, i32 %div1.i
  %55 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx48.i, align 4
  %rem49.i = and i32 %54, 31
  %57 = ptrtoint ptr %new_val.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %new_val.i, align 1, !range !51
  %59 = zext i8 %58 to i32
  %60 = lshr i32 %56, %rem49.i
  %61 = and i32 %60, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %59)
  %cmp55.not.i = icmp eq i32 %61, %59
  br i1 %cmp55.not.i, label %if.end47.i.for.inc.i_crit_edge, label %if.then57.i

if.end47.i.for.inc.i_crit_edge:                   ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.then57.i:                                      ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #8
  %shl.i = shl nuw i32 1, %rem49.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool52.not.i = icmp eq i8 %58, 0
  %neg.i = xor i32 %shl.i, -1
  %and68.i = and i32 %56, %neg.i
  %or.i = or i32 %shl.i, %56
  %storemerge.i = select i1 %tobool52.not.i, i32 %and68.i, i32 %or.i
  %62 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %storemerge.i, ptr %arrayidx48.i, align 4
  %63 = ptrtoint ptr %mod to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 1, ptr %mod, align 1
  br label %for.inc.i

cleanup.thread.i:                                 ; preds = %if.end42.i.cleanup.thread.i_crit_edge, %if.then35.i, %do.body32.i.cleanup.thread.i_crit_edge
  %retval.1.ph.i = phi i32 [ -22, %do.body32.i.cleanup.thread.i_crit_edge ], [ -22, %if.then35.i ], [ %call44.i, %if.end42.i.cleanup.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idx.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %new_val.i) #6
  br label %cleanup

for.inc.i:                                        ; preds = %if.then57.i, %if.end47.i.for.inc.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idx.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %new_val.i) #6
  %64 = ptrtoint ptr %bit_attr.015.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %bit_attr.015.i, align 2
  %conv.i3.i = zext i16 %65 to i32
  %sub.i4.i = add nuw nsw i32 %conv.i3.i, 3
  %and.i5.i = and i32 %sub.i4.i, 131068
  %sub1.i.i = sub nsw i32 %rem.014.i, %and.i5.i
  %add.ptr.i6.i = getelementptr i8, ptr %bit_attr.015.i, i32 %and.i5.i
  %cmp.i.i = icmp sgt i32 %sub1.i.i, 3
  br i1 %cmp.i.i, label %for.inc.i.land.lhs.true.i.i_crit_edge, label %for.inc.i.cleanup_crit_edge

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc.i.land.lhs.true.i.i_crit_edge:            ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true.i.i

if.end7:                                          ; preds = %if.end2
  %call9 = call fastcc i32 @ethnl_compact_sanity_checks(i32 noundef %nbits, ptr noundef nonnull %attr, ptr noundef nonnull %tb, ptr noundef %extack)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.end7.cleanup_crit_edge, label %if.end12

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  %66 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %0, align 4
  %tobool14.not = icmp eq ptr %67, null
  %68 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %1, align 4
  %add.ptr.i.i64 = getelementptr i8, ptr %69, i32 4
  %70 = ptrtoint ptr %add.ptr.i.i64 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %add.ptr.i.i64, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %71, i32 %nbits)
  %cmp17 = icmp ult i32 %71, %nbits
  %72 = call i32 @llvm.umin.i32(i32 %71, i32 %nbits)
  %73 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %3, align 4
  %add.ptr.i = getelementptr i8, ptr %74, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %cmp.not36.i = icmp eq i32 %72, 0
  br i1 %tobool14.not, label %cond.false22, label %land.lhs.true.critedge

cond.false22:                                     ; preds = %if.end12
  br i1 %cmp.not36.i, label %cond.false22.cleanup_crit_edge, label %while.body.i.preheader

cond.false22.cleanup_crit_edge:                   ; preds = %cond.false22
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body.i.preheader:                           ; preds = %cond.false22
  %75 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %4, align 4
  %add.ptr.i65 = getelementptr i8, ptr %76, i32 4
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i, %while.body.i.preheader
  %dst.addr.040.i = phi ptr [ %bitmap, %while.body.i.preheader ], [ %incdec.ptr.i, %cleanup.i ]
  %mask.addr.039.i = phi ptr [ %add.ptr.i65, %while.body.i.preheader ], [ %mask.addr.039.i.be, %cleanup.i ]
  %value.addr.038.i = phi ptr [ %add.ptr.i, %while.body.i.preheader ], [ %incdec.ptr10.i, %cleanup.i ]
  %nbits.addr.037.i = phi i32 [ %72, %while.body.i.preheader ], [ %sub.i, %cleanup.i ]
  %tobool.not.i66 = icmp eq ptr %mask.addr.039.i, null
  br i1 %tobool.not.i66, label %while.body.i.cond.end.i_crit_edge, label %cond.true.i

while.body.i.cond.end.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.i

cond.true.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %77 = ptrtoint ptr %mask.addr.039.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %mask.addr.039.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %while.body.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %78, %cond.true.i ], [ -1, %while.body.i.cond.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %nbits.addr.037.i)
  %cmp1.i = icmp ult i32 %nbits.addr.037.i, 32
  %sub.i.i67 = sub nuw nsw i32 32, %nbits.addr.037.i
  %shr.i.i = lshr i32 -1, %sub.i.i67
  %and.i = select i1 %cmp1.i, i32 %shr.i.i, i32 -1
  %real_mask.0.i = and i32 %cond.i, %and.i
  %79 = ptrtoint ptr %dst.addr.040.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %dst.addr.040.i, align 4
  %neg.i68 = xor i32 %real_mask.0.i, -1
  %and2.i = and i32 %80, %neg.i68
  %81 = ptrtoint ptr %value.addr.038.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %value.addr.038.i, align 4
  %and3.i = and i32 %82, %real_mask.0.i
  %or.i69 = or i32 %and3.i, %and2.i
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i69, i32 %80)
  %cmp4.not.i = icmp eq i32 %or.i69, %80
  br i1 %cmp4.not.i, label %cond.end.i.if.end6.i_crit_edge, label %if.then5.i

cond.end.i.if.end6.i_crit_edge:                   ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6.i

if.then5.i:                                       ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %83 = ptrtoint ptr %dst.addr.040.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %or.i69, ptr %dst.addr.040.i, align 4
  %84 = ptrtoint ptr %mod to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 1, ptr %mod, align 1
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then5.i, %cond.end.i.if.end6.i_crit_edge
  %cmp7.i = icmp ult i32 %nbits.addr.037.i, 33
  br i1 %cmp7.i, label %if.end6.i.cleanup_crit_edge, label %cleanup.i

if.end6.i.cleanup_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup.i:                                        ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  %incdec.ptr.i = getelementptr i32, ptr %dst.addr.040.i, i32 1
  %sub.i = add i32 %nbits.addr.037.i, -32
  %incdec.ptr10.i = getelementptr i32, ptr %value.addr.038.i, i32 1
  %incdec.ptr13.i = getelementptr i32, ptr %mask.addr.039.i, i32 1
  %mask.addr.039.i.be = select i1 %tobool.not.i66, ptr null, ptr %incdec.ptr13.i
  br label %while.body.i

land.lhs.true.critedge:                           ; preds = %if.end12
  br i1 %cmp.not36.i, label %land.lhs.true.critedge.ethnl_bitmap32_update.exit99_crit_edge, label %land.lhs.true.critedge.cond.end.i89_crit_edge

land.lhs.true.critedge.cond.end.i89_crit_edge:    ; preds = %land.lhs.true.critedge
  br label %cond.end.i89

land.lhs.true.critedge.ethnl_bitmap32_update.exit99_crit_edge: ; preds = %land.lhs.true.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %ethnl_bitmap32_update.exit99

cond.end.i89:                                     ; preds = %cleanup.i98, %land.lhs.true.critedge.cond.end.i89_crit_edge
  %dst.addr.040.i71 = phi ptr [ %incdec.ptr.i93, %cleanup.i98 ], [ %bitmap, %land.lhs.true.critedge.cond.end.i89_crit_edge ]
  %value.addr.038.i73 = phi ptr [ %incdec.ptr10.i95, %cleanup.i98 ], [ %add.ptr.i, %land.lhs.true.critedge.cond.end.i89_crit_edge ]
  %nbits.addr.037.i74 = phi i32 [ %sub.i94, %cleanup.i98 ], [ %72, %land.lhs.true.critedge.cond.end.i89_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %nbits.addr.037.i74)
  %cmp1.i79 = icmp ult i32 %nbits.addr.037.i74, 32
  %sub.i.i80 = sub nuw nsw i32 32, %nbits.addr.037.i74
  %shr.i.i81 = lshr i32 -1, %sub.i.i80
  %and.i82 = select i1 %cmp1.i79, i32 %shr.i.i81, i32 -1
  %85 = ptrtoint ptr %dst.addr.040.i71 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %dst.addr.040.i71, align 4
  %neg.i84 = xor i32 %and.i82, -1
  %and2.i85 = and i32 %86, %neg.i84
  %87 = ptrtoint ptr %value.addr.038.i73 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %value.addr.038.i73, align 4
  %and3.i86 = and i32 %88, %and.i82
  %or.i87 = or i32 %and3.i86, %and2.i85
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i87, i32 %86)
  %cmp4.not.i88 = icmp eq i32 %or.i87, %86
  br i1 %cmp4.not.i88, label %cond.end.i89.if.end6.i92_crit_edge, label %if.then5.i90

cond.end.i89.if.end6.i92_crit_edge:               ; preds = %cond.end.i89
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6.i92

if.then5.i90:                                     ; preds = %cond.end.i89
  call void @__sanitizer_cov_trace_pc() #8
  %89 = ptrtoint ptr %dst.addr.040.i71 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %or.i87, ptr %dst.addr.040.i71, align 4
  %90 = ptrtoint ptr %mod to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 1, ptr %mod, align 1
  br label %if.end6.i92

if.end6.i92:                                      ; preds = %if.then5.i90, %cond.end.i89.if.end6.i92_crit_edge
  %cmp7.i91 = icmp ult i32 %nbits.addr.037.i74, 33
  br i1 %cmp7.i91, label %if.end6.i92.ethnl_bitmap32_update.exit99_crit_edge, label %cleanup.i98

if.end6.i92.ethnl_bitmap32_update.exit99_crit_edge: ; preds = %if.end6.i92
  call void @__sanitizer_cov_trace_pc() #8
  br label %ethnl_bitmap32_update.exit99

cleanup.i98:                                      ; preds = %if.end6.i92
  call void @__sanitizer_cov_trace_pc() #8
  %incdec.ptr.i93 = getelementptr i32, ptr %dst.addr.040.i71, i32 1
  %sub.i94 = add i32 %nbits.addr.037.i74, -32
  %incdec.ptr10.i95 = getelementptr i32, ptr %value.addr.038.i73, i32 1
  br label %cond.end.i89

ethnl_bitmap32_update.exit99:                     ; preds = %if.end6.i92.ethnl_bitmap32_update.exit99_crit_edge, %land.lhs.true.critedge.ethnl_bitmap32_update.exit99_crit_edge
  br i1 %cmp17, label %if.end.i, label %ethnl_bitmap32_update.exit99.cleanup_crit_edge

ethnl_bitmap32_update.exit99.cleanup_crit_edge:   ; preds = %ethnl_bitmap32_update.exit99
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %ethnl_bitmap32_update.exit99
  %div80.i = lshr i32 %72, 5
  %div181.i = lshr i32 %nbits, 5
  %rem.i = and i32 %72, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool.not.i100 = icmp eq i32 %rem.i, 0
  br i1 %tobool.not.i100, label %if.end.i.if.end21.i_crit_edge, label %if.then2.i101

if.end.i.if.end21.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21.i

if.then2.i101:                                    ; preds = %if.end.i
  %shl.i.i = shl nsw i32 -1, %rem.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div181.i, i32 %div80.i)
  %cmp3.i = icmp eq i32 %div181.i, %div80.i
  br i1 %cmp3.i, label %if.then4.i, label %if.end12.i

if.then4.i:                                       ; preds = %if.then2.i101
  %rem.i82.i = and i32 %nbits, 31
  %sub.i.i102 = sub nuw nsw i32 32, %rem.i82.i
  %shr.i.i103 = lshr i32 -1, %sub.i.i102
  %and.i104 = and i32 %shl.i.i, %shr.i.i103
  %arrayidx.i105 = getelementptr i32, ptr %bitmap, i32 %div181.i
  %91 = ptrtoint ptr %arrayidx.i105 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %arrayidx.i105, align 4
  %and6.i = and i32 %92, %and.i104
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool7.not.i, label %if.then4.i.cleanup_crit_edge, label %if.then4.i.cleanup.sink.split.i_crit_edge

if.then4.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i

if.then4.i.cleanup_crit_edge:                     ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12.i:                                       ; preds = %if.then2.i101
  %arrayidx13.i = getelementptr i32, ptr %bitmap, i32 %div80.i
  %93 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %arrayidx13.i, align 4
  %and14.i = and i32 %94, %shl.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  br i1 %tobool15.not.i, label %if.end12.i.if.end20.i_crit_edge, label %if.then16.i

if.end12.i.if.end20.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20.i

if.then16.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  %neg17.i = xor i32 %shl.i.i, -1
  %and19.i = and i32 %94, %neg17.i
  %95 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %and19.i, ptr %arrayidx13.i, align 4
  %96 = ptrtoint ptr %mod to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 1, ptr %mod, align 1
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then16.i, %if.end12.i.if.end20.i_crit_edge
  %inc.i = add nuw nsw i32 %div80.i, 1
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.end20.i, %if.end.i.if.end21.i_crit_edge
  %start_word.0.i = phi i32 [ %inc.i, %if.end20.i ], [ %div80.i, %if.end.i.if.end21.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %start_word.0.i, i32 %div181.i)
  %cmp2286.i = icmp ult i32 %start_word.0.i, %div181.i
  br i1 %cmp2286.i, label %if.end21.i.for.body.i106_crit_edge, label %if.end21.i.for.end.i_crit_edge

if.end21.i.for.end.i_crit_edge:                   ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

if.end21.i.for.body.i106_crit_edge:               ; preds = %if.end21.i
  br label %for.body.i106

for.body.i106:                                    ; preds = %for.inc.i107.for.body.i106_crit_edge, %if.end21.i.for.body.i106_crit_edge
  %i.087.i = phi i32 [ %inc28.i, %for.inc.i107.for.body.i106_crit_edge ], [ %start_word.0.i, %if.end21.i.for.body.i106_crit_edge ]
  %arrayidx23.i = getelementptr i32, ptr %bitmap, i32 %i.087.i
  %97 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %arrayidx23.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %tobool24.not.i = icmp eq i32 %98, 0
  br i1 %tobool24.not.i, label %for.body.i106.for.inc.i107_crit_edge, label %if.then25.i

for.body.i106.for.inc.i107_crit_edge:             ; preds = %for.body.i106
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i107

if.then25.i:                                      ; preds = %for.body.i106
  call void @__sanitizer_cov_trace_pc() #8
  %99 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 0, ptr %arrayidx23.i, align 4
  %100 = ptrtoint ptr %mod to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 1, ptr %mod, align 1
  br label %for.inc.i107

for.inc.i107:                                     ; preds = %if.then25.i, %for.body.i106.for.inc.i107_crit_edge
  %inc28.i = add nuw nsw i32 %i.087.i, 1
  %exitcond.not.i = icmp eq i32 %inc28.i, %div181.i
  br i1 %exitcond.not.i, label %for.inc.i107.for.end.i_crit_edge, label %for.inc.i107.for.body.i106_crit_edge

for.inc.i107.for.body.i106_crit_edge:             ; preds = %for.inc.i107
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i106

for.inc.i107.for.end.i_crit_edge:                 ; preds = %for.inc.i107
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i107.for.end.i_crit_edge, %if.end21.i.for.end.i_crit_edge
  %rem29.i = and i32 %nbits, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem29.i)
  %tobool30.not.i = icmp eq i32 %rem29.i, 0
  br i1 %tobool30.not.i, label %for.end.i.cleanup_crit_edge, label %if.then31.i

for.end.i.cleanup_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then31.i:                                      ; preds = %for.end.i
  %sub.i84.i = sub nuw nsw i32 32, %rem29.i
  %shr.i85.i = lshr i32 -1, %sub.i84.i
  %arrayidx33.i = getelementptr i32, ptr %bitmap, i32 %div181.i
  %101 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %arrayidx33.i, align 4
  %and34.i = and i32 %102, %shr.i85.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34.i)
  %tobool35.not.i = icmp eq i32 %and34.i, 0
  br i1 %tobool35.not.i, label %if.then31.i.cleanup_crit_edge, label %if.then31.i.cleanup.sink.split.i_crit_edge

if.then31.i.cleanup.sink.split.i_crit_edge:       ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i

if.then31.i.cleanup_crit_edge:                    ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup.sink.split.i:                             ; preds = %if.then31.i.cleanup.sink.split.i_crit_edge, %if.then4.i.cleanup.sink.split.i_crit_edge
  %shr.i85.sink.i = phi i32 [ %and.i104, %if.then4.i.cleanup.sink.split.i_crit_edge ], [ %shr.i85.i, %if.then31.i.cleanup.sink.split.i_crit_edge ]
  %.sink.i = phi i32 [ %92, %if.then4.i.cleanup.sink.split.i_crit_edge ], [ %102, %if.then31.i.cleanup.sink.split.i_crit_edge ]
  %arrayidx33.sink.i = phi ptr [ %arrayidx.i105, %if.then4.i.cleanup.sink.split.i_crit_edge ], [ %arrayidx33.i, %if.then31.i.cleanup.sink.split.i_crit_edge ]
  %neg37.i = xor i32 %shr.i85.sink.i, -1
  %and39.i = and i32 %.sink.i, %neg37.i
  %103 = ptrtoint ptr %arrayidx33.sink.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %and39.i, ptr %arrayidx33.sink.i, align 4
  %104 = ptrtoint ptr %mod to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 1, ptr %mod, align 1
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split.i, %if.then31.i.cleanup_crit_edge, %for.end.i.cleanup_crit_edge, %if.then4.i.cleanup_crit_edge, %ethnl_bitmap32_update.exit99.cleanup_crit_edge, %if.end6.i.cleanup_crit_edge, %cond.false22.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %cleanup.thread.i, %land.lhs.true.i.i.cleanup_crit_edge, %if.end24.i.cleanup_crit_edge, %if.then11.i, %do.body8.i.cleanup_crit_edge, %if.then2.i59, %do.body.i57.cleanup_crit_edge, %nla_parse_nested.exit.cleanup_crit_edge, %if.then2.i, %do.body.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call6.i, %nla_parse_nested.exit.cleanup_crit_edge ], [ %call9, %if.end7.cleanup_crit_edge ], [ 0, %ethnl_bitmap32_update.exit99.cleanup_crit_edge ], [ -22, %if.then2.i59 ], [ -22, %do.body.i57.cleanup_crit_edge ], [ -22, %if.then11.i ], [ -22, %do.body8.i.cleanup_crit_edge ], [ %retval.1.ph.i, %cleanup.thread.i ], [ 0, %if.end24.i.cleanup_crit_edge ], [ 0, %cond.false22.cleanup_crit_edge ], [ 0, %if.then4.i.cleanup_crit_edge ], [ 0, %for.end.i.cleanup_crit_edge ], [ 0, %if.then31.i.cleanup_crit_edge ], [ 0, %cleanup.sink.split.i ], [ -22, %if.then2.i ], [ -22, %do.body.i.cleanup_crit_edge ], [ 0, %if.end6.i.cleanup_crit_edge ], [ 0, %land.lhs.true.i.i.cleanup_crit_edge ], [ 0, %for.inc.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tb) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ethnl_compact_sanity_checks(i32 noundef %nbits, ptr noundef %nest, ptr nocapture noundef readonly %tb, ptr noundef writeonly %extack) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr ptr, ptr %tb, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %land.lhs.true

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

land.lhs.true:                                    ; preds = %entry
  %arrayidx2 = getelementptr ptr, ptr %tb, i32 5
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx2, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %land.lhs.true.if.end7_crit_edge, label %do.body

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

do.body:                                          ; preds = %land.lhs.true
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ethnl_compact_sanity_checks.__msg) #6
  %tobool4.not = icmp eq ptr %extack, null
  br i1 %tobool4.not, label %do.body.cleanup_crit_edge, label %if.then5

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @ethnl_compact_sanity_checks.__msg, ptr %extack, align 4
  %5 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx2, align 4
  br label %cleanup.sink.split

if.end7:                                          ; preds = %land.lhs.true.if.end7_crit_edge, %entry.if.end7_crit_edge
  %arrayidx8 = getelementptr ptr, ptr %tb, i32 2
  %7 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx8, align 4
  %tobool9.not = icmp eq ptr %8, null
  br i1 %tobool9.not, label %do.body11, label %if.end21

do.body11:                                        ; preds = %if.end7
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ethnl_compact_sanity_checks.__msg.5) #6
  %tobool13.not = icmp eq ptr %extack, null
  br i1 %tobool13.not, label %do.body11.cleanup_crit_edge, label %if.then14

do.body11.cleanup_crit_edge:                      ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then14:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @ethnl_compact_sanity_checks.__msg.5, ptr %extack, align 4
  br label %cleanup.sink.split

if.end21:                                         ; preds = %if.end7
  %arrayidx22 = getelementptr ptr, ptr %tb, i32 4
  %10 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx22, align 4
  %tobool23.not = icmp eq ptr %11, null
  br i1 %tobool23.not, label %do.body25, label %if.end35

do.body25:                                        ; preds = %if.end21
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ethnl_compact_sanity_checks.__msg.6) #6
  %tobool27.not = icmp eq ptr %extack, null
  br i1 %tobool27.not, label %do.body25.cleanup_crit_edge, label %if.then28

do.body25.cleanup_crit_edge:                      ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then28:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @ethnl_compact_sanity_checks.__msg.6, ptr %extack, align 4
  br label %cleanup.sink.split

if.end35:                                         ; preds = %if.end21
  br i1 %tobool.not, label %land.lhs.true37, label %if.end35.if.end51_crit_edge

if.end35.if.end51_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51

land.lhs.true37:                                  ; preds = %if.end35
  %arrayidx38 = getelementptr ptr, ptr %tb, i32 5
  %13 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx38, align 4
  %tobool39.not = icmp eq ptr %14, null
  br i1 %tobool39.not, label %do.body41, label %land.lhs.true37.if.end51_crit_edge

land.lhs.true37.if.end51_crit_edge:               ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51

do.body41:                                        ; preds = %land.lhs.true37
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ethnl_compact_sanity_checks.__msg.7) #6
  %tobool43.not = icmp eq ptr %extack, null
  br i1 %tobool43.not, label %do.body41.cleanup_crit_edge, label %if.then44

do.body41.cleanup_crit_edge:                      ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then44:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @ethnl_compact_sanity_checks.__msg.7, ptr %extack, align 4
  br label %cleanup.sink.split

if.end51:                                         ; preds = %land.lhs.true37.if.end51_crit_edge, %if.end35.if.end51_crit_edge
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 4
  %16 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr.i.i, align 4
  %sub = add i32 %17, 31
  %18 = ptrtoint ptr %11 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %11, align 2
  %conv.i = zext i16 %19 to i32
  %sub.i = add nsw i32 %conv.i, -4
  %20 = lshr i32 %sub, 3
  %mul = and i32 %20, 536870908
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %mul)
  %cmp.not = icmp eq i32 %sub.i, %mul
  br i1 %cmp.not, label %if.end67, label %do.body56

do.body56:                                        ; preds = %if.end51
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ethnl_compact_sanity_checks.__msg.8) #6
  %tobool58.not = icmp eq ptr %extack, null
  br i1 %tobool58.not, label %do.body56.cleanup_crit_edge, label %if.then59

do.body56.cleanup_crit_edge:                      ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then59:                                        ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @ethnl_compact_sanity_checks.__msg.8, ptr %extack, align 4
  %22 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx22, align 4
  br label %cleanup.sink.split

if.end67:                                         ; preds = %if.end51
  %arrayidx68 = getelementptr ptr, ptr %tb, i32 5
  %24 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx68, align 4
  %tobool69.not = icmp eq ptr %25, null
  br i1 %tobool69.not, label %if.end67.if.end87_crit_edge, label %land.lhs.true70

if.end67.if.end87_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end87

land.lhs.true70:                                  ; preds = %if.end67
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %25, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %27, i16 %19)
  %cmp74.not = icmp eq i16 %27, %19
  br i1 %cmp74.not, label %land.lhs.true70.if.end87_crit_edge, label %do.body76

land.lhs.true70.if.end87_crit_edge:               ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end87

do.body76:                                        ; preds = %land.lhs.true70
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ethnl_compact_sanity_checks.__msg.9) #6
  %tobool78.not = icmp eq ptr %extack, null
  br i1 %tobool78.not, label %do.body76.cleanup_crit_edge, label %if.then79

do.body76.cleanup_crit_edge:                      ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then79:                                        ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @ethnl_compact_sanity_checks.__msg.9, ptr %extack, align 4
  %29 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx68, align 4
  br label %cleanup.sink.split

if.end87:                                         ; preds = %land.lhs.true70.if.end87_crit_edge, %if.end67.if.end87_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %nbits)
  %cmp88.not = icmp ugt i32 %17, %nbits
  br i1 %cmp88.not, label %if.end.i, label %if.end87.cleanup_crit_edge

if.end87.cleanup_crit_edge:                       ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %if.end87
  %arrayidx68.arrayidx22 = select i1 %tobool.not, ptr %arrayidx68, ptr %arrayidx22
  %31 = ptrtoint ptr %arrayidx68.arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %31)
  %cond = load ptr, ptr %arrayidx68.arrayidx22, align 4
  %add.ptr.i = getelementptr i8, ptr %cond, i32 4
  %div48.i = lshr i32 %nbits, 5
  %div149.i = lshr i32 %17, 5
  %rem.i = and i32 %nbits, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool.not.i = icmp eq i32 %rem.i, 0
  br i1 %tobool.not.i, label %if.end.i.if.end14.i_crit_edge, label %if.then2.i

if.end.i.if.end14.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14.i

if.then2.i:                                       ; preds = %if.end.i
  %shl.i.i = shl nsw i32 -1, %rem.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div149.i, i32 %div48.i)
  %cmp3.i = icmp eq i32 %div149.i, %div48.i
  br i1 %cmp3.i, label %if.then4.i, label %if.end8.i

if.then4.i:                                       ; preds = %if.then2.i
  %rem.i50.i = and i32 %17, 31
  %sub.i.i = sub nuw nsw i32 32, %rem.i50.i
  %shr.i.i = lshr i32 -1, %sub.i.i
  %and.i = and i32 %shr.i.i, %shl.i.i
  %arrayidx.i = getelementptr i32, ptr %add.ptr.i, i32 %div48.i
  %32 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.i, align 4
  %and6.i = and i32 %and.i, %33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.i.not = icmp eq i32 %and6.i, 0
  br i1 %tobool7.i.not, label %if.then4.i.cleanup_crit_edge, label %if.then4.i.do.body97_crit_edge

if.then4.i.do.body97_crit_edge:                   ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body97

if.then4.i.cleanup_crit_edge:                     ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8.i:                                        ; preds = %if.then2.i
  %arrayidx9.i = getelementptr i32, ptr %add.ptr.i, i32 %div48.i
  %34 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx9.i, align 4
  %and10.i = and i32 %35, %shl.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  br i1 %tobool11.not.i, label %if.end13.i, label %if.end8.i.do.body97_crit_edge

if.end8.i.do.body97_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body97

if.end13.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  %inc.i = add nuw nsw i32 %div48.i, 1
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.end13.i, %if.end.i.if.end14.i_crit_edge
  %start_word.0.i = phi i32 [ %inc.i, %if.end13.i ], [ %div48.i, %if.end.i.if.end14.i_crit_edge ]
  %add.ptr.i163 = getelementptr i32, ptr %add.ptr.i, i32 %start_word.0.i
  %sub.i164 = sub nsw i32 %div149.i, %start_word.0.i
  %mul.i = shl nsw i32 %sub.i164, 2
  %call15.i = tail call ptr @memchr_inv(ptr noundef %add.ptr.i163, i32 noundef 0, i32 noundef %mul.i) #6
  %tobool16.not.i = icmp eq ptr %call15.i, null
  %rem19.i = and i32 %17, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem19.i)
  %cmp20.i = icmp eq i32 %rem19.i, 0
  %or.cond.i = or i1 %cmp20.i, %tobool16.not.i
  br i1 %or.cond.i, label %if.end14.i.do.body97_crit_edge, label %ethnl_bitmap32_not_zero.exit

if.end14.i.do.body97_crit_edge:                   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body97

ethnl_bitmap32_not_zero.exit:                     ; preds = %if.end14.i
  %arrayidx23.i = getelementptr i32, ptr %add.ptr.i, i32 %div149.i
  %36 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx23.i, align 4
  %sub.i52.i = sub nuw nsw i32 32, %rem19.i
  %shr.i53.i = lshr i32 -1, %sub.i52.i
  %and25.i = and i32 %37, %shr.i53.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool26.i.not = icmp eq i32 %and25.i, 0
  br i1 %tobool26.i.not, label %ethnl_bitmap32_not_zero.exit.cleanup_crit_edge, label %ethnl_bitmap32_not_zero.exit.do.body97_crit_edge

ethnl_bitmap32_not_zero.exit.do.body97_crit_edge: ; preds = %ethnl_bitmap32_not_zero.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body97

ethnl_bitmap32_not_zero.exit.cleanup_crit_edge:   ; preds = %ethnl_bitmap32_not_zero.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body97:                                        ; preds = %ethnl_bitmap32_not_zero.exit.do.body97_crit_edge, %if.end14.i.do.body97_crit_edge, %if.end8.i.do.body97_crit_edge, %if.then4.i.do.body97_crit_edge
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ethnl_compact_sanity_checks.__msg.10) #6
  %tobool99.not = icmp eq ptr %extack, null
  br i1 %tobool99.not, label %do.body97.cleanup_crit_edge, label %if.then100

do.body97.cleanup_crit_edge:                      ; preds = %do.body97
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then100:                                       ; preds = %do.body97
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @ethnl_compact_sanity_checks.__msg.10, ptr %extack, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then100, %if.then79, %if.then59, %if.then44, %if.then28, %if.then14, %if.then5
  %cond.sink = phi ptr [ %cond, %if.then100 ], [ %30, %if.then79 ], [ %23, %if.then59 ], [ %nest, %if.then44 ], [ %nest, %if.then28 ], [ %nest, %if.then14 ], [ %6, %if.then5 ]
  %bad_attr102 = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 1
  %39 = ptrtoint ptr %bad_attr102 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %cond.sink, ptr %bad_attr102, align 4
  %policy103 = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 2
  %40 = ptrtoint ptr %policy103 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %policy103, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.body97.cleanup_crit_edge, %ethnl_bitmap32_not_zero.exit.cleanup_crit_edge, %if.then4.i.cleanup_crit_edge, %if.end87.cleanup_crit_edge, %do.body76.cleanup_crit_edge, %do.body56.cleanup_crit_edge, %do.body41.cleanup_crit_edge, %do.body25.cleanup_crit_edge, %do.body11.cleanup_crit_edge, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.body.cleanup_crit_edge ], [ -22, %do.body11.cleanup_crit_edge ], [ -22, %do.body25.cleanup_crit_edge ], [ -22, %do.body41.cleanup_crit_edge ], [ -22, %do.body56.cleanup_crit_edge ], [ -22, %do.body76.cleanup_crit_edge ], [ 0, %if.end87.cleanup_crit_edge ], [ -22, %do.body97.cleanup_crit_edge ], [ 0, %ethnl_bitmap32_not_zero.exit.cleanup_crit_edge ], [ 0, %if.then4.i.cleanup_crit_edge ], [ -22, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ethnl_parse_bitset(ptr noundef %val, ptr noundef %mask, i32 noundef %nbits, ptr noundef %attr, ptr noundef %names, ptr noundef %extack) local_unnamed_addr #2 align 64 {
entry:
  %tb = alloca [6 x ptr], align 4
  %idx = alloca i32, align 4
  %bit_val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tb) #6
  %0 = getelementptr inbounds [6 x ptr], ptr %tb, i32 0, i32 1
  %1 = getelementptr inbounds [6 x ptr], ptr %tb, i32 0, i32 2
  %2 = getelementptr inbounds [6 x ptr], ptr %tb, i32 0, i32 3
  %3 = getelementptr inbounds [6 x ptr], ptr %tb, i32 0, i32 4
  %4 = getelementptr inbounds [6 x ptr], ptr %tb, i32 0, i32 5
  %tobool.not = icmp eq ptr %attr, null
  %5 = call ptr @memset(ptr %tb, i32 255, i32 24)
  br i1 %tobool.not, label %entry.cleanup79_crit_edge, label %if.end

entry.cleanup79_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup79

if.end:                                           ; preds = %entry
  %nla_type.i = getelementptr inbounds %struct.nlattr, ptr %attr, i32 0, i32 1
  %6 = ptrtoint ptr %nla_type.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %nla_type.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %7)
  %tobool.not.i = icmp sgt i16 %7, -1
  br i1 %tobool.not.i, label %do.body.i, label %nla_parse_nested.exit

do.body.i:                                        ; preds = %if.end
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nla_parse_nested.__msg) #6
  %tobool1.not.i = icmp eq ptr %extack, null
  br i1 %tobool1.not.i, label %do.body.i.cleanup79_crit_edge, label %if.then2.i

do.body.i.cleanup79_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup79

if.then2.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @nla_parse_nested.__msg, ptr %extack, align 4
  %bad_attr.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 1
  %9 = ptrtoint ptr %bad_attr.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %attr, ptr %bad_attr.i, align 4
  %policy3.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 2
  %10 = ptrtoint ptr %policy3.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %policy3.i, align 4
  br label %cleanup79

nla_parse_nested.exit:                            ; preds = %if.end
  %add.ptr.i.i161 = getelementptr i8, ptr %attr, i32 4
  %11 = ptrtoint ptr %attr to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %attr, align 2
  %conv.i.i = zext i16 %12 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call6.i = call i32 @__nla_parse(ptr noundef nonnull %tb, i32 noundef 5, ptr noundef %add.ptr.i.i161, i32 noundef %sub.i.i, ptr noundef nonnull @bitset_policy, i32 noundef 31, ptr noundef %extack) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp = icmp slt i32 %call6.i, 0
  br i1 %cmp, label %nla_parse_nested.exit.cleanup79_crit_edge, label %if.end2

nla_parse_nested.exit.cleanup79_crit_edge:        ; preds = %nla_parse_nested.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup79

if.end2:                                          ; preds = %nla_parse_nested.exit
  %13 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %0, align 4
  %tobool3 = icmp ne ptr %14, null
  %15 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %2, align 4
  %tobool5.not = icmp eq ptr %16, null
  br i1 %tobool5.not, label %if.then6, label %if.end31

if.then6:                                         ; preds = %if.end2
  %call8 = call fastcc i32 @ethnl_compact_sanity_checks(i32 noundef %nbits, ptr noundef nonnull %attr, ptr noundef nonnull %tb, ptr noundef %extack)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.then6.cleanup79_crit_edge, label %if.end11

if.then6.cleanup79_crit_edge:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup79

if.end11:                                         ; preds = %if.then6
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %add.ptr.i.i162 = getelementptr i8, ptr %18, i32 4
  %19 = ptrtoint ptr %add.ptr.i.i162 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %add.ptr.i.i162, align 4
  %21 = call i32 @llvm.umin.i32(i32 %20, i32 %nbits)
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %3, align 4
  %add.ptr.i163 = getelementptr i8, ptr %23, i32 4
  %sub.i.i164 = add i32 %21, 31
  %24 = lshr i32 %sub.i.i164, 3
  %mul.i.i = and i32 %24, 536870908
  %25 = call ptr @memcpy(ptr %val, ptr %add.ptr.i163, i32 %mul.i.i)
  %rem.i165 = and i32 %21, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i165)
  %tobool.not.i166 = icmp eq i32 %rem.i165, 0
  br i1 %tobool.not.i166, label %if.end11.bitmap_copy_clear_tail.exit_crit_edge, label %if.then.i167

if.end11.bitmap_copy_clear_tail.exit_crit_edge:   ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %bitmap_copy_clear_tail.exit

if.then.i167:                                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i = sub i32 0, %21
  %and.i = and i32 %sub.i, 31
  %shr.i = lshr i32 -1, %and.i
  %div6.i = lshr i32 %21, 5
  %arrayidx.i = getelementptr i32, ptr %val, i32 %div6.i
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i, align 4
  %and1.i = and i32 %27, %shr.i
  store i32 %and1.i, ptr %arrayidx.i, align 4
  br label %bitmap_copy_clear_tail.exit

bitmap_copy_clear_tail.exit:                      ; preds = %if.then.i167, %if.end11.bitmap_copy_clear_tail.exit_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %nbits)
  %cmp19 = icmp ult i32 %20, %nbits
  br i1 %cmp19, label %if.then20, label %bitmap_copy_clear_tail.exit.if.end21_crit_edge

bitmap_copy_clear_tail.exit.if.end21_crit_edge:   ; preds = %bitmap_copy_clear_tail.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.then20:                                        ; preds = %bitmap_copy_clear_tail.exit
  call void @__sanitizer_cov_trace_pc() #8
  %sub = sub i32 %nbits, %21
  call void @__bitmap_clear(ptr noundef %val, i32 noundef %21, i32 noundef %sub) #6
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %bitmap_copy_clear_tail.exit.if.end21_crit_edge
  br i1 %tobool3, label %if.then23, label %if.else

if.then23:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i168 = add i32 %nbits, 31
  %28 = lshr i32 %sub.i168, 3
  %mul.i = and i32 %28, 536870908
  %29 = call ptr @memset(ptr %mask, i32 255, i32 %mul.i)
  br label %cleanup79

if.else:                                          ; preds = %if.end21
  %30 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %4, align 4
  %add.ptr.i169 = getelementptr i8, ptr %31, i32 4
  %32 = call ptr @memcpy(ptr %mask, ptr %add.ptr.i169, i32 %mul.i.i)
  br i1 %tobool.not.i166, label %if.else.bitmap_copy_clear_tail.exit181_crit_edge, label %if.then.i180

if.else.bitmap_copy_clear_tail.exit181_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %bitmap_copy_clear_tail.exit181

if.then.i180:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i174 = sub i32 0, %21
  %and.i175 = and i32 %sub.i174, 31
  %shr.i176 = lshr i32 -1, %and.i175
  %div6.i177 = lshr i32 %21, 5
  %arrayidx.i178 = getelementptr i32, ptr %mask, i32 %div6.i177
  %33 = ptrtoint ptr %arrayidx.i178 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.i178, align 4
  %and1.i179 = and i32 %34, %shr.i176
  store i32 %and1.i179, ptr %arrayidx.i178, align 4
  br label %bitmap_copy_clear_tail.exit181

bitmap_copy_clear_tail.exit181:                   ; preds = %if.then.i180, %if.else.bitmap_copy_clear_tail.exit181_crit_edge
  br i1 %cmp19, label %if.then27, label %bitmap_copy_clear_tail.exit181.cleanup79_crit_edge

bitmap_copy_clear_tail.exit181.cleanup79_crit_edge: ; preds = %bitmap_copy_clear_tail.exit181
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup79

if.then27:                                        ; preds = %bitmap_copy_clear_tail.exit181
  call void @__sanitizer_cov_trace_pc() #8
  %sub28 = sub i32 %nbits, %21
  call void @__bitmap_clear(ptr noundef %mask, i32 noundef %21, i32 noundef %sub28) #6
  br label %cleanup79

if.end31:                                         ; preds = %if.end2
  %35 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %3, align 4
  %tobool33.not = icmp eq ptr %36, null
  br i1 %tobool33.not, label %if.end39, label %do.body

do.body:                                          ; preds = %if.end31
  call void @do_trace_netlink_extack(ptr noundef nonnull @ethnl_parse_bitset.__msg) #6
  %tobool35.not = icmp eq ptr %extack, null
  br i1 %tobool35.not, label %do.body.cleanup79_crit_edge, label %if.then36

do.body.cleanup79_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup79

if.then36:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %37 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @ethnl_parse_bitset.__msg, ptr %extack, align 4
  %38 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %3, align 4
  %bad_attr = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 1
  %40 = ptrtoint ptr %bad_attr to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %39, ptr %bad_attr, align 4
  %policy = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 2
  %41 = ptrtoint ptr %policy to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %policy, align 4
  br label %cleanup79

if.end39:                                         ; preds = %if.end31
  %42 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %4, align 4
  %tobool41.not = icmp eq ptr %43, null
  br i1 %tobool41.not, label %if.end54, label %do.body43

do.body43:                                        ; preds = %if.end39
  call void @do_trace_netlink_extack(ptr noundef nonnull @ethnl_parse_bitset.__msg.1) #6
  %tobool45.not = icmp eq ptr %extack, null
  br i1 %tobool45.not, label %do.body43.cleanup79_crit_edge, label %if.then46

do.body43.cleanup79_crit_edge:                    ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup79

if.then46:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #8
  %44 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @ethnl_parse_bitset.__msg.1, ptr %extack, align 4
  %45 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %4, align 4
  %bad_attr49 = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 1
  %47 = ptrtoint ptr %bad_attr49 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %46, ptr %bad_attr49, align 4
  %policy50 = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 2
  %48 = ptrtoint ptr %policy50 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %policy50, align 4
  br label %cleanup79

if.end54:                                         ; preds = %if.end39
  %sub.i182 = add i32 %nbits, 31
  %49 = lshr i32 %sub.i182, 3
  %mul.i183 = and i32 %49, 536870908
  %50 = call ptr @memset(ptr %val, i32 0, i32 %mul.i183)
  br i1 %tobool3, label %if.then56, label %if.else57

if.then56:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #8
  %51 = call ptr @memset(ptr %mask, i32 255, i32 %mul.i183)
  br label %if.end58

if.else57:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #8
  %52 = call ptr @memset(ptr %mask, i32 0, i32 %mul.i183)
  br label %if.end58

if.end58:                                         ; preds = %if.else57, %if.then56
  %53 = ptrtoint ptr %16 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %16, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %54)
  %cmp.i190202 = icmp ugt i16 %54, 7
  br i1 %cmp.i190202, label %land.lhs.true.i.preheader, label %if.end58.cleanup79_crit_edge

if.end58.cleanup79_crit_edge:                     ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup79

land.lhs.true.i.preheader:                        ; preds = %if.end58
  %conv.i = zext i16 %54 to i32
  %sub.i189 = add nsw i32 %conv.i, -4
  %add.ptr.i188 = getelementptr i8, ptr %16, i32 4
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %for.inc.land.lhs.true.i_crit_edge, %land.lhs.true.i.preheader
  %bit_attr.0204 = phi ptr [ %add.ptr.i195, %for.inc.land.lhs.true.i_crit_edge ], [ %add.ptr.i188, %land.lhs.true.i.preheader ]
  %rem.0203 = phi i32 [ %sub1.i, %for.inc.land.lhs.true.i_crit_edge ], [ %sub.i189, %land.lhs.true.i.preheader ]
  %55 = ptrtoint ptr %bit_attr.0204 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %bit_attr.0204, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %56)
  %cmp1.i = icmp ult i16 %56, 4
  %conv.i191 = zext i16 %56 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.0203, i32 %conv.i191)
  %cmp5.i.not = icmp ult i32 %rem.0203, %conv.i191
  %or.cond = select i1 %cmp1.i, i1 true, i1 %cmp5.i.not
  br i1 %or.cond, label %land.lhs.true.i.cleanup79_crit_edge, label %for.body

land.lhs.true.i.cleanup79_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup79

for.body:                                         ; preds = %land.lhs.true.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idx) #6
  %57 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 -1, ptr %idx, align 4, !annotation !50
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bit_val) #6
  %58 = ptrtoint ptr %bit_val to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 -1, ptr %bit_val, align 1, !annotation !50
  %call66 = call fastcc i32 @ethnl_parse_bit(ptr noundef nonnull %idx, ptr noundef nonnull %bit_val, i32 noundef %nbits, ptr noundef %bit_attr.0204, i1 noundef zeroext %tobool3, ptr noundef %names, ptr noundef %extack)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %cmp67 = icmp slt i32 %call66, 0
  br i1 %cmp67, label %cleanup76, label %if.end69

if.end69:                                         ; preds = %for.body
  %59 = ptrtoint ptr %bit_val to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %bit_val, align 1, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool70.not = icmp eq i8 %60, 0
  br i1 %tobool70.not, label %if.end69.if.end72_crit_edge, label %if.then71

if.end69.if.end72_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end72

if.then71:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #8
  %61 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %idx, align 4
  %rem.i = and i32 %62, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %62, 5
  %add.ptr.i155 = getelementptr i32, ptr %val, i32 %div2.i
  %63 = ptrtoint ptr %add.ptr.i155 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %add.ptr.i155, align 4
  %or.i = or i32 %shl.i, %64
  store i32 %or.i, ptr %add.ptr.i155, align 4
  br label %if.end72

if.end72:                                         ; preds = %if.then71, %if.end69.if.end72_crit_edge
  br i1 %tobool3, label %if.end72.for.inc_crit_edge, label %if.then74

if.end72.for.inc_crit_edge:                       ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then74:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #8
  %65 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %idx, align 4
  %rem.i156 = and i32 %66, 31
  %shl.i157 = shl nuw i32 1, %rem.i156
  %div2.i158 = lshr i32 %66, 5
  %add.ptr.i159 = getelementptr i32, ptr %mask, i32 %div2.i158
  %67 = ptrtoint ptr %add.ptr.i159 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %add.ptr.i159, align 4
  %or.i160 = or i32 %shl.i157, %68
  store i32 %or.i160, ptr %add.ptr.i159, align 4
  br label %for.inc

cleanup76:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bit_val) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idx) #6
  br label %cleanup79

for.inc:                                          ; preds = %if.then74, %if.end72.for.inc_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bit_val) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idx) #6
  %69 = ptrtoint ptr %bit_attr.0204 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %bit_attr.0204, align 2
  %conv.i192 = zext i16 %70 to i32
  %sub.i193 = add nuw nsw i32 %conv.i192, 3
  %and.i194 = and i32 %sub.i193, 131068
  %sub1.i = sub nsw i32 %rem.0203, %and.i194
  %add.ptr.i195 = getelementptr i8, ptr %bit_attr.0204, i32 %and.i194
  %cmp.i190 = icmp sgt i32 %sub1.i, 3
  br i1 %cmp.i190, label %for.inc.land.lhs.true.i_crit_edge, label %for.inc.cleanup79_crit_edge

for.inc.cleanup79_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup79

for.inc.land.lhs.true.i_crit_edge:                ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true.i

cleanup79:                                        ; preds = %for.inc.cleanup79_crit_edge, %cleanup76, %land.lhs.true.i.cleanup79_crit_edge, %if.end58.cleanup79_crit_edge, %if.then46, %do.body43.cleanup79_crit_edge, %if.then36, %do.body.cleanup79_crit_edge, %if.then27, %bitmap_copy_clear_tail.exit181.cleanup79_crit_edge, %if.then23, %if.then6.cleanup79_crit_edge, %nla_parse_nested.exit.cleanup79_crit_edge, %if.then2.i, %do.body.i.cleanup79_crit_edge, %entry.cleanup79_crit_edge
  %retval.3 = phi i32 [ %call66, %cleanup76 ], [ 0, %entry.cleanup79_crit_edge ], [ %call6.i, %nla_parse_nested.exit.cleanup79_crit_edge ], [ %call8, %if.then6.cleanup79_crit_edge ], [ 0, %bitmap_copy_clear_tail.exit181.cleanup79_crit_edge ], [ 0, %if.then23 ], [ -22, %if.then36 ], [ -22, %do.body.cleanup79_crit_edge ], [ -22, %if.then46 ], [ -22, %do.body43.cleanup79_crit_edge ], [ 0, %if.then27 ], [ -22, %if.then2.i ], [ -22, %do.body.i.cleanup79_crit_edge ], [ 0, %if.end58.cleanup79_crit_edge ], [ 0, %for.inc.cleanup79_crit_edge ], [ 0, %land.lhs.true.i.cleanup79_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tb) #6
  ret i32 %retval.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ethnl_parse_bit(ptr nocapture noundef writeonly %index, ptr nocapture noundef writeonly %val, i32 noundef %nbits, ptr noundef %bit_attr, i1 noundef zeroext %no_mask, ptr noundef readonly %names, ptr noundef %extack) unnamed_addr #2 align 64 {
entry:
  %tb = alloca [4 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tb) #6
  %0 = getelementptr inbounds [4 x ptr], ptr %tb, i32 0, i32 1
  %1 = getelementptr inbounds [4 x ptr], ptr %tb, i32 0, i32 2
  %2 = getelementptr inbounds [4 x ptr], ptr %tb, i32 0, i32 3
  %nla_type.i = getelementptr inbounds %struct.nlattr, ptr %bit_attr, i32 0, i32 1
  %3 = call ptr @memset(ptr %tb, i32 255, i32 16)
  %4 = ptrtoint ptr %nla_type.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %nla_type.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %5)
  %tobool.not.i = icmp sgt i16 %5, -1
  br i1 %tobool.not.i, label %do.body.i, label %nla_parse_nested.exit

do.body.i:                                        ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nla_parse_nested.__msg) #6
  %tobool1.not.i = icmp eq ptr %extack, null
  br i1 %tobool1.not.i, label %do.body.i.cleanup73_crit_edge, label %if.then2.i

do.body.i.cleanup73_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup73

if.then2.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @nla_parse_nested.__msg, ptr %extack, align 4
  %bad_attr.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 1
  %7 = ptrtoint ptr %bad_attr.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %bit_attr, ptr %bad_attr.i, align 4
  %policy3.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 2
  %8 = ptrtoint ptr %policy3.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %policy3.i, align 4
  br label %cleanup73

nla_parse_nested.exit:                            ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %bit_attr, i32 4
  %9 = ptrtoint ptr %bit_attr to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %bit_attr, align 2
  %conv.i.i = zext i16 %10 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call6.i = call i32 @__nla_parse(ptr noundef nonnull %tb, i32 noundef 3, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef nonnull @bit_policy, i32 noundef 31, ptr noundef %extack) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp = icmp slt i32 %call6.i, 0
  br i1 %cmp, label %nla_parse_nested.exit.cleanup73_crit_edge, label %if.end

nla_parse_nested.exit.cleanup73_crit_edge:        ; preds = %nla_parse_nested.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup73

if.end:                                           ; preds = %nla_parse_nested.exit
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %0, align 4
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %if.else, label %if.then1

if.then1:                                         ; preds = %if.end
  %add.ptr.i.i105 = getelementptr i8, ptr %12, i32 4
  %13 = ptrtoint ptr %add.ptr.i.i105 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr.i.i105, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %nbits)
  %cmp4.not = icmp ult i32 %14, %nbits
  br i1 %cmp4.not, label %if.end10, label %do.body

do.body:                                          ; preds = %if.then1
  call void @do_trace_netlink_extack(ptr noundef nonnull @ethnl_parse_bit.__msg) #6
  %tobool6.not = icmp eq ptr %extack, null
  br i1 %tobool6.not, label %do.body.cleanup73_crit_edge, label %if.then7

do.body.cleanup73_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup73

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @ethnl_parse_bit.__msg, ptr %extack, align 4
  %16 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %0, align 4
  %bad_attr = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 1
  %18 = ptrtoint ptr %bad_attr to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %bad_attr, align 4
  %policy = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 2
  %19 = ptrtoint ptr %policy to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %policy, align 4
  br label %cleanup73

if.end10:                                         ; preds = %if.then1
  %tobool11.not = icmp eq ptr %names, null
  %arrayidx12 = getelementptr [32 x i8], ptr %names, i32 %14
  %spec.select = select i1 %tobool11.not, ptr null, ptr %arrayidx12
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %tobool15.not = icmp eq ptr %21, null
  %tobool16.not = icmp eq ptr %spec.select, null
  %or.cond = select i1 %tobool15.not, i1 true, i1 %tobool16.not
  br i1 %or.cond, label %if.end10.if.end68_crit_edge, label %land.lhs.true17

if.end10.if.end68_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end68

land.lhs.true17:                                  ; preds = %if.end10
  %add.ptr.i = getelementptr i8, ptr %21, i32 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %21, align 2
  %conv.i = zext i16 %23 to i32
  %sub.i = add nsw i32 %conv.i, -4
  %call22 = call i32 @strncmp(ptr noundef %add.ptr.i, ptr noundef nonnull %spec.select, i32 noundef %sub.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %land.lhs.true17.if.end68_crit_edge, label %do.body25

land.lhs.true17.if.end68_crit_edge:               ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end68

do.body25:                                        ; preds = %land.lhs.true17
  call void @do_trace_netlink_extack(ptr noundef nonnull @ethnl_parse_bit.__msg.11) #6
  %tobool27.not = icmp eq ptr %extack, null
  br i1 %tobool27.not, label %do.body25.cleanup73_crit_edge, label %if.then28

do.body25.cleanup73_crit_edge:                    ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup73

if.then28:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @ethnl_parse_bit.__msg.11, ptr %extack, align 4
  %bad_attr30 = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 1
  %25 = ptrtoint ptr %bad_attr30 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %bit_attr, ptr %bad_attr30, align 4
  %policy31 = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 2
  %26 = ptrtoint ptr %policy31 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %policy31, align 4
  br label %cleanup73

if.else:                                          ; preds = %if.end
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 4
  %tobool37.not = icmp eq ptr %28, null
  br i1 %tobool37.not, label %do.body57, label %if.then38

if.then38:                                        ; preds = %if.else
  %add.ptr.i106 = getelementptr i8, ptr %28, i32 4
  %tobool.not.i107 = icmp ne ptr %names, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nbits)
  %cmp11.i = icmp ne i32 %nbits, 0
  %or.cond.i = and i1 %cmp11.i, %tobool.not.i107
  br i1 %or.cond.i, label %if.then38.for.body.i_crit_edge, label %if.then38.do.body44_crit_edge

if.then38.do.body44_crit_edge:                    ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body44

if.then38.for.body.i_crit_edge:                   ; preds = %if.then38
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then38.for.body.i_crit_edge
  %i.012.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.then38.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [32 x i8], ptr %names, i32 %i.012.i
  %call.i = call i32 @strncmp(ptr noundef %arrayidx.i, ptr noundef %add.ptr.i106, i32 noundef 32) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i108 = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i108, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %call2.i = call i32 @strlen(ptr noundef %add.ptr.i106) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %call2.i)
  %cmp3.i = icmp ult i32 %call2.i, 33
  br i1 %cmp3.i, label %ethnl_name_to_idx.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.012.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %nbits
  br i1 %exitcond.not.i, label %for.inc.i.do.body44_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.do.body44_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body44

ethnl_name_to_idx.exit:                           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.012.i)
  %cmp42 = icmp slt i32 %i.012.i, 0
  br i1 %cmp42, label %ethnl_name_to_idx.exit.do.body44_crit_edge, label %ethnl_name_to_idx.exit.if.end68_crit_edge

ethnl_name_to_idx.exit.if.end68_crit_edge:        ; preds = %ethnl_name_to_idx.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end68

ethnl_name_to_idx.exit.do.body44_crit_edge:       ; preds = %ethnl_name_to_idx.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body44

do.body44:                                        ; preds = %ethnl_name_to_idx.exit.do.body44_crit_edge, %for.inc.i.do.body44_crit_edge, %if.then38.do.body44_crit_edge
  call void @do_trace_netlink_extack(ptr noundef nonnull @ethnl_parse_bit.__msg.12) #6
  %tobool46.not = icmp eq ptr %extack, null
  br i1 %tobool46.not, label %do.body44.cleanup73_crit_edge, label %if.then47

do.body44.cleanup73_crit_edge:                    ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup73

if.then47:                                        ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @ethnl_parse_bit.__msg.12, ptr %extack, align 4
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  %bad_attr50 = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 1
  %32 = ptrtoint ptr %bad_attr50 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %bad_attr50, align 4
  %policy51 = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 2
  %33 = ptrtoint ptr %policy51 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %policy51, align 4
  br label %cleanup73

do.body57:                                        ; preds = %if.else
  call void @do_trace_netlink_extack(ptr noundef nonnull @ethnl_parse_bit.__msg.13) #6
  %tobool59.not = icmp eq ptr %extack, null
  br i1 %tobool59.not, label %do.body57.cleanup73_crit_edge, label %if.then60

do.body57.cleanup73_crit_edge:                    ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup73

if.then60:                                        ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @ethnl_parse_bit.__msg.13, ptr %extack, align 4
  %bad_attr62 = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 1
  %35 = ptrtoint ptr %bad_attr62 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %bit_attr, ptr %bad_attr62, align 4
  %policy63 = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 2
  %36 = ptrtoint ptr %policy63 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %policy63, align 4
  br label %cleanup73

if.end68:                                         ; preds = %ethnl_name_to_idx.exit.if.end68_crit_edge, %land.lhs.true17.if.end68_crit_edge, %if.end10.if.end68_crit_edge
  %idx.0 = phi i32 [ %i.012.i, %ethnl_name_to_idx.exit.if.end68_crit_edge ], [ %14, %if.end10.if.end68_crit_edge ], [ %14, %land.lhs.true17.if.end68_crit_edge ]
  %37 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %idx.0, ptr %index, align 4
  br i1 %no_mask, label %if.end68.lor.end_crit_edge, label %lor.rhs

if.end68.lor.end_crit_edge:                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.end

lor.rhs:                                          ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %2, align 4
  %tobool71 = icmp ne ptr %39, null
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end68.lor.end_crit_edge
  %40 = phi i1 [ true, %if.end68.lor.end_crit_edge ], [ %tobool71, %lor.rhs ]
  %frombool72 = zext i1 %40 to i8
  %41 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %frombool72, ptr %val, align 1
  br label %cleanup73

cleanup73:                                        ; preds = %lor.end, %if.then60, %do.body57.cleanup73_crit_edge, %if.then47, %do.body44.cleanup73_crit_edge, %if.then28, %do.body25.cleanup73_crit_edge, %if.then7, %do.body.cleanup73_crit_edge, %nla_parse_nested.exit.cleanup73_crit_edge, %if.then2.i, %do.body.i.cleanup73_crit_edge
  %retval.1 = phi i32 [ 0, %lor.end ], [ %call6.i, %nla_parse_nested.exit.cleanup73_crit_edge ], [ -95, %if.then47 ], [ -95, %do.body44.cleanup73_crit_edge ], [ -22, %if.then60 ], [ -22, %do.body57.cleanup73_crit_edge ], [ -22, %if.then2.i ], [ -22, %do.body.i.cleanup73_crit_edge ], [ -22, %do.body25.cleanup73_crit_edge ], [ -22, %if.then28 ], [ -95, %do.body.cleanup73_crit_edge ], [ -95, %if.then7 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tb) #6
  ret i32 %retval.1
}

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ethnl_bitset_size(ptr nocapture noundef readonly %val, ptr noundef readonly %mask, i32 noundef %nbits, ptr noundef readonly %names, i1 noundef zeroext %compact) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %mask, null
  br i1 %compact, label %if.then4.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nbits)
  %cmp73.not.i = icmp eq i32 %nbits, 0
  br i1 %cmp73.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %tobool10.not.i = icmp eq ptr %names, null
  %cond16.i = select i1 %tobool.not.i, ptr %val, ptr %mask
  br label %for.body.i

if.then4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i = add i32 %nbits, 31
  %cond.i = select i1 %tobool.not.i, i32 1, i32 2
  %0 = lshr i32 %sub.i, 3
  %mul.i = and i32 %0, 536870908
  %sub.i.i = add nuw nsw i32 %mul.i, 7
  %and.i.i = and i32 %sub.i.i, 1073741820
  %mul8.i = mul nuw nsw i32 %and.i.i, %cond.i
  br label %ethnl_bitset32_size.exit

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.075.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %cleanup.i.for.body.i_crit_edge ]
  %bits_len.074.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %bits_len.1.i, %cleanup.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [32 x i8], ptr %names, i32 %i.075.i
  %spec.select.i = select i1 %tobool10.not.i, ptr null, ptr %arrayidx.i
  %div2.i.i = lshr i32 %i.075.i, 5
  %arrayidx.i.i = getelementptr i32, ptr %cond16.i, i32 %div2.i.i
  %1 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx.i.i, align 4
  %rem.i.i = and i32 %i.075.i, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %and.i58.i = and i32 %2, %shl.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i58.i)
  %tobool.i.not.i = icmp eq i32 %and.i58.i, 0
  br i1 %tobool.i.not.i, label %for.body.i.cleanup.i_crit_edge, label %if.end19.i

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.i

if.end19.i:                                       ; preds = %for.body.i
  %tobool21.not.i = icmp eq ptr %spec.select.i, null
  br i1 %tobool21.not.i, label %if.end19.i.if.end25.i_crit_edge, label %if.then22.i

if.end19.i.if.end25.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25.i

if.then22.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i = tail call i32 @strnlen(ptr noundef nonnull %spec.select.i, i32 noundef 32) #9
  %3 = add i32 %call.i.i, 16
  %add24.i = and i32 %3, -4
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.then22.i, %if.end19.i.if.end25.i_crit_edge
  %bit_len.0.i = phi i32 [ %add24.i, %if.then22.i ], [ 8, %if.end19.i.if.end25.i_crit_edge ]
  br i1 %tobool.not.i, label %if.end25.i.if.end31.i_crit_edge, label %land.lhs.true.i

if.end25.i.if.end31.i_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31.i

land.lhs.true.i:                                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i60.i = getelementptr i32, ptr %val, i32 %div2.i.i
  %4 = ptrtoint ptr %arrayidx.i60.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i60.i, align 4
  %and.i63.i = and i32 %5, %shl.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i63.i)
  %tobool.i64.not.i = icmp eq i32 %and.i63.i, 0
  %add30.i = add i32 %bit_len.0.i, 4
  %spec.select72.i = select i1 %tobool.i64.not.i, i32 %bit_len.0.i, i32 %add30.i
  br label %if.end31.i

if.end31.i:                                       ; preds = %land.lhs.true.i, %if.end25.i.if.end31.i_crit_edge
  %bit_len.1.i = phi i32 [ %bit_len.0.i, %if.end25.i.if.end31.i_crit_edge ], [ %spec.select72.i, %land.lhs.true.i ]
  %sub.i65.i = add i32 %bit_len.1.i, 7
  %and.i66.i = and i32 %sub.i65.i, -4
  %add33.i = add i32 %and.i66.i, %bits_len.074.i
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end31.i, %for.body.i.cleanup.i_crit_edge
  %bits_len.1.i = phi i32 [ %add33.i, %if.end31.i ], [ %bits_len.074.i, %for.body.i.cleanup.i_crit_edge ]
  %inc.i = add nuw i32 %i.075.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %nbits
  br i1 %exitcond.not.i, label %cleanup.i.for.end.i_crit_edge, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

cleanup.i.for.end.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.end.i:                                        ; preds = %cleanup.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %bits_len.0.lcssa.i = phi i32 [ 0, %for.cond.preheader.i.for.end.i_crit_edge ], [ %bits_len.1.i, %cleanup.i.for.end.i_crit_edge ]
  %sub.i67.i = add i32 %bits_len.0.lcssa.i, 7
  %and.i68.i = and i32 %sub.i67.i, -4
  br label %ethnl_bitset32_size.exit

ethnl_bitset32_size.exit:                         ; preds = %for.end.i, %if.then4.i
  %mul8.pn.i = phi i32 [ %mul8.i, %if.then4.i ], [ %and.i68.i, %for.end.i ]
  %len.1.i = select i1 %tobool.not.i, i32 23, i32 15
  %sub.i69.i = add i32 %mul8.pn.i, %len.1.i
  %and.i70.i = and i32 %sub.i69.i, -4
  ret i32 %and.i70.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ethnl_put_bitset(ptr noundef %skb, i32 noundef %attrtype, ptr nocapture noundef readonly %val, ptr noundef %mask, i32 noundef %nbits, ptr noundef %names, i1 noundef zeroext %compact) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ethnl_put_bitset32(ptr noundef %skb, i32 noundef %attrtype, ptr noundef %val, ptr noundef %mask, i32 noundef %nbits, ptr noundef %names, i1 noundef zeroext %compact)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ethnl_update_bitset(ptr nocapture noundef %bitmap, i32 noundef %nbits, ptr noundef %attr, ptr noundef %names, ptr noundef %extack, ptr nocapture noundef writeonly %mod) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ethnl_update_bitset32(ptr noundef %bitmap, i32 noundef %nbits, ptr noundef %attr, ptr noundef %names, ptr noundef %extack, ptr noundef %mod)
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strnlen(ptr nocapture noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memchr_inv(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_clear(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = !{ptr @ethnl_parse_bitset.__msg, !1, !"__msg", i1 false, i1 false}
!1 = !{!"../net/ethtool/bitset.c", i32 652, i32 3}
!2 = !{ptr @ethnl_parse_bitset.__msg.1, !3, !"__msg", i1 false, i1 false}
!3 = !{!"../net/ethtool/bitset.c", i32 657, i32 3}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../include/net/netlink.h", i32 991, i32 3}
!6 = !{ptr @nla_parse_nested.__msg, !7, !"__msg", i1 false, i1 false}
!7 = !{!"../include/net/netlink.h", i32 1208, i32 3}
!8 = !{ptr @bitset_policy, !9, !"bitset_policy", i1 false, i1 false}
!9 = !{!"../net/ethtool/bitset.c", i32 305, i32 32}
!10 = !{ptr @ethnl_update_bitset32_verbose.__msg, !11, !"__msg", i1 false, i1 false}
!11 = !{!"../net/ethtool/bitset.c", i32 440, i32 3}
!12 = !{ptr @ethnl_update_bitset32_verbose.__msg.3, !13, !"__msg", i1 false, i1 false}
!13 = !{!"../net/ethtool/bitset.c", i32 445, i32 3}
!14 = !{ptr @ethnl_update_bitset32_verbose.__msg.4, !15, !"__msg", i1 false, i1 false}
!15 = !{!"../net/ethtool/bitset.c", i32 459, i32 4}
!16 = !{ptr @ethnl_compact_sanity_checks.__msg, !17, !"__msg", i1 false, i1 false}
!17 = !{!"../net/ethtool/bitset.c", i32 490, i32 3}
!18 = !{ptr @ethnl_compact_sanity_checks.__msg.5, !19, !"__msg", i1 false, i1 false}
!19 = !{!"../net/ethtool/bitset.c", i32 495, i32 3}
!20 = !{ptr @ethnl_compact_sanity_checks.__msg.6, !21, !"__msg", i1 false, i1 false}
!21 = !{!"../net/ethtool/bitset.c", i32 500, i32 3}
!22 = !{ptr @ethnl_compact_sanity_checks.__msg.7, !23, !"__msg", i1 false, i1 false}
!23 = !{!"../net/ethtool/bitset.c", i32 505, i32 3}
!24 = !{ptr @ethnl_compact_sanity_checks.__msg.8, !25, !"__msg", i1 false, i1 false}
!25 = !{!"../net/ethtool/bitset.c", i32 513, i32 3}
!26 = !{ptr @ethnl_compact_sanity_checks.__msg.9, !27, !"__msg", i1 false, i1 false}
!27 = !{!"../net/ethtool/bitset.c", i32 519, i32 3}
!28 = !{ptr @ethnl_compact_sanity_checks.__msg.10, !29, !"__msg", i1 false, i1 false}
!29 = !{!"../net/ethtool/bitset.c", i32 529, i32 3}
!30 = !{ptr @ethnl_parse_bit.__msg, !31, !"__msg", i1 false, i1 false}
!31 = !{!"../net/ethtool/bitset.c", i32 395, i32 4}
!32 = !{ptr @ethnl_parse_bit.__msg.11, !33, !"__msg", i1 false, i1 false}
!33 = !{!"../net/ethtool/bitset.c", i32 404, i32 4}
!34 = !{ptr @ethnl_parse_bit.__msg.12, !35, !"__msg", i1 false, i1 false}
!35 = !{!"../net/ethtool/bitset.c", i32 412, i32 4}
!36 = !{ptr @ethnl_parse_bit.__msg.13, !37, !"__msg", i1 false, i1 false}
!37 = !{!"../net/ethtool/bitset.c", i32 418, i32 3}
!38 = !{ptr @bit_policy, !39, !"bit_policy", i1 false, i1 false}
!39 = !{!"../net/ethtool/bitset.c", i32 314, i32 32}
!40 = !{i32 1, !"wchar_size", i32 2}
!41 = !{i32 1, !"min_enum_size", i32 4}
!42 = !{i32 8, !"branch-target-enforcement", i32 0}
!43 = !{i32 8, !"sign-return-address", i32 0}
!44 = !{i32 8, !"sign-return-address-all", i32 0}
!45 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!46 = !{i32 7, !"uwtable", i32 1}
!47 = !{i32 7, !"frame-pointer", i32 2}
!48 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!49 = !{!"branch_weights", i32 1, i32 2000}
!50 = !{!"auto-init"}
!51 = !{i8 0, i8 2}
