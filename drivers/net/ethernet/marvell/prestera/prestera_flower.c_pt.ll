; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/marvell/prestera/prestera_flower.c_pt.bc'
source_filename = "../drivers/net/ethernet/marvell/prestera/prestera_flower.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.prestera_flow_block = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.prestera_switch = type { ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.notifier_block, ptr, [6 x i8], %struct.list_head, %struct.rwlock_t, i32, i32, i32, i8, ptr, ptr, ptr, i8, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.flow_cls_offload = type { %struct.flow_cls_common_offload, i32, i32, ptr, %struct.flow_stats, i32 }
%struct.flow_cls_common_offload = type { i32, i16, i32, ptr }
%struct.flow_stats = type { i64, i64, i64, i64, i32, i8 }
%struct.flow_match_meta = type { ptr, ptr }
%struct.flow_match_control = type { ptr, ptr }
%struct.flow_match_basic = type { ptr, ptr }
%struct.flow_match_eth_addrs = type { ptr, ptr }
%struct.flow_match_ipv4_addrs = type { ptr, ptr }
%struct.flow_match_ports = type { ptr, ptr }
%struct.flow_match_vlan = type { ptr, ptr }
%struct.flow_match_icmp = type { ptr, ptr }
%struct.prestera_acl_rule = type { %struct.rhash_head, %struct.list_head, ptr, i32, i32, %struct.prestera_acl_rule_entry_key, %struct.prestera_acl_rule_entry_arg, ptr }
%struct.rhash_head = type { ptr }
%struct.prestera_acl_rule_entry_key = type { i32, %struct.prestera_acl_match }
%struct.prestera_acl_match = type { [19 x i32], [19 x i32] }
%struct.prestera_acl_rule_entry_arg = type { i32, %struct.anon.142 }
%struct.anon.142 = type { %struct.anon.143, %struct.anon.143, %struct.anon.143, %struct.anon.144 }
%struct.anon.143 = type { i8 }
%struct.anon.144 = type { i8, i32 }
%struct.flow_dissector_key_control = type { i16, i16, i32 }
%struct.flow_dissector_key_basic = type { i16, i8, i8 }
%struct.flow_dissector_key_eth_addrs = type { [6 x i8], [6 x i8] }
%struct.flow_dissector_key_ipv4_addrs = type { i32, i32 }
%struct.anon.146 = type { i16, i16 }
%struct.flow_dissector_key_vlan = type { %union.anon.147, i16 }
%union.anon.147 = type { %struct.anon.148 }
%struct.anon.148 = type { i16 }
%struct.anon.149 = type { i8, i8 }
%struct.flow_rule = type { %struct.flow_match, %struct.flow_action }
%struct.flow_match = type { ptr, ptr, ptr }
%struct.flow_action = type { i32, [0 x %struct.flow_action_entry] }
%struct.flow_action_entry = type { i32, i32, i32, ptr, ptr, %union.anon.129, ptr }
%union.anon.129 = type { %struct.anon.134 }
%struct.anon.134 = type { i32, i64, i64, i64, i32 }

@prestera_flower_tmplt_create.__msg = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"prestera: Create chain template failed\00", [57 x i8] zeroinitializer }, align 32
@prestera_flower_parse.__msg = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"prestera: Unsupported key\00", [38 x i8] zeroinitializer }, align 32
@prestera_flower_parse.__msg.1 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"prestera: Only UDP and TCP keys are supported\00", [50 x i8] zeroinitializer }, align 32
@prestera_flower_parse_meta.__msg = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"prestera: Unsupported ingress ifindex mask\00", [53 x i8] zeroinitializer }, align 32
@prestera_flower_parse_meta.__msg.2 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"prestera: Can't find specified ingress port to match on\00", [40 x i8] zeroinitializer }, align 32
@prestera_flower_parse_meta.__msg.3 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"prestera: Can't match on switchdev ingress port\00", [48 x i8] zeroinitializer }, align 32
@prestera_flower_parse_actions.__msg = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"prestera: Unsupported action\00", [35 x i8] zeroinitializer }, align 32
@prestera_flower_parse_actions._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.4, ptr @.str.5, i32 58, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013Unsupported action\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"prestera_flower_parse_actions\00", [34 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"drivers/net/ethernet/marvell/prestera/prestera_flower.c\00", [40 x i8] zeroinitializer }, align 32
@prestera_flower_parse_actions._entry_ptr = internal global ptr @prestera_flower_parse_actions._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 17]
@__sancov_gen_cov_switch_values.7 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 373, i32 2 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 134, i32 3 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 217, i32 4 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 78, i32 3 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 86, i32 3 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 92, i32 3 }
@___asan_gen_.26 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 57, i32 4 }
@___asan_gen_.29 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.38 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.39 = private constant [59 x i8] c"../drivers/net/ethernet/marvell/prestera/prestera_flower.c\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 58, i32 4 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @prestera_flower_parse_actions._entry, ptr @prestera_flower_parse_actions._entry_ptr, ptr @prestera_flower_tmplt_create.__msg, ptr @prestera_flower_parse.__msg, ptr @prestera_flower_parse.__msg.1, ptr @prestera_flower_parse_meta.__msg, ptr @prestera_flower_parse_meta.__msg.2, ptr @prestera_flower_parse_meta.__msg.3, ptr @prestera_flower_parse_actions.__msg, ptr @.str, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prestera_flower_tmplt_create.__msg to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prestera_flower_parse.__msg to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prestera_flower_parse.__msg.1 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prestera_flower_parse_meta.__msg to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prestera_flower_parse_meta.__msg.2 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prestera_flower_parse_meta.__msg.3 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prestera_flower_parse_actions.__msg to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prestera_flower_parse_actions._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @prestera_flower_template_cleanup(ptr nocapture noundef %block) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tmplt = getelementptr inbounds %struct.prestera_flow_block, ptr %block, i32 0, i32 5
  %0 = ptrtoint ptr %tmplt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tmplt, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @prestera_acl_ruleset_put(ptr noundef %3) #6
  %4 = ptrtoint ptr %tmplt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tmplt, align 4
  tail call void @kfree(ptr noundef %5) #6
  %6 = ptrtoint ptr %tmplt to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %tmplt, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @prestera_acl_ruleset_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @prestera_flower_replace(ptr noundef %block, ptr nocapture noundef readonly %f) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sw = getelementptr inbounds %struct.prestera_flow_block, ptr %block, i32 0, i32 1
  %0 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sw, align 4
  %acl1 = getelementptr inbounds %struct.prestera_switch, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %acl1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %acl1, align 4
  %call = tail call ptr @prestera_acl_ruleset_get(ptr noundef %3, ptr noundef %block) #6
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %cookie = getelementptr inbounds %struct.flow_cls_offload, ptr %f, i32 0, i32 2
  %5 = ptrtoint ptr %cookie to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cookie, align 4
  %call4 = tail call ptr @prestera_acl_rule_create(ptr noundef %call, i32 noundef %6) #6
  %cmp.i44 = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i44, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %call4 to i32
  br label %err_rule_create

if.end8:                                          ; preds = %if.end
  %call9 = tail call fastcc i32 @prestera_flower_parse(ptr noundef %block, ptr noundef %call4, ptr noundef %f)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %if.end11, label %if.end8.err_rule_add_crit_edge

if.end8.err_rule_add_crit_edge:                   ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_rule_add

if.end11:                                         ; preds = %if.end8
  %call12 = tail call zeroext i1 @prestera_acl_ruleset_is_offload(ptr noundef %call) #6
  br i1 %call12, label %if.end11.if.end18_crit_edge, label %if.then13

if.end11.if.end18_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.then13:                                        ; preds = %if.end11
  %call14 = tail call i32 @prestera_acl_ruleset_offload(ptr noundef %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.then13.if.end18_crit_edge, label %if.then13.err_rule_add_crit_edge

if.then13.err_rule_add_crit_edge:                 ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_rule_add

if.then13.if.end18_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.end18:                                         ; preds = %if.then13.if.end18_crit_edge, %if.end11.if.end18_crit_edge
  %8 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sw, align 4
  %call20 = tail call i32 @prestera_acl_rule_add(ptr noundef %9, ptr noundef %call4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end18.err_rule_add_crit_edge

if.end18.err_rule_add_crit_edge:                  ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_rule_add

if.end23:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @prestera_acl_ruleset_put(ptr noundef %call) #6
  br label %cleanup

err_rule_add:                                     ; preds = %if.end18.err_rule_add_crit_edge, %if.then13.err_rule_add_crit_edge, %if.end8.err_rule_add_crit_edge
  %err.0 = phi i32 [ %call9, %if.end8.err_rule_add_crit_edge ], [ %call20, %if.end18.err_rule_add_crit_edge ], [ %call14, %if.then13.err_rule_add_crit_edge ]
  tail call void @prestera_acl_rule_destroy(ptr noundef %call4) #6
  br label %err_rule_create

err_rule_create:                                  ; preds = %err_rule_add, %if.then6
  %err.1 = phi i32 [ %7, %if.then6 ], [ %err.0, %err_rule_add ]
  tail call void @prestera_acl_ruleset_put(ptr noundef %call) #6
  br label %cleanup

cleanup:                                          ; preds = %err_rule_create, %if.end23, %if.then
  %retval.0 = phi i32 [ %4, %if.then ], [ %err.1, %err_rule_create ], [ 0, %if.end23 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @prestera_acl_ruleset_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @prestera_acl_rule_create(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @prestera_flower_parse(ptr nocapture noundef readonly %block, ptr noundef %rule, ptr nocapture noundef readonly %f) unnamed_addr #0 align 64 {
entry:
  %match1.i = alloca %struct.flow_match_meta, align 4
  %match16 = alloca %struct.flow_match_control, align 4
  %match21 = alloca %struct.flow_match_basic, align 4
  %match45 = alloca %struct.flow_match_eth_addrs, align 4
  %match89 = alloca %struct.flow_match_ipv4_addrs, align 4
  %match109 = alloca %struct.flow_match_ports, align 4
  %match147 = alloca %struct.flow_match_vlan, align 4
  %match176 = alloca %struct.flow_match_icmp, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rule.i = getelementptr inbounds %struct.flow_cls_offload, ptr %f, i32 0, i32 3
  %0 = ptrtoint ptr %rule.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rule.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %and = and i32 %5, -33555680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end5, label %do.body

do.body:                                          ; preds = %entry
  %extack = getelementptr inbounds %struct.flow_cls_common_offload, ptr %f, i32 0, i32 3
  %6 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %extack, align 4
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @prestera_flower_parse.__msg) #6
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %do.body.cleanup196_crit_edge, label %if.then4

do.body.cleanup196_crit_edge:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup196

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @prestera_flower_parse.__msg, ptr %7, align 4
  br label %cleanup196

if.end5:                                          ; preds = %entry
  %prio = getelementptr inbounds %struct.flow_cls_common_offload, ptr %f, i32 0, i32 2
  %9 = ptrtoint ptr %prio to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %prio, align 8
  tail call void @prestera_acl_rule_priority_set(ptr noundef %rule, i32 noundef %10) #6
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %and.i.i = and i32 %14, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.i.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.i.not, label %if.end5.if.end13_crit_edge, label %if.then8

if.end5.if.end13_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then8:                                         ; preds = %if.end5
  %15 = ptrtoint ptr %rule.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rule.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match1.i) #6
  %17 = ptrtoint ptr %match1.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 -1 to ptr), ptr %match1.i, align 4, !annotation !31
  %18 = getelementptr inbounds %struct.flow_match_meta, ptr %match1.i, i32 0, i32 1
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 -1 to ptr), ptr %18, align 4, !annotation !31
  call void @flow_rule_match_meta(ptr noundef %16, ptr noundef nonnull %match1.i) #6
  %20 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %18, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %23)
  %cmp.not.i = icmp eq i32 %23, -1
  br i1 %cmp.not.i, label %if.end4.i, label %do.body.i

do.body.i:                                        ; preds = %if.then8
  %extack.i = getelementptr inbounds %struct.flow_cls_common_offload, ptr %f, i32 0, i32 3
  %24 = ptrtoint ptr %extack.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %extack.i, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @prestera_flower_parse_meta.__msg) #6
  %tobool.not.i = icmp eq ptr %25, null
  br i1 %tobool.not.i, label %do.body.i.prestera_flower_parse_meta.exit.thread_crit_edge, label %if.then3.i

do.body.i.prestera_flower_parse_meta.exit.thread_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %prestera_flower_parse_meta.exit.thread

if.then3.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @prestera_flower_parse_meta.__msg, ptr %25, align 4
  br label %prestera_flower_parse_meta.exit.thread

if.end4.i:                                        ; preds = %if.then8
  %net.i = getelementptr inbounds %struct.prestera_flow_block, ptr %block, i32 0, i32 2
  %27 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %net.i, align 4
  %29 = ptrtoint ptr %match1.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %match1.i, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 4
  %call7.i = call ptr @__dev_get_by_index(ptr noundef %28, i32 noundef %32) #6
  %tobool8.not.i = icmp eq ptr %call7.i, null
  br i1 %tobool8.not.i, label %do.body10.i, label %if.end20.i

do.body10.i:                                      ; preds = %if.end4.i
  %extack13.i = getelementptr inbounds %struct.flow_cls_common_offload, ptr %f, i32 0, i32 3
  %33 = ptrtoint ptr %extack13.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %extack13.i, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @prestera_flower_parse_meta.__msg.2) #6
  %tobool14.not.i = icmp eq ptr %34, null
  br i1 %tobool14.not.i, label %do.body10.i.prestera_flower_parse_meta.exit.thread_crit_edge, label %if.then15.i

do.body10.i.prestera_flower_parse_meta.exit.thread_crit_edge: ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %prestera_flower_parse_meta.exit.thread

if.then15.i:                                      ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @prestera_flower_parse_meta.__msg.2, ptr %34, align 4
  br label %prestera_flower_parse_meta.exit.thread

if.end20.i:                                       ; preds = %if.end4.i
  %call21.i = call zeroext i1 @prestera_netdev_check(ptr noundef nonnull %call7.i) #6
  br i1 %call21.i, label %prestera_flower_parse_meta.exit, label %do.body23.i

do.body23.i:                                      ; preds = %if.end20.i
  %extack26.i = getelementptr inbounds %struct.flow_cls_common_offload, ptr %f, i32 0, i32 3
  %36 = ptrtoint ptr %extack26.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %extack26.i, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @prestera_flower_parse_meta.__msg.3) #6
  %tobool27.not.i = icmp eq ptr %37, null
  br i1 %tobool27.not.i, label %do.body23.i.prestera_flower_parse_meta.exit.thread_crit_edge, label %if.then28.i

do.body23.i.prestera_flower_parse_meta.exit.thread_crit_edge: ; preds = %do.body23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %prestera_flower_parse_meta.exit.thread

if.then28.i:                                      ; preds = %do.body23.i
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @prestera_flower_parse_meta.__msg.3, ptr %37, align 4
  br label %prestera_flower_parse_meta.exit.thread

prestera_flower_parse_meta.exit.thread:           ; preds = %if.then28.i, %do.body23.i.prestera_flower_parse_meta.exit.thread_crit_edge, %if.then15.i, %do.body10.i.prestera_flower_parse_meta.exit.thread_crit_edge, %if.then3.i, %do.body.i.prestera_flower_parse_meta.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match1.i) #6
  br label %cleanup196

prestera_flower_parse_meta.exit:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #8
  %hw_id.i = getelementptr i8, ptr %call7.i, i32 2688
  %39 = ptrtoint ptr %hw_id.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %hw_id.i, align 8
  %conv.i = trunc i32 %40 to i16
  %arrayidx.i = getelementptr %struct.prestera_acl_rule, ptr %rule, i32 0, i32 5, i32 1, i32 0, i32 7
  %41 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %conv.i, ptr %arrayidx.i, align 4
  %arrayidx37.i = getelementptr %struct.prestera_acl_rule, ptr %rule, i32 0, i32 5, i32 1, i32 1, i32 7
  %42 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 8191, ptr %arrayidx37.i, align 4
  %dev_id.i = getelementptr i8, ptr %call7.i, i32 2692
  %43 = ptrtoint ptr %dev_id.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %dev_id.i, align 4
  %conv38.i = trunc i32 %44 to i16
  %arrayidx40.i = getelementptr %struct.prestera_acl_rule, ptr %rule, i32 0, i32 5, i32 1, i32 0, i32 8
  %45 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %conv38.i, ptr %arrayidx40.i, align 4
  %arrayidx42.i = getelementptr %struct.prestera_acl_rule, ptr %rule, i32 0, i32 5, i32 1, i32 1, i32 8
  %46 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 511, ptr %arrayidx42.i, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match1.i) #6
  br label %if.end13

if.end13:                                         ; preds = %prestera_flower_parse_meta.exit, %if.end5.if.end13_crit_edge
  %47 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %1, align 8
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %48, align 4
  %and.i.i262 = and i32 %50, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i262)
  %tobool.i.i263.not = icmp eq i32 %and.i.i262, 0
  br i1 %tobool.i.i263.not, label %if.end13.if.end18_crit_edge, label %if.then15

if.end13.if.end18_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match16) #6
  %51 = ptrtoint ptr %match16 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr inttoptr (i32 -1 to ptr), ptr %match16, align 4, !annotation !31
  %52 = getelementptr inbounds %struct.flow_match_control, ptr %match16, i32 0, i32 1
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr inttoptr (i32 -1 to ptr), ptr %52, align 4, !annotation !31
  call void @flow_rule_match_control(ptr noundef %1, ptr noundef nonnull %match16) #6
  %54 = ptrtoint ptr %match16 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %match16, align 4
  %addr_type17 = getelementptr inbounds %struct.flow_dissector_key_control, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %addr_type17 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %addr_type17, align 2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match16) #6
  %phi.cast = zext i16 %57 to i32
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %if.end13.if.end18_crit_edge
  %addr_type.0 = phi i32 [ %phi.cast, %if.then15 ], [ 0, %if.end13.if.end18_crit_edge ]
  %58 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %1, align 8
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %59, align 4
  %and.i.i264 = and i32 %61, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i264)
  %tobool.i.i265.not = icmp eq i32 %and.i.i264, 0
  br i1 %tobool.i.i265.not, label %if.end18.if.end42_crit_edge, label %if.then20

if.end18.if.end42_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42

if.then20:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match21) #6
  %62 = ptrtoint ptr %match21 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr inttoptr (i32 -1 to ptr), ptr %match21, align 4, !annotation !31
  %63 = getelementptr inbounds %struct.flow_match_basic, ptr %match21, i32 0, i32 1
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr inttoptr (i32 -1 to ptr), ptr %63, align 4, !annotation !31
  call void @flow_rule_match_basic(ptr noundef %1, ptr noundef nonnull %match21) #6
  %65 = ptrtoint ptr %match21 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %match21, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %66, align 2
  %69 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %63, align 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %70, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %68)
  %cmp = icmp eq i16 %68, 3
  %spec.select = select i1 %cmp, i16 0, i16 %72
  %spec.select261 = select i1 %cmp, i16 0, i16 %68
  %arrayidx = getelementptr %struct.prestera_acl_rule, ptr %rule, i32 0, i32 5, i32 1, i32 0, i32 1
  %73 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %spec.select261, ptr %arrayidx, align 4
  %arrayidx31 = getelementptr %struct.prestera_acl_rule, ptr %rule, i32 0, i32 5, i32 1, i32 1, i32 1
  %74 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %spec.select, ptr %arrayidx31, align 4
  %arrayidx33 = getelementptr %struct.prestera_acl_rule, ptr %rule, i32 0, i32 5, i32 1, i32 0, i32 6
  %ip_proto35 = getelementptr inbounds %struct.flow_dissector_key_basic, ptr %66, i32 0, i32 1
  %75 = ptrtoint ptr %ip_proto35 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %ip_proto35, align 2
  %77 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %76, ptr %arrayidx33, align 4
  %arrayidx37 = getelementptr %struct.prestera_acl_rule, ptr %rule, i32 0, i32 5, i32 1, i32 1, i32 6
  %ip_proto39 = getelementptr inbounds %struct.flow_dissector_key_basic, ptr %70, i32 0, i32 1
  %78 = ptrtoint ptr %ip_proto39 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %ip_proto39, align 2
  %80 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %79, ptr %arrayidx37, align 4
  %81 = load i8, ptr %ip_proto35, align 2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match21) #6
  br label %if.end42

if.end42:                                         ; preds = %if.then20, %if.end18.if.end42_crit_edge
  %ip_proto.0 = phi i8 [ %81, %if.then20 ], [ 0, %if.end18.if.end42_crit_edge ]
  %82 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %1, align 8
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %83, align 4
  %and.i.i266 = and i32 %85, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i266)
  %tobool.i.i267.not = icmp eq i32 %and.i.i266, 0
  br i1 %tobool.i.i267.not, label %if.end42.if.end84_crit_edge, label %if.then44

if.end42.if.end84_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end84

if.then44:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match45) #6
  %86 = ptrtoint ptr %match45 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr inttoptr (i32 -1 to ptr), ptr %match45, align 4, !annotation !31
  %87 = getelementptr inbounds %struct.flow_match_eth_addrs, ptr %match45, i32 0, i32 1
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr inttoptr (i32 -1 to ptr), ptr %87, align 4, !annotation !31
  call void @flow_rule_match_eth_addrs(ptr noundef %1, ptr noundef nonnull %match45) #6
  %arrayidx47 = getelementptr %struct.prestera_acl_rule, ptr %rule, i32 0, i32 5, i32 1, i32 0, i32 2
  %89 = ptrtoint ptr %match45 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %match45, align 4
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_loadN_noabort(i32 %91, i32 4)
  %92 = load i32, ptr %90, align 1
  %93 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %92, ptr %arrayidx47, align 4
  %arrayidx51 = getelementptr %struct.prestera_acl_rule, ptr %rule, i32 0, i32 5, i32 1, i32 0, i32 3
  %arrayidx54 = getelementptr [6 x i8], ptr %90, i32 0, i32 4
  %94 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_loadN_noabort(i32 %94, i32 2)
  %95 = load i16, ptr %arrayidx54, align 1
  %96 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 %95, ptr %arrayidx51, align 4
  %arrayidx56 = getelementptr %struct.prestera_acl_rule, ptr %rule, i32 0, i32 5, i32 1, i32 1, i32 2
  %97 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %87, align 4
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_loadN_noabort(i32 %99, i32 4)
  %100 = load i32, ptr %98, align 1
  %101 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %100, ptr %arrayidx56, align 4
  %arrayidx61 = getelementptr %struct.prestera_acl_rule, ptr %rule, i32 0, i32 5, i32 1, i32 1, i32 3
  %arrayidx64 = getelementptr [6 x i8], ptr %98, i32 0, i32 4
  %102 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_loadN_noabort(i32 %102, i32 2)
  %103 = load i16, ptr %arrayidx64, align 1
  %104 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 %103, ptr %arrayidx61, align 4
  %arrayidx66 = getelementptr %struct.prestera_acl_rule, ptr %rule, i32 0, i32 5, i32 1, i32 0, i32 4
  %src = getelementptr inbounds %struct.flow_dissector_key_eth_addrs, ptr %90, i32 0, i32 1
  %105 = ptrtoint ptr %src to i32
  call void @__asan_loadN_noabort(i32 %105, i32 4)
  %106 = load i32, ptr %src, align 1
  %107 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %106, ptr %arrayidx66, align 4
  %arrayidx70 = getelementptr %struct.prestera_acl_rule, ptr %rule, i32 0, i32 5, i32 1, i32 0, i32 5
  %arrayidx73 = getelementptr %struct.flow_dissector_key_eth_addrs, ptr %90, i32 0, i32 1, i32 4
  %108 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_loadN_noabort(i32 %108, i32 2)
  %109 = load i16, ptr %arrayidx73, align 1
  %110 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 %109, ptr %arrayidx70, align 4
  %arrayidx75 = getelementptr %struct.prestera_acl_rule, ptr %rule, i32 0, i32 5, i32 1, i32 1, i32 4
  %src77 = getelementptr inbounds %struct.flow_dissector_key_eth_addrs, ptr %98, i32 0, i32 1
  %111 = ptrtoint ptr %src77 to i32
  call void @__asan_loadN_noabort(i32 %111, i32 4)
  %112 = load i32, ptr %src77, align 1
  %113 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %112, ptr %arrayidx75, align 4
  %arrayidx80 = getelementptr %struct.prestera_acl_rule, ptr %rule, i32 0, i32 5, i32 1, i32 1, i32 5
  %arrayidx83 = getelementptr %struct.flow_dissector_key_eth_addrs, ptr %98, i32 0, i32 1, i32 4
  %114 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_loadN_noabort(i32 %114, i32 2)
  %115 = load i16, ptr %arrayidx83, align 1
  %116 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 %115, ptr %arrayidx80, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match45) #6
  br label %if.end84

if.end84:                                         ; preds = %if.then44, %if.end42.if.end84_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %addr_type.0)
  %cmp86 = icmp eq i32 %addr_type.0, 2
  br i1 %cmp86, label %if.then88, label %if.end84.if.end106_crit_edge

if.end84.if.end106_crit_edge:                     ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end106

if.then88:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match89) #6
  %117 = ptrtoint ptr %match89 to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr inttoptr (i32 -1 to ptr), ptr %match89, align 4, !annotation !31
  %118 = getelementptr inbounds %struct.flow_match_ipv4_addrs, ptr %match89, i32 0, i32 1
  %119 = ptrtoint ptr %118 to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr inttoptr (i32 -1 to ptr), ptr %118, align 4, !annotation !31
  call void @flow_rule_match_ipv4_addrs(ptr noundef %1, ptr noundef nonnull %match89) #6
  %arrayidx91 = getelementptr %struct.prestera_acl_rule, ptr %rule, i32 0, i32 5, i32 1, i32 0, i32 9
  %120 = ptrtoint ptr %match89 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %match89, align 4
  %122 = ptrtoint ptr %121 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %121, align 4
  %124 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %123, ptr %arrayidx91, align 4
  %arrayidx95 = getelementptr %struct.prestera_acl_rule, ptr %rule, i32 0, i32 5, i32 1, i32 1, i32 9
  %125 = ptrtoint ptr %118 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %118, align 4
  %127 = ptrtoint ptr %126 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %126, align 4
  %129 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %128, ptr %arrayidx95, align 4
  %arrayidx99 = getelementptr %struct.prestera_acl_rule, ptr %rule, i32 0, i32 5, i32 1, i32 0, i32 10
  %dst101 = getelementptr inbounds %struct.flow_dissector_key_ipv4_addrs, ptr %121, i32 0, i32 1
  %130 = ptrtoint ptr %dst101 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %dst101, align 4
  %132 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %131, ptr %arrayidx99, align 4
  %arrayidx103 = getelementptr %struct.prestera_acl_rule, ptr %rule, i32 0, i32 5, i32 1, i32 1, i32 10
  %dst105 = getelementptr inbounds %struct.flow_dissector_key_ipv4_addrs, ptr %126, i32 0, i32 1
  %133 = ptrtoint ptr %dst105 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %dst105, align 4
  %135 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %134, ptr %arrayidx103, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match89) #6
  br label %if.end106

if.end106:                                        ; preds = %if.then88, %if.end84.if.end106_crit_edge
  %136 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %1, align 8
  %138 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %137, align 4
  %and.i.i268 = and i32 %139, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i268)
  %tobool.i.i269.not = icmp eq i32 %and.i.i268, 0
  br i1 %tobool.i.i269.not, label %if.end106.if.end144_crit_edge, label %if.then108

if.end106.if.end144_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end144

if.then108:                                       ; preds = %if.end106
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match109) #6
  %140 = ptrtoint ptr %match109 to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr inttoptr (i32 -1 to ptr), ptr %match109, align 4, !annotation !31
  %141 = getelementptr inbounds %struct.flow_match_ports, ptr %match109, i32 0, i32 1
  %142 = ptrtoint ptr %141 to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr inttoptr (i32 -1 to ptr), ptr %141, align 4, !annotation !31
  %143 = zext i8 %ip_proto.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %143, ptr @__sancov_gen_cov_switch_values)
  switch i8 %ip_proto.0, label %do.body117 [
    i8 6, label %if.then108.if.end127_crit_edge
    i8 17, label %if.then108.if.end127_crit_edge280
  ]

if.then108.if.end127_crit_edge280:                ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end127

if.then108.if.end127_crit_edge:                   ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end127

do.body117:                                       ; preds = %if.then108
  %extack120 = getelementptr inbounds %struct.flow_cls_common_offload, ptr %f, i32 0, i32 3
  %144 = ptrtoint ptr %extack120 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %extack120, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @prestera_flower_parse.__msg.1) #6
  %tobool121.not = icmp eq ptr %145, null
  br i1 %tobool121.not, label %do.body117.cleanup_crit_edge, label %if.then122

do.body117.cleanup_crit_edge:                     ; preds = %do.body117
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then122:                                       ; preds = %do.body117
  call void @__sanitizer_cov_trace_pc() #8
  %146 = ptrtoint ptr %145 to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr @prestera_flower_parse.__msg.1, ptr %145, align 4
  br label %cleanup

if.end127:                                        ; preds = %if.then108.if.end127_crit_edge, %if.then108.if.end127_crit_edge280
  call void @flow_rule_match_ports(ptr noundef %1, ptr noundef nonnull %match109) #6
  %arrayidx129 = getelementptr %struct.prestera_acl_rule, ptr %rule, i32 0, i32 5, i32 1, i32 0, i32 11
  %147 = ptrtoint ptr %match109 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %match109, align 4
  %149 = ptrtoint ptr %148 to i32
  call void @__asan_load2_noabort(i32 %149)
  %150 = load i16, ptr %148, align 4
  %151 = ptrtoint ptr %arrayidx129 to i32
  call void @__asan_store2_noabort(i32 %151)
  store i16 %150, ptr %arrayidx129, align 4
  %arrayidx133 = getelementptr %struct.prestera_acl_rule, ptr %rule, i32 0, i32 5, i32 1, i32 1, i32 11
  %152 = ptrtoint ptr %141 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %141, align 4
  %154 = ptrtoint ptr %153 to i32
  call void @__asan_load2_noabort(i32 %154)
  %155 = load i16, ptr %153, align 4
  %156 = ptrtoint ptr %arrayidx133 to i32
  call void @__asan_store2_noabort(i32 %156)
  store i16 %155, ptr %arrayidx133, align 4
  %arrayidx137 = getelementptr %struct.prestera_acl_rule, ptr %rule, i32 0, i32 5, i32 1, i32 0, i32 12
  %dst139 = getelementptr inbounds %struct.anon.146, ptr %148, i32 0, i32 1
  %157 = ptrtoint ptr %dst139 to i32
  call void @__asan_load2_noabort(i32 %157)
  %158 = load i16, ptr %dst139, align 2
  %159 = ptrtoint ptr %arrayidx137 to i32
  call void @__asan_store2_noabort(i32 %159)
  store i16 %158, ptr %arrayidx137, align 4
  %arrayidx141 = getelementptr %struct.prestera_acl_rule, ptr %rule, i32 0, i32 5, i32 1, i32 1, i32 12
  %dst143 = getelementptr inbounds %struct.anon.146, ptr %153, i32 0, i32 1
  %160 = ptrtoint ptr %dst143 to i32
  call void @__asan_load2_noabort(i32 %160)
  %161 = load i16, ptr %dst143, align 2
  %162 = ptrtoint ptr %arrayidx141 to i32
  call void @__asan_store2_noabort(i32 %162)
  store i16 %161, ptr %arrayidx141, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match109) #6
  br label %if.end144

cleanup:                                          ; preds = %if.then122, %do.body117.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match109) #6
  br label %cleanup196

if.end144:                                        ; preds = %if.end127, %if.end106.if.end144_crit_edge
  %163 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %1, align 8
  %165 = ptrtoint ptr %164 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %164, align 4
  %and.i.i270 = and i32 %166, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i270)
  %tobool.i.i271.not = icmp eq i32 %and.i.i270, 0
  br i1 %tobool.i.i271.not, label %if.end144.if.end173_crit_edge, label %if.then146

if.end144.if.end173_crit_edge:                    ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end173

if.then146:                                       ; preds = %if.end144
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match147) #6
  %167 = ptrtoint ptr %match147 to i32
  call void @__asan_store4_noabort(i32 %167)
  store ptr inttoptr (i32 -1 to ptr), ptr %match147, align 4, !annotation !31
  %168 = getelementptr inbounds %struct.flow_match_vlan, ptr %match147, i32 0, i32 1
  %169 = ptrtoint ptr %168 to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr inttoptr (i32 -1 to ptr), ptr %168, align 4, !annotation !31
  call void @flow_rule_match_vlan(ptr noundef %1, ptr noundef nonnull %match147) #6
  %170 = ptrtoint ptr %168 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %168, align 4
  %172 = ptrtoint ptr %171 to i32
  call void @__asan_load2_noabort(i32 %172)
  %bf.load = load i16, ptr %171, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %bf.load)
  %cmp150.not = icmp ult i16 %bf.load, 16
  br i1 %cmp150.not, label %if.then146.if.end165_crit_edge, label %if.then152

if.then146.if.end165_crit_edge:                   ; preds = %if.then146
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end165

if.then152:                                       ; preds = %if.then146
  call void @__sanitizer_cov_trace_pc() #8
  %bf.lshr = lshr i16 %bf.load, 4
  %173 = ptrtoint ptr %match147 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %match147, align 4
  %175 = ptrtoint ptr %174 to i32
  call void @__asan_load2_noabort(i32 %175)
  %bf.load155 = load i16, ptr %174, align 2
  %bf.lshr156 = lshr i16 %bf.load155, 4
  %arrayidx162 = getelementptr %struct.prestera_acl_rule, ptr %rule, i32 0, i32 5, i32 1, i32 0, i32 15
  %176 = ptrtoint ptr %arrayidx162 to i32
  call void @__asan_store2_noabort(i32 %176)
  store i16 %bf.lshr156, ptr %arrayidx162, align 4
  %arrayidx164 = getelementptr %struct.prestera_acl_rule, ptr %rule, i32 0, i32 5, i32 1, i32 1, i32 15
  %177 = ptrtoint ptr %arrayidx164 to i32
  call void @__asan_store2_noabort(i32 %177)
  store i16 %bf.lshr, ptr %arrayidx164, align 4
  br label %if.end165

if.end165:                                        ; preds = %if.then152, %if.then146.if.end165_crit_edge
  %arrayidx167 = getelementptr %struct.prestera_acl_rule, ptr %rule, i32 0, i32 5, i32 1, i32 0, i32 16
  %178 = ptrtoint ptr %match147 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %match147, align 4
  %vlan_tpid = getelementptr inbounds %struct.flow_dissector_key_vlan, ptr %179, i32 0, i32 1
  %180 = ptrtoint ptr %vlan_tpid to i32
  call void @__asan_load2_noabort(i32 %180)
  %181 = load i16, ptr %vlan_tpid, align 2
  %182 = ptrtoint ptr %arrayidx167 to i32
  call void @__asan_store2_noabort(i32 %182)
  store i16 %181, ptr %arrayidx167, align 4
  %arrayidx170 = getelementptr %struct.prestera_acl_rule, ptr %rule, i32 0, i32 5, i32 1, i32 1, i32 16
  %vlan_tpid172 = getelementptr inbounds %struct.flow_dissector_key_vlan, ptr %171, i32 0, i32 1
  %183 = ptrtoint ptr %vlan_tpid172 to i32
  call void @__asan_load2_noabort(i32 %183)
  %184 = load i16, ptr %vlan_tpid172, align 2
  %185 = ptrtoint ptr %arrayidx170 to i32
  call void @__asan_store2_noabort(i32 %185)
  store i16 %184, ptr %arrayidx170, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match147) #6
  br label %if.end173

if.end173:                                        ; preds = %if.end165, %if.end144.if.end173_crit_edge
  %186 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %1, align 8
  %188 = ptrtoint ptr %187 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %187, align 4
  %and.i.i272 = and i32 %189, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i272)
  %tobool.i.i273.not = icmp eq i32 %and.i.i272, 0
  br i1 %tobool.i.i273.not, label %if.end173.if.end191_crit_edge, label %if.then175

if.end173.if.end191_crit_edge:                    ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end191

if.then175:                                       ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match176) #6
  %190 = ptrtoint ptr %match176 to i32
  call void @__asan_store4_noabort(i32 %190)
  store ptr inttoptr (i32 -1 to ptr), ptr %match176, align 4, !annotation !31
  %191 = getelementptr inbounds %struct.flow_match_icmp, ptr %match176, i32 0, i32 1
  %192 = ptrtoint ptr %191 to i32
  call void @__asan_store4_noabort(i32 %192)
  store ptr inttoptr (i32 -1 to ptr), ptr %191, align 4, !annotation !31
  call void @flow_rule_match_icmp(ptr noundef %1, ptr noundef nonnull %match176) #6
  %arrayidx178 = getelementptr %struct.prestera_acl_rule, ptr %rule, i32 0, i32 5, i32 1, i32 0, i32 17
  %193 = ptrtoint ptr %match176 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %match176, align 4
  %195 = ptrtoint ptr %194 to i32
  call void @__asan_load1_noabort(i32 %195)
  %196 = load i8, ptr %194, align 2
  %197 = ptrtoint ptr %arrayidx178 to i32
  call void @__asan_store1_noabort(i32 %197)
  store i8 %196, ptr %arrayidx178, align 4
  %arrayidx181 = getelementptr %struct.prestera_acl_rule, ptr %rule, i32 0, i32 5, i32 1, i32 1, i32 17
  %198 = ptrtoint ptr %191 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %191, align 4
  %200 = ptrtoint ptr %199 to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %199, align 2
  %202 = ptrtoint ptr %arrayidx181 to i32
  call void @__asan_store1_noabort(i32 %202)
  store i8 %201, ptr %arrayidx181, align 4
  %arrayidx185 = getelementptr %struct.prestera_acl_rule, ptr %rule, i32 0, i32 5, i32 1, i32 0, i32 18
  %code = getelementptr inbounds %struct.anon.149, ptr %194, i32 0, i32 1
  %203 = ptrtoint ptr %code to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load i8, ptr %code, align 1
  %205 = ptrtoint ptr %arrayidx185 to i32
  call void @__asan_store1_noabort(i32 %205)
  store i8 %204, ptr %arrayidx185, align 4
  %arrayidx188 = getelementptr %struct.prestera_acl_rule, ptr %rule, i32 0, i32 5, i32 1, i32 1, i32 18
  %code190 = getelementptr inbounds %struct.anon.149, ptr %199, i32 0, i32 1
  %206 = ptrtoint ptr %code190 to i32
  call void @__asan_load1_noabort(i32 %206)
  %207 = load i8, ptr %code190, align 1
  %208 = ptrtoint ptr %arrayidx188 to i32
  call void @__asan_store1_noabort(i32 %208)
  store i8 %207, ptr %arrayidx188, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match176) #6
  br label %if.end191

if.end191:                                        ; preds = %if.then175, %if.end173.if.end191_crit_edge
  %209 = ptrtoint ptr %rule.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %rule.i, align 8
  %action = getelementptr inbounds %struct.flow_rule, ptr %210, i32 0, i32 1
  %extack194 = getelementptr inbounds %struct.flow_cls_common_offload, ptr %f, i32 0, i32 3
  %211 = ptrtoint ptr %extack194 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %extack194, align 4
  %213 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %action, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %214)
  %tobool.i.not.i = icmp eq i32 %214, 0
  br i1 %tobool.i.not.i, label %if.end191.cleanup196_crit_edge, label %for.body.lr.ph.i

if.end191.cleanup196_crit_edge:                   ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup196

for.body.lr.ph.i:                                 ; preds = %if.end191
  %entries.i = getelementptr inbounds %struct.flow_rule, ptr %210, i32 1
  %trap.i = getelementptr inbounds %struct.prestera_acl_rule, ptr %rule, i32 0, i32 6, i32 1, i32 2
  %drop.i = getelementptr inbounds %struct.prestera_acl_rule, ptr %rule, i32 0, i32 6, i32 1, i32 1
  %215 = getelementptr inbounds %struct.prestera_acl_rule, ptr %rule, i32 0, i32 6, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.03.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %act.02.i = phi ptr [ %entries.i, %for.body.lr.ph.i ], [ %arrayidx38.i, %for.inc.i.for.body.i_crit_edge ]
  %216 = ptrtoint ptr %act.02.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %act.02.i, align 8
  %218 = zext i32 %217 to i64
  call void @__sanitizer_cov_trace_switch(i64 %218, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %217, label %do.body.i275 [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb6.i
    i32 2, label %sw.bb18.i
  ]

sw.bb.i:                                          ; preds = %for.body.i
  %219 = ptrtoint ptr %215 to i32
  call void @__asan_load1_noabort(i32 %219)
  %bf.load.i = load i8, ptr %215, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i274 = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i274, label %if.end2.i, label %sw.bb.i.cleanup196_crit_edge

sw.bb.i.cleanup196_crit_edge:                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup196

if.end2.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  %bf.set.i = or i8 %bf.load.i, -128
  %220 = ptrtoint ptr %215 to i32
  call void @__asan_store1_noabort(i32 %220)
  store i8 %bf.set.i, ptr %215, align 4
  br label %for.inc.i

sw.bb6.i:                                         ; preds = %for.body.i
  %221 = ptrtoint ptr %drop.i to i32
  call void @__asan_load1_noabort(i32 %221)
  %bf.load8.i = load i8, ptr %drop.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load8.i)
  %tobool10.not.i = icmp sgt i8 %bf.load8.i, -1
  br i1 %tobool10.not.i, label %if.end12.i, label %sw.bb6.i.cleanup196_crit_edge

sw.bb6.i.cleanup196_crit_edge:                    ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup196

if.end12.i:                                       ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #8
  %bf.set17.i = or i8 %bf.load8.i, -128
  %222 = ptrtoint ptr %drop.i to i32
  call void @__asan_store1_noabort(i32 %222)
  store i8 %bf.set17.i, ptr %drop.i, align 1
  br label %for.inc.i

sw.bb18.i:                                        ; preds = %for.body.i
  %223 = ptrtoint ptr %trap.i to i32
  call void @__asan_load1_noabort(i32 %223)
  %bf.load20.i = load i8, ptr %trap.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load20.i)
  %tobool22.not.i = icmp sgt i8 %bf.load20.i, -1
  br i1 %tobool22.not.i, label %if.end24.i, label %sw.bb18.i.cleanup196_crit_edge

sw.bb18.i.cleanup196_crit_edge:                   ; preds = %sw.bb18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup196

if.end24.i:                                       ; preds = %sw.bb18.i
  call void @__sanitizer_cov_trace_pc() #8
  %bf.set29.i = or i8 %bf.load20.i, -128
  %224 = ptrtoint ptr %trap.i to i32
  call void @__asan_store1_noabort(i32 %224)
  store i8 %bf.set29.i, ptr %trap.i, align 2
  br label %for.inc.i

do.body.i275:                                     ; preds = %for.body.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @prestera_flower_parse_actions.__msg) #6
  %tobool30.not.i = icmp eq ptr %212, null
  br i1 %tobool30.not.i, label %do.body.i275.if.end32.i_crit_edge, label %if.then31.i

do.body.i275.if.end32.i_crit_edge:                ; preds = %do.body.i275
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32.i

if.then31.i:                                      ; preds = %do.body.i275
  call void @__sanitizer_cov_trace_pc() #8
  %225 = ptrtoint ptr %212 to i32
  call void @__asan_store4_noabort(i32 %225)
  store ptr @prestera_flower_parse_actions.__msg, ptr %212, align 4
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.then31.i, %do.body.i275.if.end32.i_crit_edge
  %call36.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #9
  br label %cleanup196

for.inc.i:                                        ; preds = %if.end24.i, %if.end12.i, %if.end2.i
  %inc.i = add nuw i32 %i.03.i, 1
  %arrayidx38.i = getelementptr %struct.flow_rule, ptr %210, i32 0, i32 1, i32 1, i32 %inc.i
  %226 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %action, align 8
  %cmp.i = icmp ult i32 %inc.i, %227
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.cleanup196_crit_edge

for.inc.i.cleanup196_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup196

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

cleanup196:                                       ; preds = %for.inc.i.cleanup196_crit_edge, %if.end32.i, %sw.bb18.i.cleanup196_crit_edge, %sw.bb6.i.cleanup196_crit_edge, %sw.bb.i.cleanup196_crit_edge, %if.end191.cleanup196_crit_edge, %cleanup, %prestera_flower_parse_meta.exit.thread, %if.then4, %do.body.cleanup196_crit_edge
  %retval.1 = phi i32 [ -22, %cleanup ], [ -95, %if.then4 ], [ -95, %do.body.cleanup196_crit_edge ], [ -22, %prestera_flower_parse_meta.exit.thread ], [ -95, %if.end32.i ], [ 0, %if.end191.cleanup196_crit_edge ], [ 0, %for.inc.i.cleanup196_crit_edge ], [ -17, %sw.bb18.i.cleanup196_crit_edge ], [ -17, %sw.bb6.i.cleanup196_crit_edge ], [ -17, %sw.bb.i.cleanup196_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @prestera_acl_ruleset_is_offload(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prestera_acl_ruleset_offload(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prestera_acl_rule_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @prestera_acl_rule_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @prestera_flower_destroy(ptr noundef %block, ptr nocapture noundef readonly %f) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sw = getelementptr inbounds %struct.prestera_flow_block, ptr %block, i32 0, i32 1
  %0 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sw, align 4
  %acl = getelementptr inbounds %struct.prestera_switch, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %acl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %acl, align 4
  %call = tail call ptr @prestera_acl_ruleset_lookup(ptr noundef %3, ptr noundef %block) #6
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %cookie = getelementptr inbounds %struct.flow_cls_offload, ptr %f, i32 0, i32 2
  %4 = ptrtoint ptr %cookie to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cookie, align 4
  %call2 = tail call ptr @prestera_acl_rule_lookup(ptr noundef %call, i32 noundef %5) #6
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sw, align 4
  tail call void @prestera_acl_rule_del(ptr noundef %7, ptr noundef nonnull %call2) #6
  tail call void @prestera_acl_rule_destroy(ptr noundef nonnull %call2) #6
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  tail call void @prestera_acl_ruleset_put(ptr noundef %call) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @prestera_acl_ruleset_lookup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @prestera_acl_rule_lookup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @prestera_acl_rule_del(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @prestera_flower_tmplt_create(ptr noundef %block, ptr nocapture noundef readonly %f) local_unnamed_addr #0 align 64 {
entry:
  %rule = alloca %struct.prestera_acl_rule, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %rule) #6
  %0 = call ptr @memset(ptr %rule, i32 0, i32 200)
  %call = call fastcc i32 @prestera_flower_parse(ptr noundef %block, ptr noundef nonnull %rule, ptr noundef %f)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3264, i32 noundef 4) #10
  %tobool2.not = icmp eq ptr %call7.i, null
  br i1 %tobool2.not, label %if.end.do.body_crit_edge, label %if.end4

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.end4:                                          ; preds = %if.end
  call void @prestera_acl_rule_keymask_pcl_id_set(ptr noundef nonnull %rule, i16 noundef zeroext 0) #6
  %sw = getelementptr inbounds %struct.prestera_flow_block, ptr %block, i32 0, i32 1
  %2 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sw, align 4
  %acl = getelementptr inbounds %struct.prestera_switch, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %acl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %acl, align 4
  %call5 = call ptr @prestera_acl_ruleset_get(ptr noundef %5, ptr noundef %block) #6
  %tobool.not.i = icmp eq ptr %call5, null
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  call void @kfree(ptr noundef nonnull %call7.i) #6
  br label %do.body

if.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %mask = getelementptr inbounds %struct.prestera_acl_rule, ptr %rule, i32 0, i32 5, i32 1, i32 1
  call void @prestera_acl_ruleset_keymask_set(ptr noundef nonnull %call5, ptr noundef %mask) #6
  %call9 = call i32 @prestera_acl_ruleset_offload(ptr noundef nonnull %call5) #6
  %6 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call5, ptr %call7.i, align 8
  %tmplt = getelementptr inbounds %struct.prestera_flow_block, ptr %block, i32 0, i32 5
  %7 = ptrtoint ptr %tmplt to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i, ptr %tmplt, align 4
  br label %cleanup

do.body:                                          ; preds = %if.then7, %if.end.do.body_crit_edge
  %err.0 = phi i32 [ -22, %if.then7 ], [ -12, %if.end.do.body_crit_edge ]
  %extack = getelementptr inbounds %struct.flow_cls_common_offload, ptr %f, i32 0, i32 3
  %8 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %extack, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @prestera_flower_tmplt_create.__msg) #6
  %tobool11.not = icmp eq ptr %9, null
  br i1 %tobool11.not, label %do.body.cleanup_crit_edge, label %if.then12

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @prestera_flower_tmplt_create.__msg, ptr %9, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %do.body.cleanup_crit_edge, %if.end8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ %call, %entry.cleanup_crit_edge ], [ %err.0, %if.then12 ], [ %err.0, %do.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %rule) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @prestera_acl_rule_keymask_pcl_id_set(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @prestera_acl_ruleset_keymask_set(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @prestera_flower_tmplt_destroy(ptr nocapture noundef %block, ptr nocapture noundef readnone %f) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tmplt.i = getelementptr inbounds %struct.prestera_flow_block, ptr %block, i32 0, i32 5
  %0 = ptrtoint ptr %tmplt.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tmplt.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.prestera_flower_template_cleanup.exit_crit_edge, label %if.then.i

entry.prestera_flower_template_cleanup.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %prestera_flower_template_cleanup.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @prestera_acl_ruleset_put(ptr noundef %3) #6
  %4 = ptrtoint ptr %tmplt.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tmplt.i, align 4
  tail call void @kfree(ptr noundef %5) #6
  %6 = ptrtoint ptr %tmplt.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %tmplt.i, align 4
  br label %prestera_flower_template_cleanup.exit

prestera_flower_template_cleanup.exit:            ; preds = %if.then.i, %entry.prestera_flower_template_cleanup.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @prestera_flower_stats(ptr noundef %block, ptr nocapture noundef %f) local_unnamed_addr #0 align 64 {
entry:
  %packets = alloca i64, align 8
  %lastuse = alloca i64, align 8
  %bytes = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %packets) #6
  %0 = ptrtoint ptr %packets to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %packets, align 8, !annotation !31
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %lastuse) #6
  %1 = ptrtoint ptr %lastuse to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %lastuse, align 8, !annotation !31
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bytes) #6
  %2 = ptrtoint ptr %bytes to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %bytes, align 8, !annotation !31
  %sw = getelementptr inbounds %struct.prestera_flow_block, ptr %block, i32 0, i32 1
  %3 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sw, align 4
  %acl = getelementptr inbounds %struct.prestera_switch, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %acl to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %acl, align 4
  %call = tail call ptr @prestera_acl_ruleset_lookup(ptr noundef %6, ptr noundef %block) #6
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %cookie = getelementptr inbounds %struct.flow_cls_offload, ptr %f, i32 0, i32 2
  %8 = ptrtoint ptr %cookie to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cookie, align 4
  %call3 = tail call ptr @prestera_acl_rule_lookup(ptr noundef %call, i32 noundef %9) #6
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.err_rule_get_stats_crit_edge, label %if.end5

if.end.err_rule_get_stats_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_rule_get_stats

if.end5:                                          ; preds = %if.end
  %10 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sw, align 4
  %acl7 = getelementptr inbounds %struct.prestera_switch, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %acl7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %acl7, align 4
  %call8 = call i32 @prestera_acl_rule_get_stats(ptr noundef %13, ptr noundef nonnull %call3, ptr noundef nonnull %packets, ptr noundef nonnull %bytes, ptr noundef nonnull %lastuse) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end5.err_rule_get_stats_crit_edge

if.end5.err_rule_get_stats_crit_edge:             ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_rule_get_stats

if.end11:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %stats = getelementptr inbounds %struct.flow_cls_offload, ptr %f, i32 0, i32 4
  %14 = ptrtoint ptr %bytes to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %bytes, align 8
  %16 = ptrtoint ptr %packets to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %packets, align 8
  %18 = ptrtoint ptr %lastuse to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %lastuse, align 8
  %20 = ptrtoint ptr %stats to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %stats, align 8
  %add.i = add i64 %21, %17
  store i64 %add.i, ptr %stats, align 8
  %bytes2.i = getelementptr inbounds %struct.flow_cls_offload, ptr %f, i32 0, i32 4, i32 1
  %22 = ptrtoint ptr %bytes2.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %bytes2.i, align 8
  %add3.i = add i64 %23, %15
  store i64 %add3.i, ptr %bytes2.i, align 8
  %lastused6.i = getelementptr inbounds %struct.flow_cls_offload, ptr %f, i32 0, i32 4, i32 3
  %24 = ptrtoint ptr %lastused6.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %lastused6.i, align 8
  %26 = call i64 @llvm.umax.i64(i64 %25, i64 %19) #6
  %27 = ptrtoint ptr %lastused6.i to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %26, ptr %lastused6.i, align 8
  %used_hw_stats28.i = getelementptr inbounds %struct.flow_cls_offload, ptr %f, i32 0, i32 4, i32 4
  %28 = ptrtoint ptr %used_hw_stats28.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %used_hw_stats28.i, align 8
  %or.i = or i32 %29, 2
  store i32 %or.i, ptr %used_hw_stats28.i, align 8
  %used_hw_stats_valid.i = getelementptr inbounds %struct.flow_cls_offload, ptr %f, i32 0, i32 4, i32 5
  %30 = ptrtoint ptr %used_hw_stats_valid.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %used_hw_stats_valid.i, align 4
  br label %err_rule_get_stats

err_rule_get_stats:                               ; preds = %if.end11, %if.end5.err_rule_get_stats_crit_edge, %if.end.err_rule_get_stats_crit_edge
  %err.0 = phi i32 [ %call8, %if.end5.err_rule_get_stats_crit_edge ], [ 0, %if.end11 ], [ -22, %if.end.err_rule_get_stats_crit_edge ]
  call void @prestera_acl_ruleset_put(ptr noundef %call) #6
  br label %cleanup

cleanup:                                          ; preds = %err_rule_get_stats, %if.then
  %retval.0 = phi i32 [ %7, %if.then ], [ %err.0, %err_rule_get_stats ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bytes) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %lastuse) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %packets) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prestera_acl_rule_get_stats(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @prestera_acl_rule_priority_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_control(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_basic(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_eth_addrs(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_ipv4_addrs(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_ports(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_vlan(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_icmp(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_meta(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dev_get_by_index(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @prestera_netdev_check(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !18, !19, !20}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = !{ptr @prestera_flower_tmplt_create.__msg, !1, !"__msg", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/marvell/prestera/prestera_flower.c", i32 373, i32 2}
!2 = !{ptr @prestera_flower_parse.__msg, !3, !"__msg", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/marvell/prestera/prestera_flower.c", i32 134, i32 3}
!4 = !{ptr @prestera_flower_parse.__msg.1, !5, !"__msg", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/marvell/prestera/prestera_flower.c", i32 217, i32 4}
!6 = !{ptr @prestera_flower_parse_meta.__msg, !7, !"__msg", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/marvell/prestera/prestera_flower.c", i32 78, i32 3}
!8 = !{ptr @prestera_flower_parse_meta.__msg.2, !9, !"__msg", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/marvell/prestera/prestera_flower.c", i32 86, i32 3}
!10 = !{ptr @prestera_flower_parse_meta.__msg.3, !11, !"__msg", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/marvell/prestera/prestera_flower.c", i32 92, i32 3}
!12 = !{ptr @prestera_flower_parse_actions.__msg, !13, !"__msg", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/marvell/prestera/prestera_flower.c", i32 57, i32 4}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/marvell/prestera/prestera_flower.c", i32 58, i32 4}
!16 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @prestera_flower_parse_actions._entry, !15, !"_entry", i1 false, i1 false}
!19 = !{ptr @prestera_flower_parse_actions._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!20 = distinct !{null, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../include/net/flow_offload.h", i32 418, i32 2}
!22 = !{i32 1, !"wchar_size", i32 2}
!23 = !{i32 1, !"min_enum_size", i32 4}
!24 = !{i32 8, !"branch-target-enforcement", i32 0}
!25 = !{i32 8, !"sign-return-address", i32 0}
!26 = !{i32 8, !"sign-return-address-all", i32 0}
!27 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!31 = !{!"auto-init"}
