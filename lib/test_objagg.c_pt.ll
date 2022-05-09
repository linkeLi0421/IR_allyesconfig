; ModuleID = '/llk/IR_all_yes/lib/test_objagg.c_pt.bc'
source_filename = "../lib/test_objagg.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.objagg_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.expect_stats_info = type { %struct.objagg_obj_stats, i8, i32 }
%struct.objagg_obj_stats = type { i32, i32 }
%struct.action_item = type { i32, i32, i32, i32, %struct.expect_stats }
%struct.expect_stats = type { i32, [32 x %struct.expect_stats_info] }
%struct.atomic_t = type { i32 }
%struct.tokey = type { i32 }
%struct.world = type { i32, i32, [128 x i8], [32 x ptr], [32 x i32] }
%struct.objagg_stats = type { i32, i32, [0 x %struct.objagg_obj_stats_info] }
%struct.objagg_obj_stats_info = type { %struct.objagg_obj_stats, ptr, i8 }
%struct.root = type { %struct.tokey, [128 x i8] }

@__initcall__kmod_test_objagg__174_1017_test_objagg_init6 = internal global ptr @test_objagg_init, section ".initcall6.init", align 4
@__exitcall_test_objagg_exit = internal global ptr @test_objagg_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file175 = internal constant [33 x i8] c"test_objagg.file=lib/test_objagg\00", section ".modinfo", align 1
@__UNIQUE_ID_license176 = internal constant [33 x i8] c"test_objagg.license=Dual BSD/GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author177 = internal constant [50 x i8] c"test_objagg.author=Jiri Pirko <jiri@mellanox.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description178 = internal constant [47 x i8] c"test_objagg.description=Test module for objagg\00", section ".modinfo", align 1
@nodelta_ops = internal constant { %struct.objagg_ops, [36 x i8] } { %struct.objagg_ops { i32 4, ptr @delta_check_dummy, ptr null, ptr @delta_create_dummy, ptr @delta_destroy_dummy, ptr @root_create, ptr @root_destroy }, [36 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@check_stats_zero._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 236, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\013test_objagg: Stats: Object count is not zero while it should be\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"check_stats_zero\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"lib/test_objagg.c\00", [46 x i8] zeroinitializer }, align 32
@check_stats_zero._entry_ptr = internal global ptr @check_stats_zero._entry, section ".printk_index", align 4
@test_nodelta_obj_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 165, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013test_objagg: Key %u: Failed to get object.\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"test_nodelta_obj_get\00", [43 x i8] zeroinitializer }, align 32
@test_nodelta_obj_get._entry_ptr = internal global ptr @test_nodelta_obj_get._entry, section ".printk_index", align 4
@test_nodelta_obj_get._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.4, ptr @.str.2, i32 170, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013test_objagg: Key %u: Root was not created\0A\00", [51 x i8] zeroinitializer }, align 32
@test_nodelta_obj_get._entry_ptr.7 = internal global ptr @test_nodelta_obj_get._entry.5, section ".printk_index", align 4
@test_nodelta_obj_get._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.2, i32 177, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013test_objagg: Key %u: Root was incorrectly created\0A\00", [43 x i8] zeroinitializer }, align 32
@test_nodelta_obj_get._entry_ptr.10 = internal global ptr @test_nodelta_obj_get._entry.8, section ".printk_index", align 4
@test_nodelta_obj_get._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.4, ptr @.str.2, i32 184, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013test_objagg: Key %u: Root has unexpected key id\0A\00", [45 x i8] zeroinitializer }, align 32
@test_nodelta_obj_get._entry_ptr.13 = internal global ptr @test_nodelta_obj_get._entry.11, section ".printk_index", align 4
@test_nodelta_obj_get._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.4, ptr @.str.2, i32 191, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\013test_objagg: Key %u: Buffer does not match the expected content\0A\00", [61 x i8] zeroinitializer }, align 32
@test_nodelta_obj_get._entry_ptr.16 = internal global ptr @test_nodelta_obj_get._entry.14, section ".printk_index", align 4
@world_obj_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.17, ptr @.str.2, i32 57, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"world_obj_get\00", [18 x i8] zeroinitializer }, align 32
@world_obj_get._entry_ptr = internal global ptr @world_obj_get._entry, section ".printk_index", align 4
@world_obj_get._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.2, i32 64, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013test_objagg: Key %u: God another object for the same key.\0A\00", [35 x i8] zeroinitializer }, align 32
@world_obj_get._entry_ptr.20 = internal global ptr @world_obj_get._entry.18, section ".printk_index", align 4
@check_stats_nodelta._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 256, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\013test_objagg: Stats: Unexpected object count (%u expected, %u returned)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"check_stats_nodelta\00", [44 x i8] zeroinitializer }, align 32
@check_stats_nodelta._entry_ptr = internal global ptr @check_stats_nodelta._entry, section ".printk_index", align 4
@check_stats_nodelta._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.2, i32 263, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013test_objagg: Stats: incorrect user count\0A\00", [52 x i8] zeroinitializer }, align 32
@check_stats_nodelta._entry_ptr.25 = internal global ptr @check_stats_nodelta._entry.23, section ".printk_index", align 4
@check_stats_nodelta._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.22, ptr @.str.2, i32 268, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013test_objagg: Stats: incorrect delta user count\0A\00", [46 x i8] zeroinitializer }, align 32
@check_stats_nodelta._entry_ptr.28 = internal global ptr @check_stats_nodelta._entry.26, section ".printk_index", align 4
@test_nodelta_obj_put._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.2, i32 213, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013test_objagg: Key %u: Root was not destroyed\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"test_nodelta_obj_put\00", [43 x i8] zeroinitializer }, align 32
@test_nodelta_obj_put._entry_ptr = internal global ptr @test_nodelta_obj_put._entry, section ".printk_index", align 4
@test_nodelta_obj_put._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.2, i32 219, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013test_objagg: Key %u: Root was incorrectly destroyed\0A\00", [41 x i8] zeroinitializer }, align 32
@test_nodelta_obj_put._entry_ptr.33 = internal global ptr @test_nodelta_obj_put._entry.31, section ".printk_index", align 4
@delta_ops = internal constant { %struct.objagg_ops, [36 x i8] } { %struct.objagg_ops { i32 4, ptr @delta_check, ptr null, ptr @delta_create, ptr @delta_destroy, ptr @root_create, ptr @root_destroy }, [36 x i8] zeroinitializer }, align 32
@test_delta_action_item._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.2, i32 793, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013test_objagg: Key %u: Stats: %s\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"test_delta_action_item\00", [41 x i8] zeroinitializer }, align 32
@test_delta_action_item._entry_ptr = internal global ptr @test_delta_action_item._entry, section ".printk_index", align 4
@check_expect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.2, i32 572, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"\013test_objagg: Key %u: Delta count changed while expected to remain the same.\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"check_expect\00", [19 x i8] zeroinitializer }, align 32
@check_expect._entry_ptr = internal global ptr @check_expect._entry, section ".printk_index", align 4
@check_expect._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.37, ptr @.str.2, i32 581, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013test_objagg: Key %u: Delta count was not incremented.\0A\00", [39 x i8] zeroinitializer }, align 32
@check_expect._entry_ptr.40 = internal global ptr @check_expect._entry.38, section ".printk_index", align 4
@check_expect._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.37, ptr @.str.2, i32 590, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013test_objagg: Key %u: Delta count was not decremented.\0A\00", [39 x i8] zeroinitializer }, align 32
@check_expect._entry_ptr.43 = internal global ptr @check_expect._entry.41, section ".printk_index", align 4
@check_expect._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.37, ptr @.str.2, i32 600, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\013test_objagg: Key %u: Root count changed while expected to remain the same.\0A\00", [50 x i8] zeroinitializer }, align 32
@check_expect._entry_ptr.46 = internal global ptr @check_expect._entry.44, section ".printk_index", align 4
@check_expect._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.37, ptr @.str.2, i32 609, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013test_objagg: Key %u: Root count was not incremented.\0A\00", [40 x i8] zeroinitializer }, align 32
@check_expect._entry_ptr.49 = internal global ptr @check_expect._entry.47, section ".printk_index", align 4
@check_expect._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.37, ptr @.str.2, i32 618, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013test_objagg: Key %u: Root count was not decremented.\0A\00", [40 x i8] zeroinitializer }, align 32
@check_expect._entry_ptr.52 = internal global ptr @check_expect._entry.50, section ".printk_index", align 4
@.str.53 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"objagg_stats_get() failed.\00", [37 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Unexpected object count\00", [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Incorrect root/delta indication\00", [32 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Incorrect user count\00", [43 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Incorrect delta user count\00", [37 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"incorrect key id\00", [47 x i8] zeroinitializer }, align 32
@action_items = internal constant { <{ { i32, i32, i32, i32, { i32, <{ %struct.expect_stats_info, [31 x %struct.expect_stats_info] }> } }, { i32, i32, i32, i32, { i32, <{ %struct.expect_stats_info, %struct.expect_stats_info, [30 x %struct.expect_stats_info] }> } }, { i32, i32, i32, i32, { i32, <{ %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, [29 x %struct.expect_stats_info] }> } }, { i32, i32, i32, i32, { i32, <{ %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, [28 x %struct.expect_stats_info] }> } }, { i32, i32, i32, i32, { i32, <{ %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, [28 x %struct.expect_stats_info] }> } }, { i32, i32, i32, i32, { i32, <{ %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, [28 x %struct.expect_stats_info] }> } }, { i32, i32, i32, i32, { i32, <{ %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, [27 x %struct.expect_stats_info] }> } }, { i32, i32, i32, i32, { i32, <{ %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, [26 x %struct.expect_stats_info] }> } }, { i32, i32, i32, i32, { i32, <{ %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, [26 x %struct.expect_stats_info] }> } }, { i32, i32, i32, i32, { i32, <{ %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, [26 x %struct.expect_stats_info] }> } }, { i32, i32, i32, i32, { i32, <{ %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, [27 x %struct.expect_stats_info] }> } }, { i32, i32, i32, i32, { i32, <{ %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, [27 x %struct.expect_stats_info] }> } }, { i32, i32, i32, i32, { i32, <{ %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, [27 x %struct.expect_stats_info] }> } }, { i32, i32, i32, i32, { i32, <{ %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, [29 x %struct.expect_stats_info] }> } }, { i32, i32, i32, i32, { i32, <{ %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, [28 x %struct.expect_stats_info] }> } }, { i32, i32, i32, i32, { i32, <{ %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, [27 x %struct.expect_stats_info] }> } }, { i32, i32, i32, i32, { i32, <{ %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, [27 x %struct.expect_stats_info] }> } }, { i32, i32, i32, i32, { i32, <{ %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, [27 x %struct.expect_stats_info] }> } }, { i32, i32, i32, i32, { i32, <{ %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, [27 x %struct.expect_stats_info] }> } }, { i32, i32, i32, i32, { i32, <{ %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, [28 x %struct.expect_stats_info] }> } }, { i32, i32, i32, i32, { i32, <{ %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, [27 x %struct.expect_stats_info] }> } }, { i32, i32, i32, i32, { i32, <{ %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, [28 x %struct.expect_stats_info] }> } }, { i32, i32, i32, i32, { i32, <{ %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, [29 x %struct.expect_stats_info] }> } }, { i32, i32, i32, i32, { i32, <{ %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, [29 x %struct.expect_stats_info] }> } }, { i32, i32, i32, i32, { i32, <{ %struct.expect_stats_info, %struct.expect_stats_info, [30 x %struct.expect_stats_info] }> } }, %struct.action_item }>, [3480 x i8] } { <{ { i32, i32, i32, i32, { i32, <{ %struct.expect_stats_info, [31 x %struct.expect_stats_info] }> } }, { i32, i32, i32, i32, { i32, <{ %struct.expect_stats_info, %struct.expect_stats_info, [30 x %struct.expect_stats_info] }> } }, { i32, i32, i32, i32, { i32, <{ %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, [29 x %struct.expect_stats_info] }> } }, { i32, i32, i32, i32, { i32, <{ %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, [28 x %struct.expect_stats_info] }> } }, { i32, i32, i32, i32, { i32, <{ %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, [28 x %struct.expect_stats_info] }> } }, { i32, i32, i32, i32, { i32, <{ %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, [28 x %struct.expect_stats_info] }> } }, { i32, i32, i32, i32, { i32, <{ %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, [27 x %struct.expect_stats_info] }> } }, { i32, i32, i32, i32, { i32, <{ %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, [26 x %struct.expect_stats_info] }> } }, { i32, i32, i32, i32, { i32, <{ %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, [26 x %struct.expect_stats_info] }> } }, { i32, i32, i32, i32, { i32, <{ %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, [26 x %struct.expect_stats_info] }> } }, { i32, i32, i32, i32, { i32, <{ %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, [27 x %struct.expect_stats_info] }> } }, { i32, i32, i32, i32, { i32, <{ %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, [27 x %struct.expect_stats_info] }> } }, { i32, i32, i32, i32, { i32, <{ %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, [27 x %struct.expect_stats_info] }> } }, { i32, i32, i32, i32, { i32, <{ %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, [29 x %struct.expect_stats_info] }> } }, { i32, i32, i32, i32, { i32, <{ %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, [28 x %struct.expect_stats_info] }> } }, { i32, i32, i32, i32, { i32, <{ %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, [27 x %struct.expect_stats_info] }> } }, { i32, i32, i32, i32, { i32, <{ %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, [27 x %struct.expect_stats_info] }> } }, { i32, i32, i32, i32, { i32, <{ %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, [27 x %struct.expect_stats_info] }> } }, { i32, i32, i32, i32, { i32, <{ %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, [27 x %struct.expect_stats_info] }> } }, { i32, i32, i32, i32, { i32, <{ %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, [28 x %struct.expect_stats_info] }> } }, { i32, i32, i32, i32, { i32, <{ %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, [27 x %struct.expect_stats_info] }> } }, { i32, i32, i32, i32, { i32, <{ %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, [28 x %struct.expect_stats_info] }> } }, { i32, i32, i32, i32, { i32, <{ %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, [29 x %struct.expect_stats_info] }> } }, { i32, i32, i32, i32, { i32, <{ %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, [29 x %struct.expect_stats_info] }> } }, { i32, i32, i32, i32, { i32, <{ %struct.expect_stats_info, %struct.expect_stats_info, [30 x %struct.expect_stats_info] }> } }, %struct.action_item }> <{ { i32, i32, i32, i32, { i32, <{ %struct.expect_stats_info, [31 x %struct.expect_stats_info] }> } } { i32 1, i32 0, i32 0, i32 1, { i32, <{ %struct.expect_stats_info, [31 x %struct.expect_stats_info] }> } { i32 1, <{ %struct.expect_stats_info, [31 x %struct.expect_stats_info] }> <{ %struct.expect_stats_info { %struct.objagg_obj_stats { i32 1, i32 1 }, i8 1, i32 1 }, [31 x %struct.expect_stats_info] zeroinitializer }> } }, { i32, i32, i32, i32, { i32, <{ %struct.expect_stats_info, %struct.expect_stats_info, [30 x %struct.expect_stats_info] }> } } { i32 7, i32 0, i32 0, i32 1, { i32, <{ %struct.expect_stats_info, %struct.expect_stats_info, [30 x %struct.expect_stats_info] }> } { i32 2, <{ %struct.expect_stats_info, %struct.expect_stats_info, [30 x %struct.expect_stats_info] }> <{ %struct.expect_stats_info { %struct.objagg_obj_stats { i32 1, i32 1 }, i8 1, i32 1 }, %struct.expect_stats_info { %struct.objagg_obj_stats { i32 1, i32 1 }, i8 1, i32 7 }, [30 x %struct.expect_stats_info] zeroinitializer }> } }, { i32, i32, i32, i32, { i32, <{ %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, [29 x %struct.expect_stats_info] }> } } { i32 3, i32 0, i32 1, i32 0, { i32, <{ %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, [29 x %struct.expect_stats_info] }> } { i32 3, <{ %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, [29 x %struct.expect_stats_info] }> <{ %struct.expect_stats_info { %struct.objagg_obj_stats { i32 1, i32 2 }, i8 1, i32 1 }, %struct.expect_stats_info { %struct.objagg_obj_stats { i32 1, i32 1 }, i8 1, i32 7 }, %struct.expect_stats_info { %struct.objagg_obj_stats { i32 1, i32 1 }, i8 0, i32 3 }, [29 x %struct.expect_stats_info] zeroinitializer }> } }, { i32, i32, i32, i32, { i32, <{ %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, [28 x %struct.expect_stats_info] }> } } { i32 5, i32 0, i32 1, i32 0, { i32, <{ %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, [28 x %struct.expect_stats_info] }> } { i32 4, <{ %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, [28 x %struct.expect_stats_info] }> <{ %struct.expect_stats_info { %struct.objagg_obj_stats { i32 1, i32 3 }, i8 1, i32 1 }, %struct.expect_stats_info { %struct.objagg_obj_stats { i32 1, i32 1 }, i8 1, i32 7 }, %struct.expect_stats_info { %struct.objagg_obj_stats { i32 1, i32 1 }, i8 0, i32 3 }, %struct.expect_stats_info { %struct.objagg_obj_stats { i32 1, i32 1 }, i8 0, i32 5 }, [28 x %struct.expect_stats_info] zeroinitializer }> } }, { i32, i32, i32, i32, { i32, <{ %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, [28 x %struct.expect_stats_info] }> } } { i32 3, i32 0, i32 0, i32 0, { i32, <{ %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, [28 x %struct.expect_stats_info] }> } { i32 4, <{ %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, [28 x %struct.expect_stats_info] }> <{ %struct.expect_stats_info { %struct.objagg_obj_stats { i32 1, i32 4 }, i8 1, i32 1 }, %struct.expect_stats_info { %struct.objagg_obj_stats { i32 1, i32 1 }, i8 1, i32 7 }, %struct.expect_stats_info { %struct.objagg_obj_stats { i32 2, i32 2 }, i8 0, i32 3 }, %struct.expect_stats_info { %struct.objagg_obj_stats { i32 1, i32 1 }, i8 0, i32 5 }, [28 x %struct.expect_stats_info] zeroinitializer }> } }, { i32, i32, i32, i32, { i32, <{ %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, [28 x %struct.expect_stats_info] }> } } { i32 1, i32 0, i32 0, i32 0, { i32, <{ %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, [28 x %struct.expect_stats_info] }> } { i32 4, <{ %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, [28 x %struct.expect_stats_info] }> <{ %struct.expect_stats_info { %struct.objagg_obj_stats { i32 2, i32 5 }, i8 1, i32 1 }, %struct.expect_stats_info { %struct.objagg_obj_stats { i32 1, i32 1 }, i8 1, i32 7 }, %struct.expect_stats_info { %struct.objagg_obj_stats { i32 2, i32 2 }, i8 0, i32 3 }, %struct.expect_stats_info { %struct.objagg_obj_stats { i32 1, i32 1 }, i8 0, i32 5 }, [28 x %struct.expect_stats_info] zeroinitializer }> } }, { i32, i32, i32, i32, { i32, <{ %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, [27 x %struct.expect_stats_info] }> } } { i32 30, i32 0, i32 0, i32 1, { i32, <{ %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, [27 x %struct.expect_stats_info] }> } { i32 5, <{ %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, [27 x %struct.expect_stats_info] }> <{ %struct.expect_stats_info { %struct.objagg_obj_stats { i32 2, i32 5 }, i8 1, i32 1 }, %struct.expect_stats_info { %struct.objagg_obj_stats { i32 1, i32 1 }, i8 1, i32 7 }, %struct.expect_stats_info { %struct.objagg_obj_stats { i32 1, i32 1 }, i8 1, i32 30 }, %struct.expect_stats_info { %struct.objagg_obj_stats { i32 2, i32 2 }, i8 0, i32 3 }, %struct.expect_stats_info { %struct.objagg_obj_stats { i32 1, i32 1 }, i8 0, i32 5 }, [27 x %struct.expect_stats_info] zeroinitializer }> } }, { i32, i32, i32, i32, { i32, <{ %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, [26 x %struct.expect_stats_info] }> } } { i32 8, i32 0, i32 1, i32 0, { i32, <{ %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, [26 x %struct.expect_stats_info] }> } { i32 6, <{ %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, [26 x %struct.expect_stats_info] }> <{ %struct.expect_stats_info { %struct.objagg_obj_stats { i32 2, i32 5 }, i8 1, i32 1 }, %struct.expect_stats_info { %struct.objagg_obj_stats { i32 1, i32 2 }, i8 1, i32 7 }, %struct.expect_stats_info { %struct.objagg_obj_stats { i32 1, i32 1 }, i8 1, i32 30 }, %struct.expect_stats_info { %struct.objagg_obj_stats { i32 2, i32 2 }, i8 0, i32 3 }, %struct.expect_stats_info { %struct.objagg_obj_stats { i32 1, i32 1 }, i8 0, i32 5 }, %struct.expect_stats_info { %struct.objagg_obj_stats { i32 1, i32 1 }, i8 0, i32 8 }, [26 x %struct.expect_stats_info] zeroinitializer }> } }, { i32, i32, i32, i32, { i32, <{ %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, [26 x %struct.expect_stats_info] }> } } { i32 8, i32 0, i32 0, i32 0, { i32, <{ %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, [26 x %struct.expect_stats_info] }> } { i32 6, <{ %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, [26 x %struct.expect_stats_info] }> <{ %struct.expect_stats_info { %struct.objagg_obj_stats { i32 2, i32 5 }, i8 1, i32 1 }, %struct.expect_stats_info { %struct.objagg_obj_stats { i32 1, i32 3 }, i8 1, i32 7 }, %struct.expect_stats_info { %struct.objagg_obj_stats { i32 1, i32 1 }, i8 1, i32 30 }, %struct.expect_stats_info { %struct.objagg_obj_stats { i32 2, i32 2 }, i8 0, i32 3 }, %struct.expect_stats_info { %struct.objagg_obj_stats { i32 2, i32 2 }, i8 0, i32 8 }, %struct.expect_stats_info { %struct.objagg_obj_stats { i32 1, i32 1 }, i8 0, i32 5 }, [26 x %struct.expect_stats_info] zeroinitializer }> } }, { i32, i32, i32, i32, { i32, <{ %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, [26 x %struct.expect_stats_info] }> } } { i32 3, i32 1, i32 0, i32 0, { i32, <{ %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, [26 x %struct.expect_stats_info] }> } { i32 6, <{ %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, [26 x %struct.expect_stats_info] }> <{ %struct.expect_stats_info { %struct.objagg_obj_stats { i32 2, i32 4 }, i8 1, i32 1 }, %struct.expect_stats_info { %struct.objagg_obj_stats { i32 1, i32 3 }, i8 1, i32 7 }, %struct.expect_stats_info { %struct.objagg_obj_stats { i32 1, i32 1 }, i8 1, i32 30 }, %struct.expect_stats_info { %struct.objagg_obj_stats { i32 2, i32 2 }, i8 0, i32 8 }, %struct.expect_stats_info { %struct.objagg_obj_stats { i32 1, i32 1 }, i8 0, i32 3 }, %struct.expect_stats_info { %struct.objagg_obj_stats { i32 1, i32 1 }, i8 0, i32 5 }, [26 x %struct.expect_stats_info] zeroinitializer }> } }, { i32, i32, i32, i32, { i32, <{ %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, [27 x %struct.expect_stats_info] }> } } { i32 3, i32 1, i32 2, i32 0, { i32, <{ %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, [27 x %struct.expect_stats_info] }> } { i32 5, <{ %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, [27 x %struct.expect_stats_info] }> <{ %struct.expect_stats_info { %struct.objagg_obj_stats { i32 2, i32 3 }, i8 1, i32 1 }, %struct.expect_stats_info { %struct.objagg_obj_stats { i32 1, i32 3 }, i8 1, i32 7 }, %struct.expect_stats_info { %struct.objagg_obj_stats { i32 1, i32 1 }, i8 1, i32 30 }, %struct.expect_stats_info { %struct.objagg_obj_stats { i32 2, i32 2 }, i8 0, i32 8 }, %struct.expect_stats_info { %struct.objagg_obj_stats { i32 1, i32 1 }, i8 0, i32 5 }, [27 x %struct.expect_stats_info] zeroinitializer }> } }, { i32, i32, i32, i32, { i32, <{ %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, [27 x %struct.expect_stats_info] }> } } { i32 1, i32 1, i32 0, i32 0, { i32, <{ %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, [27 x %struct.expect_stats_info] }> } { i32 5, <{ %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, [27 x %struct.expect_stats_info] }> <{ %struct.expect_stats_info { %struct.objagg_obj_stats { i32 1, i32 3 }, i8 1, i32 7 }, %struct.expect_stats_info { %struct.objagg_obj_stats { i32 1, i32 2 }, i8 1, i32 1 }, %struct.expect_stats_info { %struct.objagg_obj_stats { i32 1, i32 1 }, i8 1, i32 30 }, %struct.expect_stats_info { %struct.objagg_obj_stats { i32 2, i32 2 }, i8 0, i32 8 }, %struct.expect_stats_info { %struct.objagg_obj_stats { i32 1, i32 1 }, i8 0, i32 5 }, [27 x %struct.expect_stats_info] zeroinitializer }> } }, { i32, i32, i32, i32, { i32, <{ %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, [27 x %struct.expect_stats_info] }> } } { i32 1, i32 1, i32 0, i32 0, { i32, <{ %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, [27 x %struct.expect_stats_info] }> } { i32 5, <{ %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, [27 x %struct.expect_stats_info] }> <{ %struct.expect_stats_info { %struct.objagg_obj_stats { i32 1, i32 3 }, i8 1, i32 7 }, %struct.expect_stats_info { %struct.objagg_obj_stats { i32 1, i32 1 }, i8 1, i32 30 }, %struct.expect_stats_info { %struct.objagg_obj_stats { i32 0, i32 1 }, i8 1, i32 1 }, %struct.expect_stats_info { %struct.objagg_obj_stats { i32 2, i32 2 }, i8 0, i32 8 }, %struct.expect_stats_info { %struct.objagg_obj_stats { i32 1, i32 1 }, i8 0, i32 5 }, [27 x %struct.expect_stats_info] zeroinitializer }> } }, { i32, i32, i32, i32, { i32, <{ %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, [29 x %struct.expect_stats_info] }> } } { i32 5, i32 1, i32 2, i32 2, { i32, <{ %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, [29 x %struct.expect_stats_info] }> } { i32 3, <{ %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, [29 x %struct.expect_stats_info] }> <{ %struct.expect_stats_info { %struct.objagg_obj_stats { i32 1, i32 3 }, i8 1, i32 7 }, %struct.expect_stats_info { %struct.objagg_obj_stats { i32 1, i32 1 }, i8 1, i32 30 }, %struct.expect_stats_info { %struct.objagg_obj_stats { i32 2, i32 2 }, i8 0, i32 8 }, [29 x %struct.expect_stats_info] zeroinitializer }> } }, { i32, i32, i32, i32, { i32, <{ %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, [28 x %struct.expect_stats_info] }> } } { i32 5, i32 0, i32 0, i32 1, { i32, <{ %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, [28 x %struct.expect_stats_info] }> } { i32 4, <{ %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, [28 x %struct.expect_stats_info] }> <{ %struct.expect_stats_info { %struct.objagg_obj_stats { i32 1, i32 3 }, i8 1, i32 7 }, %struct.expect_stats_info { %struct.objagg_obj_stats { i32 1, i32 1 }, i8 1, i32 30 }, %struct.expect_stats_info { %struct.objagg_obj_stats { i32 1, i32 1 }, i8 1, i32 5 }, %struct.expect_stats_info { %struct.objagg_obj_stats { i32 2, i32 2 }, i8 0, i32 8 }, [28 x %struct.expect_stats_info] zeroinitializer }> } }, { i32, i32, i32, i32, { i32, <{ %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, [27 x %struct.expect_stats_info] }> } } { i32 6, i32 0, i32 1, i32 0, { i32, <{ %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, [27 x %struct.expect_stats_info] }> } { i32 5, <{ %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, [27 x %struct.expect_stats_info] }> <{ %struct.expect_stats_info { %struct.objagg_obj_stats { i32 1, i32 3 }, i8 1, i32 7 }, %struct.expect_stats_info { %struct.objagg_obj_stats { i32 1, i32 2 }, i8 1, i32 5 }, %struct.expect_stats_info { %struct.objagg_obj_stats { i32 1, i32 1 }, i8 1, i32 30 }, %struct.expect_stats_info { %struct.objagg_obj_stats { i32 2, i32 2 }, i8 0, i32 8 }, %struct.expect_stats_info { %struct.objagg_obj_stats { i32 1, i32 1 }, i8 0, i32 6 }, [27 x %struct.expect_stats_info] zeroinitializer }> } }, { i32, i32, i32, i32, { i32, <{ %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, [27 x %struct.expect_stats_info] }> } } { i32 8, i32 0, i32 0, i32 0, { i32, <{ %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, [27 x %struct.expect_stats_info] }> } { i32 5, <{ %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, [27 x %struct.expect_stats_info] }> <{ %struct.expect_stats_info { %struct.objagg_obj_stats { i32 1, i32 4 }, i8 1, i32 7 }, %struct.expect_stats_info { %struct.objagg_obj_stats { i32 1, i32 2 }, i8 1, i32 5 }, %struct.expect_stats_info { %struct.objagg_obj_stats { i32 1, i32 1 }, i8 1, i32 30 }, %struct.expect_stats_info { %struct.objagg_obj_stats { i32 3, i32 3 }, i8 0, i32 8 }, %struct.expect_stats_info { %struct.objagg_obj_stats { i32 1, i32 1 }, i8 0, i32 6 }, [27 x %struct.expect_stats_info] zeroinitializer }> } }, { i32, i32, i32, i32, { i32, <{ %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, [27 x %struct.expect_stats_info] }> } } { i32 8, i32 1, i32 0, i32 0, { i32, <{ %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, [27 x %struct.expect_stats_info] }> } { i32 5, <{ %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, [27 x %struct.expect_stats_info] }> <{ %struct.expect_stats_info { %struct.objagg_obj_stats { i32 1, i32 3 }, i8 1, i32 7 }, %struct.expect_stats_info { %struct.objagg_obj_stats { i32 1, i32 2 }, i8 1, i32 5 }, %struct.expect_stats_info { %struct.objagg_obj_stats { i32 1, i32 1 }, i8 1, i32 30 }, %struct.expect_stats_info { %struct.objagg_obj_stats { i32 2, i32 2 }, i8 0, i32 8 }, %struct.expect_stats_info { %struct.objagg_obj_stats { i32 1, i32 1 }, i8 0, i32 6 }, [27 x %struct.expect_stats_info] zeroinitializer }> } }, { i32, i32, i32, i32, { i32, <{ %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, [27 x %struct.expect_stats_info] }> } } { i32 8, i32 1, i32 0, i32 0, { i32, <{ %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, [27 x %struct.expect_stats_info] }> } { i32 5, <{ %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, [27 x %struct.expect_stats_info] }> <{ %struct.expect_stats_info { %struct.objagg_obj_stats { i32 1, i32 2 }, i8 1, i32 7 }, %struct.expect_stats_info { %struct.objagg_obj_stats { i32 1, i32 2 }, i8 1, i32 5 }, %struct.expect_stats_info { %struct.objagg_obj_stats { i32 1, i32 1 }, i8 1, i32 30 }, %struct.expect_stats_info { %struct.objagg_obj_stats { i32 1, i32 1 }, i8 0, i32 8 }, %struct.expect_stats_info { %struct.objagg_obj_stats { i32 1, i32 1 }, i8 0, i32 6 }, [27 x %struct.expect_stats_info] zeroinitializer }> } }, { i32, i32, i32, i32, { i32, <{ %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, [28 x %struct.expect_stats_info] }> } } { i32 8, i32 1, i32 2, i32 0, { i32, <{ %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, [28 x %struct.expect_stats_info] }> } { i32 4, <{ %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, [28 x %struct.expect_stats_info] }> <{ %struct.expect_stats_info { %struct.objagg_obj_stats { i32 1, i32 2 }, i8 1, i32 5 }, %struct.expect_stats_info { %struct.objagg_obj_stats { i32 1, i32 1 }, i8 1, i32 7 }, %struct.expect_stats_info { %struct.objagg_obj_stats { i32 1, i32 1 }, i8 1, i32 30 }, %struct.expect_stats_info { %struct.objagg_obj_stats { i32 1, i32 1 }, i8 0, i32 6 }, [28 x %struct.expect_stats_info] zeroinitializer }> } }, { i32, i32, i32, i32, { i32, <{ %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, [27 x %struct.expect_stats_info] }> } } { i32 8, i32 0, i32 1, i32 0, { i32, <{ %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, [27 x %struct.expect_stats_info] }> } { i32 5, <{ %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, [27 x %struct.expect_stats_info] }> <{ %struct.expect_stats_info { %struct.objagg_obj_stats { i32 1, i32 3 }, i8 1, i32 5 }, %struct.expect_stats_info { %struct.objagg_obj_stats { i32 1, i32 1 }, i8 1, i32 7 }, %struct.expect_stats_info { %struct.objagg_obj_stats { i32 1, i32 1 }, i8 1, i32 30 }, %struct.expect_stats_info { %struct.objagg_obj_stats { i32 1, i32 1 }, i8 0, i32 6 }, %struct.expect_stats_info { %struct.objagg_obj_stats { i32 1, i32 1 }, i8 0, i32 8 }, [27 x %struct.expect_stats_info] zeroinitializer }> } }, { i32, i32, i32, i32, { i32, <{ %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, [28 x %struct.expect_stats_info] }> } } { i32 7, i32 1, i32 0, i32 2, { i32, <{ %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, [28 x %struct.expect_stats_info] }> } { i32 4, <{ %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, [28 x %struct.expect_stats_info] }> <{ %struct.expect_stats_info { %struct.objagg_obj_stats { i32 1, i32 3 }, i8 1, i32 5 }, %struct.expect_stats_info { %struct.objagg_obj_stats { i32 1, i32 1 }, i8 1, i32 30 }, %struct.expect_stats_info { %struct.objagg_obj_stats { i32 1, i32 1 }, i8 0, i32 6 }, %struct.expect_stats_info { %struct.objagg_obj_stats { i32 1, i32 1 }, i8 0, i32 8 }, [28 x %struct.expect_stats_info] zeroinitializer }> } }, { i32, i32, i32, i32, { i32, <{ %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, [29 x %struct.expect_stats_info] }> } } { i32 30, i32 1, i32 0, i32 2, { i32, <{ %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, [29 x %struct.expect_stats_info] }> } { i32 3, <{ %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, [29 x %struct.expect_stats_info] }> <{ %struct.expect_stats_info { %struct.objagg_obj_stats { i32 1, i32 3 }, i8 1, i32 5 }, %struct.expect_stats_info { %struct.objagg_obj_stats { i32 1, i32 1 }, i8 0, i32 6 }, %struct.expect_stats_info { %struct.objagg_obj_stats { i32 1, i32 1 }, i8 0, i32 8 }, [29 x %struct.expect_stats_info] zeroinitializer }> } }, { i32, i32, i32, i32, { i32, <{ %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, [29 x %struct.expect_stats_info] }> } } { i32 5, i32 1, i32 0, i32 0, { i32, <{ %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, [29 x %struct.expect_stats_info] }> } { i32 3, <{ %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, [29 x %struct.expect_stats_info] }> <{ %struct.expect_stats_info { %struct.objagg_obj_stats { i32 0, i32 2 }, i8 1, i32 5 }, %struct.expect_stats_info { %struct.objagg_obj_stats { i32 1, i32 1 }, i8 0, i32 6 }, %struct.expect_stats_info { %struct.objagg_obj_stats { i32 1, i32 1 }, i8 0, i32 8 }, [29 x %struct.expect_stats_info] zeroinitializer }> } }, { i32, i32, i32, i32, { i32, <{ %struct.expect_stats_info, %struct.expect_stats_info, [30 x %struct.expect_stats_info] }> } } { i32 6, i32 1, i32 2, i32 0, { i32, <{ %struct.expect_stats_info, %struct.expect_stats_info, [30 x %struct.expect_stats_info] }> } { i32 2, <{ %struct.expect_stats_info, %struct.expect_stats_info, [30 x %struct.expect_stats_info] }> <{ %struct.expect_stats_info { %struct.objagg_obj_stats { i32 0, i32 1 }, i8 1, i32 5 }, %struct.expect_stats_info { %struct.objagg_obj_stats { i32 1, i32 1 }, i8 0, i32 8 }, [30 x %struct.expect_stats_info] zeroinitializer }> } }, %struct.action_item { i32 8, i32 1, i32 2, i32 2, %struct.expect_stats zeroinitializer } }>, [3480 x i8] zeroinitializer }, align 32
@test_hints_case._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.2, i32 937, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013test_objagg: Stats: %s\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"test_hints_case\00", [16 x i8] zeroinitializer }, align 32
@test_hints_case._entry_ptr = internal global ptr @test_hints_case._entry, section ".printk_index", align 4
@test_hints_case._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.61, ptr @.str.2, i32 951, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013test_objagg: Hints stats: %s\0A\00", [32 x i8] zeroinitializer }, align 32
@test_hints_case._entry_ptr.64 = internal global ptr @test_hints_case._entry.62, section ".printk_index", align 4
@test_hints_case._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.61, ptr @.str.2, i32 972, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013test_objagg: Stats2: %s\0A\00", [37 x i8] zeroinitializer }, align 32
@test_hints_case._entry_ptr.67 = internal global ptr @test_hints_case._entry.65, section ".printk_index", align 4
@__pr_debug_stats.__UNIQUE_ID_ddebug173 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.68, ptr @.str.69, ptr @.str.2, ptr @.str.70, i8 0, i8 -39, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"test_objagg\00", [20 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"__pr_debug_stats\00", [47 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Stat index %d key %u: u %d, d %d, %s\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"test_objagg: Stat index %d key %u: u %d, d %d, %s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"root\00", [27 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"noroot\00", [25 x i8] zeroinitializer }, align 32
@hints_case_key_ids = internal constant { [12 x i32], [48 x i8] } { [12 x i32] [i32 1, i32 7, i32 3, i32 5, i32 3, i32 1, i32 30, i32 8, i32 8, i32 5, i32 6, i32 8], [48 x i8] zeroinitializer }, align 32
@hints_case = internal constant { { ptr, i32, { i32, <{ %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, [25 x %struct.expect_stats_info] }> }, { i32, <{ %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, [25 x %struct.expect_stats_info] }> } }, [272 x i8] } { { ptr, i32, { i32, <{ %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, [25 x %struct.expect_stats_info] }> }, { i32, <{ %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, [25 x %struct.expect_stats_info] }> } } { ptr @hints_case_key_ids, i32 12, { i32, <{ %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, [25 x %struct.expect_stats_info] }> } { i32 7, <{ %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, [25 x %struct.expect_stats_info] }> <{ %struct.expect_stats_info { %struct.objagg_obj_stats { i32 2, i32 7 }, i8 1, i32 1 }, %struct.expect_stats_info { %struct.objagg_obj_stats { i32 1, i32 4 }, i8 1, i32 7 }, %struct.expect_stats_info { %struct.objagg_obj_stats { i32 1, i32 1 }, i8 1, i32 30 }, %struct.expect_stats_info { %struct.objagg_obj_stats { i32 3, i32 3 }, i8 0, i32 8 }, %struct.expect_stats_info { %struct.objagg_obj_stats { i32 2, i32 2 }, i8 0, i32 3 }, %struct.expect_stats_info { %struct.objagg_obj_stats { i32 2, i32 2 }, i8 0, i32 5 }, %struct.expect_stats_info { %struct.objagg_obj_stats { i32 1, i32 1 }, i8 0, i32 6 }, [25 x %struct.expect_stats_info] zeroinitializer }> }, { i32, <{ %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, [25 x %struct.expect_stats_info] }> } { i32 7, <{ %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, [25 x %struct.expect_stats_info] }> <{ %struct.expect_stats_info { %struct.objagg_obj_stats { i32 2, i32 9 }, i8 1, i32 3 }, %struct.expect_stats_info { %struct.objagg_obj_stats { i32 2, i32 2 }, i8 1, i32 1 }, %struct.expect_stats_info { %struct.objagg_obj_stats { i32 1, i32 1 }, i8 1, i32 30 }, %struct.expect_stats_info { %struct.objagg_obj_stats { i32 3, i32 3 }, i8 0, i32 8 }, %struct.expect_stats_info { %struct.objagg_obj_stats { i32 2, i32 2 }, i8 0, i32 5 }, %struct.expect_stats_info { %struct.objagg_obj_stats { i32 1, i32 1 }, i8 0, i32 6 }, %struct.expect_stats_info { %struct.objagg_obj_stats { i32 1, i32 1 }, i8 0, i32 7 }, [25 x %struct.expect_stats_info] zeroinitializer }> } }, [272 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.75 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.76 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.77 = private unnamed_addr constant [12 x i8] c"nodelta_ops\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 295, i32 32 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 236, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 165, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 170, i32 4 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 176, i32 4 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 184, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 190, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 57, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 63, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 255, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 263, i32 4 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 268, i32 4 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 213, i32 4 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 218, i32 4 }
@___asan_gen_.173 = private unnamed_addr constant [10 x i8] c"delta_ops\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 374, i32 32 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 793, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 571, i32 4 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 580, i32 4 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 589, i32 4 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 599, i32 4 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 608, i32 4 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 617, i32 4 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 749, i32 13 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 717, i32 13 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 647, i32 14 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 653, i32 14 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 659, i32 14 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 673, i32 14 }
@___asan_gen_.242 = private unnamed_addr constant [13 x i8] c"action_items\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 431, i32 33 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 937, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 951, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 972, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 865, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant [19 x i8] c"hints_case_key_ids\00", align 1
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 843, i32 27 }
@___asan_gen_.287 = private unnamed_addr constant [11 x i8] c"hints_case\00", align 1
@___asan_gen_.288 = private constant [21 x i8] c"../lib/test_objagg.c\00", align 1
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 847, i32 32 }
@llvm.compiler.used = appending global [101 x ptr] [ptr @__UNIQUE_ID_author177, ptr @__UNIQUE_ID_description178, ptr @__UNIQUE_ID_file175, ptr @__UNIQUE_ID_license176, ptr @__exitcall_test_objagg_exit, ptr @__initcall__kmod_test_objagg__174_1017_test_objagg_init6, ptr @check_expect._entry, ptr @check_expect._entry.38, ptr @check_expect._entry.41, ptr @check_expect._entry.44, ptr @check_expect._entry.47, ptr @check_expect._entry.50, ptr @check_expect._entry_ptr, ptr @check_expect._entry_ptr.40, ptr @check_expect._entry_ptr.43, ptr @check_expect._entry_ptr.46, ptr @check_expect._entry_ptr.49, ptr @check_expect._entry_ptr.52, ptr @check_stats_nodelta._entry, ptr @check_stats_nodelta._entry.23, ptr @check_stats_nodelta._entry.26, ptr @check_stats_nodelta._entry_ptr, ptr @check_stats_nodelta._entry_ptr.25, ptr @check_stats_nodelta._entry_ptr.28, ptr @check_stats_zero._entry, ptr @check_stats_zero._entry_ptr, ptr @test_delta_action_item._entry, ptr @test_delta_action_item._entry_ptr, ptr @test_hints_case._entry, ptr @test_hints_case._entry.62, ptr @test_hints_case._entry.65, ptr @test_hints_case._entry_ptr, ptr @test_hints_case._entry_ptr.64, ptr @test_hints_case._entry_ptr.67, ptr @test_nodelta_obj_get._entry, ptr @test_nodelta_obj_get._entry.11, ptr @test_nodelta_obj_get._entry.14, ptr @test_nodelta_obj_get._entry.5, ptr @test_nodelta_obj_get._entry.8, ptr @test_nodelta_obj_get._entry_ptr, ptr @test_nodelta_obj_get._entry_ptr.10, ptr @test_nodelta_obj_get._entry_ptr.13, ptr @test_nodelta_obj_get._entry_ptr.16, ptr @test_nodelta_obj_get._entry_ptr.7, ptr @test_nodelta_obj_put._entry, ptr @test_nodelta_obj_put._entry.31, ptr @test_nodelta_obj_put._entry_ptr, ptr @test_nodelta_obj_put._entry_ptr.33, ptr @test_objagg_exit, ptr @world_obj_get._entry, ptr @world_obj_get._entry.18, ptr @world_obj_get._entry_ptr, ptr @world_obj_get._entry_ptr.20, ptr @nodelta_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @delta_ops, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.42, ptr @.str.45, ptr @.str.48, ptr @.str.51, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @action_items, ptr @.str.60, ptr @.str.61, ptr @.str.63, ptr @.str.66, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @hints_case_key_ids, ptr @hints_case], section "llvm.metadata"
@0 = internal global [71 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nodelta_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_stats_zero._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_nodelta_obj_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_nodelta_obj_get._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_nodelta_obj_get._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_nodelta_obj_get._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_nodelta_obj_get._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @world_obj_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @world_obj_get._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_stats_nodelta._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_stats_nodelta._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_stats_nodelta._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_nodelta_obj_put._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_nodelta_obj_put._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delta_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_delta_action_item._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_expect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_expect._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_expect._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_expect._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_expect._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_expect._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @action_items to i32), i32 13832, i32 17312, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_hints_case._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_hints_case._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_hints_case._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hints_case_key_ids to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hints_case to i32), i32 1040, i32 1312, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @test_objagg_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @test_objagg_init() #1 section ".init.text" align 64 {
entry:
  %errmsg.i = alloca ptr, align 4
  %key.i445.i = alloca %struct.tokey, align 4
  %key.i425.i = alloca %struct.tokey, align 4
  %key.i405.i = alloca %struct.tokey, align 4
  %key.i385.i = alloca %struct.tokey, align 4
  %key.i365.i = alloca %struct.tokey, align 4
  %key.i345.i = alloca %struct.tokey, align 4
  %key.i325.i = alloca %struct.tokey, align 4
  %key.i305.i = alloca %struct.tokey, align 4
  %key.i285.i = alloca %struct.tokey, align 4
  %key.i265.i = alloca %struct.tokey, align 4
  %key.i245.i = alloca %struct.tokey, align 4
  %key.i225.i = alloca %struct.tokey, align 4
  %key.i205.i = alloca %struct.tokey, align 4
  %key.i185.i = alloca %struct.tokey, align 4
  %key.i165.i = alloca %struct.tokey, align 4
  %key.i145.i = alloca %struct.tokey, align 4
  %key.i125.i = alloca %struct.tokey, align 4
  %key.i105.i = alloca %struct.tokey, align 4
  %key.i85.i = alloca %struct.tokey, align 4
  %key.i65.i = alloca %struct.tokey, align 4
  %key.i45.i = alloca %struct.tokey, align 4
  %key.i25.i = alloca %struct.tokey, align 4
  %key.i5.i = alloca %struct.tokey, align 4
  %key.i.i = alloca %struct.tokey, align 4
  %world2.i.i = alloca %struct.world, align 4
  %world.i.i = alloca %struct.world, align 4
  %errmsg.i.i = alloca ptr, align 4
  %world.i9 = alloca %struct.world, align 4
  %world.i = alloca %struct.world, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 392, ptr nonnull %world.i) #12
  %0 = call ptr @memset(ptr %world.i, i32 0, i32 392)
  %call.i = call ptr @objagg_create(ptr noundef nonnull @nodelta_ops, ptr noundef null, ptr noundef nonnull %world.i) #12
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %1 = ptrtoint ptr %call.i to i32
  br label %test_nodelta.exit

if.end.i:                                         ; preds = %entry
  %call.i.i = call ptr @objagg_stats_get(ptr noundef %call.i) #12
  %cmp.i.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %call.i.i to i32
  br label %check_stats_zero.exit.i

if.end.i.i:                                       ; preds = %if.end.i
  %stats_info_count.i.i = getelementptr inbounds %struct.objagg_stats, ptr %call.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %stats_info_count.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %stats_info_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.not.i.i = icmp eq i32 %4, 0
  br i1 %cmp.not.i.i, label %if.end.i.i.if.end5.i.i_crit_edge, label %do.end.i.i

if.end.i.i.if.end5.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i.i

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call4.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #13
  br label %if.end5.i.i

if.end5.i.i:                                      ; preds = %do.end.i.i, %if.end.i.i.if.end5.i.i_crit_edge
  %err.0.i.i = phi i32 [ -22, %do.end.i.i ], [ 0, %if.end.i.i.if.end5.i.i_crit_edge ]
  call void @objagg_stats_put(ptr noundef %call.i.i) #12
  br label %check_stats_zero.exit.i

check_stats_zero.exit.i:                          ; preds = %if.end5.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %2, %if.then.i.i ], [ %err.0.i.i, %if.end5.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %tobool.not.i = icmp eq i32 %retval.0.i.i, 0
  br i1 %tobool.not.i, label %for.body.i.preheader, label %check_stats_zero.exit.i.err_stats_second_zero.i_crit_edge

check_stats_zero.exit.i.err_stats_second_zero.i_crit_edge: ; preds = %check_stats_zero.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_stats_second_zero.i

for.body.i.preheader:                             ; preds = %check_stats_zero.exit.i
  %next_root_buf.i = getelementptr inbounds %struct.world, ptr %world.i, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.i.preheader
  %i.0137.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %5 = ptrtoint ptr %world.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %world.i, align 4
  call void @prandom_bytes(ptr noundef %next_root_buf.i, i32 noundef 128) #12
  %call.i35 = call fastcc ptr @world_obj_get(ptr noundef nonnull %world.i, ptr noundef %call.i, i32 noundef %i.0137.i) #12
  %cmp.i.i36 = icmp ugt ptr %call.i35, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i36, label %test_nodelta_obj_get.exit, label %if.then7.i

if.then7.i:                                       ; preds = %for.body.i
  %7 = ptrtoint ptr %world.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %world.i, align 4
  %add.i = add i32 %6, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %add.i)
  %cmp.not.i40 = icmp eq i32 %8, %add.i
  br i1 %cmp.not.i40, label %if.end25.i, label %if.then7.i.test_nodelta_obj_get.exit.thread60_crit_edge

if.then7.i.test_nodelta_obj_get.exit.thread60_crit_edge: ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %test_nodelta_obj_get.exit.thread60

if.end25.i:                                       ; preds = %if.then7.i
  %call26.i = call ptr @objagg_obj_root_priv(ptr noundef %call.i35) #12
  %9 = ptrtoint ptr %call26.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %call26.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %i.0137.i)
  %cmp27.not.i = icmp eq i32 %10, %i.0137.i
  br i1 %cmp27.not.i, label %land.lhs.true.critedge.i, label %if.end25.i.test_nodelta_obj_get.exit.thread60_crit_edge

if.end25.i.test_nodelta_obj_get.exit.thread60_crit_edge: ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %test_nodelta_obj_get.exit.thread60

land.lhs.true.critedge.i:                         ; preds = %if.end25.i
  %buf.i = getelementptr inbounds %struct.root, ptr %call26.i, i32 0, i32 1
  %bcmp.i = call i32 @bcmp(ptr noundef dereferenceable(128) %next_root_buf.i, ptr noundef dereferenceable(128) %buf.i, i32 128) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool40.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool40.not.i, label %for.inc.i, label %land.lhs.true.critedge.i.test_nodelta_obj_get.exit.thread60_crit_edge

land.lhs.true.critedge.i.test_nodelta_obj_get.exit.thread60_crit_edge: ; preds = %land.lhs.true.critedge.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %test_nodelta_obj_get.exit.thread60

test_nodelta_obj_get.exit.thread60:               ; preds = %land.lhs.true.critedge.i.test_nodelta_obj_get.exit.thread60_crit_edge, %if.end25.i.test_nodelta_obj_get.exit.thread60_crit_edge, %if.then7.i.test_nodelta_obj_get.exit.thread60_crit_edge
  %.str.12.sink.i = phi ptr [ @.str.6, %if.then7.i.test_nodelta_obj_get.exit.thread60_crit_edge ], [ @.str.12, %if.end25.i.test_nodelta_obj_get.exit.thread60_crit_edge ], [ @.str.15, %land.lhs.true.critedge.i.test_nodelta_obj_get.exit.thread60_crit_edge ]
  %call33.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.12.sink.i, i32 noundef %i.0137.i) #13
  call void @objagg_obj_put(ptr noundef %call.i, ptr noundef %call.i35) #12
  br label %err_obj_second_put.i

test_nodelta_obj_get.exit:                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %call3.i38 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %i.0137.i) #13
  %11 = ptrtoint ptr %call.i35 to i32
  br label %err_obj_second_put.i

for.inc.i:                                        ; preds = %land.lhs.true.critedge.i
  %inc.i = add nuw nsw i32 %i.0137.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %for.inc.i.for.body12.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.for.body12.i_crit_edge:                 ; preds = %for.inc.i
  br label %for.body12.i

for.body12.i:                                     ; preds = %for.inc17.i.for.body12.i_crit_edge, %for.inc.i.for.body12.i_crit_edge
  %i.1138.i = phi i32 [ %inc18.i, %for.inc17.i.for.body12.i_crit_edge ], [ 0, %for.inc.i.for.body12.i_crit_edge ]
  %12 = ptrtoint ptr %world.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %world.i, align 4
  %call70.i.i = call fastcc ptr @world_obj_get(ptr noundef nonnull %world.i, ptr noundef %call.i, i32 noundef %i.1138.i) #12
  %cmp.i71.i.i = icmp ugt ptr %call70.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i71.i.i, label %test_nodelta_obj_get.exit.i, label %if.else.i.i

if.else.i.i:                                      ; preds = %for.body12.i
  %14 = ptrtoint ptr %world.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %world.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %13)
  %cmp17.not.i.i = icmp eq i32 %15, %13
  br i1 %cmp17.not.i.i, label %if.end25.thread.i.i, label %if.else.i.i.test_nodelta_obj_get.exit.thread123.i_crit_edge

if.else.i.i.test_nodelta_obj_get.exit.thread123.i_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %test_nodelta_obj_get.exit.thread123.i

if.end25.thread.i.i:                              ; preds = %if.else.i.i
  %call2679.i.i = call ptr @objagg_obj_root_priv(ptr noundef %call70.i.i) #12
  %16 = ptrtoint ptr %call2679.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %call2679.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %i.1138.i)
  %cmp27.not80.i.i = icmp eq i32 %17, %i.1138.i
  br i1 %cmp27.not80.i.i, label %for.inc17.i, label %if.end25.thread.i.i.test_nodelta_obj_get.exit.thread123.i_crit_edge

if.end25.thread.i.i.test_nodelta_obj_get.exit.thread123.i_crit_edge: ; preds = %if.end25.thread.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %test_nodelta_obj_get.exit.thread123.i

test_nodelta_obj_get.exit.thread123.i:            ; preds = %if.end25.thread.i.i.test_nodelta_obj_get.exit.thread123.i_crit_edge, %if.else.i.i.test_nodelta_obj_get.exit.thread123.i_crit_edge
  %.str.12.sink.i.i = phi ptr [ @.str.9, %if.else.i.i.test_nodelta_obj_get.exit.thread123.i_crit_edge ], [ @.str.12, %if.end25.thread.i.i.test_nodelta_obj_get.exit.thread123.i_crit_edge ]
  %call33.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.12.sink.i.i, i32 noundef %i.1138.i) #13
  call void @objagg_obj_put(ptr noundef %call.i, ptr noundef %call70.i.i) #12
  br label %err_obj_second_get.i

test_nodelta_obj_get.exit.i:                      ; preds = %for.body12.i
  call void @__sanitizer_cov_trace_pc() #11
  %call3.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %i.1138.i) #13
  %18 = ptrtoint ptr %call70.i.i to i32
  br label %err_obj_second_get.i

for.inc17.i:                                      ; preds = %if.end25.thread.i.i
  %inc18.i = add nuw nsw i32 %i.1138.i, 1
  %exitcond156.not.i = icmp eq i32 %inc18.i, 32
  br i1 %exitcond156.not.i, label %for.end19.i, label %for.inc17.i.for.body12.i_crit_edge

for.inc17.i.for.body12.i_crit_edge:               ; preds = %for.inc17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body12.i

for.end19.i:                                      ; preds = %for.inc17.i
  %call.i104.i = call ptr @objagg_stats_get(ptr noundef %call.i) #12
  %cmp.i.i105.i = icmp ugt ptr %call.i104.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i105.i, label %if.then.i106.i, label %if.end.i109.i

if.then.i106.i:                                   ; preds = %for.end19.i
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %call.i104.i to i32
  br label %check_stats_nodelta.exit.i

if.end.i109.i:                                    ; preds = %for.end19.i
  %stats_info_count.i107.i = getelementptr inbounds %struct.objagg_stats, ptr %call.i104.i, i32 0, i32 1
  %20 = ptrtoint ptr %stats_info_count.i107.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %stats_info_count.i107.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %21)
  %cmp.not.i108.i = icmp eq i32 %21, 32
  br i1 %cmp.not.i108.i, label %if.end.i109.i.for.body.i.i_crit_edge, label %do.end.i110.i

if.end.i109.i.for.body.i.i_crit_edge:             ; preds = %if.end.i109.i
  br label %for.body.i.i

do.end.i110.i:                                    ; preds = %if.end.i109.i
  call void @__sanitizer_cov_trace_pc() #11
  %call5.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef 32, i32 noundef %21) #13
  br label %stats_put.i.i

for.cond.i.i:                                     ; preds = %if.end17.i.i
  %inc.i.i = add nuw nsw i32 %i.042.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 32
  br i1 %exitcond.not.i.i, label %for.cond.i.i.stats_put.i.i_crit_edge, label %for.cond.i.i.for.body.i.i_crit_edge

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.cond.i.i.stats_put.i.i_crit_edge:             ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %stats_put.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %if.end.i109.i.for.body.i.i_crit_edge
  %i.042.i.i = phi i32 [ %inc.i.i, %for.cond.i.i.for.body.i.i_crit_edge ], [ 0, %if.end.i109.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.objagg_stats, ptr %call.i104.i, i32 0, i32 2, i32 %i.042.i.i
  %22 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %23)
  %cmp10.not.i.i = icmp eq i32 %23, 2
  br i1 %cmp10.not.i.i, label %if.end17.i.i, label %do.end14.i.i

do.end14.i.i:                                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call16.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #13
  br label %stats_put.i.i

if.end17.i.i:                                     ; preds = %for.body.i.i
  %delta_user_count.i.i = getelementptr inbounds %struct.objagg_obj_stats, ptr %arrayidx.i.i, i32 0, i32 1
  %24 = ptrtoint ptr %delta_user_count.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %delta_user_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %25)
  %cmp21.not.i.i = icmp eq i32 %25, 2
  br i1 %cmp21.not.i.i, label %for.cond.i.i, label %do.end25.i.i

do.end25.i.i:                                     ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call27.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #13
  br label %stats_put.i.i

stats_put.i.i:                                    ; preds = %do.end25.i.i, %do.end14.i.i, %for.cond.i.i.stats_put.i.i_crit_edge, %do.end.i110.i
  %err.0.i111.i = phi i32 [ -22, %do.end.i110.i ], [ -22, %do.end14.i.i ], [ -22, %do.end25.i.i ], [ 0, %for.cond.i.i.stats_put.i.i_crit_edge ]
  call void @objagg_stats_put(ptr noundef %call.i104.i) #12
  br label %check_stats_nodelta.exit.i

check_stats_nodelta.exit.i:                       ; preds = %stats_put.i.i, %if.then.i106.i
  %retval.0.i112.i = phi i32 [ %19, %if.then.i106.i ], [ %err.0.i111.i, %stats_put.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i112.i)
  %tobool21.not.i = icmp eq i32 %retval.0.i112.i, 0
  br i1 %tobool21.not.i, label %check_stats_nodelta.exit.i.for.body26.i_crit_edge, label %check_stats_nodelta.exit.i.for.body50.preheader.i_crit_edge

check_stats_nodelta.exit.i.for.body50.preheader.i_crit_edge: ; preds = %check_stats_nodelta.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body50.preheader.i

check_stats_nodelta.exit.i.for.body26.i_crit_edge: ; preds = %check_stats_nodelta.exit.i
  br label %for.body26.i

for.body26.i:                                     ; preds = %for.inc31.i.for.body26.i_crit_edge, %check_stats_nodelta.exit.i.for.body26.i_crit_edge
  %i.2139.i = phi i32 [ %dec.i, %for.inc31.i.for.body26.i_crit_edge ], [ 31, %check_stats_nodelta.exit.i.for.body26.i_crit_edge ]
  %26 = ptrtoint ptr %world.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %world.i, align 4
  call fastcc void @world_obj_put(ptr noundef nonnull %world.i, ptr noundef %call.i, i32 noundef %i.2139.i) #12
  %28 = ptrtoint ptr %world.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %world.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %27)
  %cmp4.not.i.i = icmp eq i32 %29, %27
  br i1 %cmp4.not.i.i, label %for.inc31.i, label %test_nodelta_obj_put.exit.i

test_nodelta_obj_put.exit.i:                      ; preds = %for.body26.i
  call void @__sanitizer_cov_trace_pc() #11
  %call10.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, i32 noundef %i.2139.i) #13
  br label %err_obj_second_get.i

for.inc31.i:                                      ; preds = %for.body26.i
  %dec.i = add nsw i32 %i.2139.i, -1
  %cmp25.not.i = icmp eq i32 %i.2139.i, 0
  br i1 %cmp25.not.i, label %for.inc31.i.for.body35.i_crit_edge, label %for.inc31.i.for.body26.i_crit_edge

for.inc31.i.for.body26.i_crit_edge:               ; preds = %for.inc31.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body26.i

for.inc31.i.for.body35.i_crit_edge:               ; preds = %for.inc31.i
  br label %for.body35.i

for.body35.i:                                     ; preds = %for.inc40.i.for.body35.i_crit_edge, %for.inc31.i.for.body35.i_crit_edge
  %i.3140.i = phi i32 [ %dec41.i, %for.inc40.i.for.body35.i_crit_edge ], [ 31, %for.inc31.i.for.body35.i_crit_edge ]
  %30 = ptrtoint ptr %world.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %world.i, align 4
  call fastcc void @world_obj_put(ptr noundef nonnull %world.i, ptr noundef %call.i, i32 noundef %i.3140.i) #12
  %32 = ptrtoint ptr %world.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %world.i, align 4
  %sub.i.i = add i32 %31, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %sub.i.i)
  %cmp.not.i115.i = icmp eq i32 %33, %sub.i.i
  br i1 %cmp.not.i115.i, label %for.inc40.i, label %test_nodelta_obj_put.exit120.i

test_nodelta_obj_put.exit120.i:                   ; preds = %for.body35.i
  call void @__sanitizer_cov_trace_pc() #11
  %call10.i117.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %i.3140.i) #13
  br label %err_obj_second_put.i

for.inc40.i:                                      ; preds = %for.body35.i
  %dec41.i = add nsw i32 %i.3140.i, -1
  %cmp34.not.i = icmp eq i32 %i.3140.i, 0
  br i1 %cmp34.not.i, label %for.end42.i, label %for.inc40.i.for.body35.i_crit_edge

for.inc40.i.for.body35.i_crit_edge:               ; preds = %for.inc40.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body35.i

for.end42.i:                                      ; preds = %for.inc40.i
  %call.i29 = call ptr @objagg_stats_get(ptr noundef %call.i) #12
  %cmp.i.i30 = icmp ugt ptr %call.i29, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i30, label %if.then.i31, label %if.end.i32

if.then.i31:                                      ; preds = %for.end42.i
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %call.i29 to i32
  br label %check_stats_zero.exit

if.end.i32:                                       ; preds = %for.end42.i
  %stats_info_count.i = getelementptr inbounds %struct.objagg_stats, ptr %call.i29, i32 0, i32 1
  %35 = ptrtoint ptr %stats_info_count.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %stats_info_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp.not.i = icmp eq i32 %36, 0
  br i1 %cmp.not.i, label %if.end.i32.if.end5.i_crit_edge, label %do.end.i

if.end.i32.if.end5.i_crit_edge:                   ; preds = %if.end.i32
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i

do.end.i:                                         ; preds = %if.end.i32
  call void @__sanitizer_cov_trace_pc() #11
  %call4.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #13
  br label %if.end5.i

if.end5.i:                                        ; preds = %do.end.i, %if.end.i32.if.end5.i_crit_edge
  %err.0.i33 = phi i32 [ -22, %do.end.i ], [ 0, %if.end.i32.if.end5.i_crit_edge ]
  call void @objagg_stats_put(ptr noundef %call.i29) #12
  br label %check_stats_zero.exit

check_stats_zero.exit:                            ; preds = %if.end5.i, %if.then.i31
  %retval.0.i34 = phi i32 [ %34, %if.then.i31 ], [ %err.0.i33, %if.end5.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i34)
  %tobool44.not.i = icmp eq i32 %retval.0.i34, 0
  br i1 %tobool44.not.i, label %test_nodelta.exit.thread, label %check_stats_zero.exit.err_stats_second_zero.i_crit_edge

check_stats_zero.exit.err_stats_second_zero.i_crit_edge: ; preds = %check_stats_zero.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_stats_second_zero.i

test_nodelta.exit.thread:                         ; preds = %check_stats_zero.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @objagg_destroy(ptr noundef %call.i) #12
  call void @llvm.lifetime.end.p0(i64 392, ptr nonnull %world.i) #12
  br label %if.end

err_obj_second_get.i:                             ; preds = %test_nodelta_obj_put.exit.i, %test_nodelta_obj_get.exit.i, %test_nodelta_obj_get.exit.thread123.i
  %i.4.i = phi i32 [ %i.1138.i, %test_nodelta_obj_get.exit.i ], [ %i.2139.i, %test_nodelta_obj_put.exit.i ], [ %i.1138.i, %test_nodelta_obj_get.exit.thread123.i ]
  %err.0.i = phi i32 [ %18, %test_nodelta_obj_get.exit.i ], [ -22, %test_nodelta_obj_put.exit.i ], [ -22, %test_nodelta_obj_get.exit.thread123.i ]
  %i.5141.i = add i32 %i.4.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.5141.i)
  %cmp49142.i = icmp sgt i32 %i.5141.i, -1
  br i1 %cmp49142.i, label %err_obj_second_get.i.for.body50.preheader.i_crit_edge, label %err_obj_second_get.i.for.body57.preheader.i_crit_edge

err_obj_second_get.i.for.body57.preheader.i_crit_edge: ; preds = %err_obj_second_get.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body57.preheader.i

err_obj_second_get.i.for.body50.preheader.i_crit_edge: ; preds = %err_obj_second_get.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body50.preheader.i

for.body50.preheader.i:                           ; preds = %err_obj_second_get.i.for.body50.preheader.i_crit_edge, %check_stats_nodelta.exit.i.for.body50.preheader.i_crit_edge
  %i.5141162.i = phi i32 [ %i.5141.i, %err_obj_second_get.i.for.body50.preheader.i_crit_edge ], [ 31, %check_stats_nodelta.exit.i.for.body50.preheader.i_crit_edge ]
  %err.0161.i = phi i32 [ %err.0.i, %err_obj_second_get.i.for.body50.preheader.i_crit_edge ], [ %retval.0.i112.i, %check_stats_nodelta.exit.i.for.body50.preheader.i_crit_edge ]
  br label %for.body50.i

for.body50.i:                                     ; preds = %for.body50.i.for.body50.i_crit_edge, %for.body50.preheader.i
  %i.5143.i = phi i32 [ %i.5.i, %for.body50.i.for.body50.i_crit_edge ], [ %i.5141162.i, %for.body50.preheader.i ]
  call fastcc void @world_obj_put(ptr noundef nonnull %world.i, ptr noundef %call.i, i32 noundef %i.5143.i) #12
  %i.5.i = add nsw i32 %i.5143.i, -1
  %cmp49.not.i = icmp eq i32 %i.5143.i, 0
  br i1 %cmp49.not.i, label %for.body50.i.for.body57.preheader.i_crit_edge, label %for.body50.i.for.body50.i_crit_edge

for.body50.i.for.body50.i_crit_edge:              ; preds = %for.body50.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body50.i

for.body50.i.for.body57.preheader.i_crit_edge:    ; preds = %for.body50.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body57.preheader.i

err_obj_second_put.i:                             ; preds = %test_nodelta_obj_put.exit120.i, %test_nodelta_obj_get.exit, %test_nodelta_obj_get.exit.thread60
  %i.6.i = phi i32 [ %i.3140.i, %test_nodelta_obj_put.exit120.i ], [ %i.0137.i, %test_nodelta_obj_get.exit ], [ %i.0137.i, %test_nodelta_obj_get.exit.thread60 ]
  %err.1.i = phi i32 [ -22, %test_nodelta_obj_put.exit120.i ], [ %11, %test_nodelta_obj_get.exit ], [ -22, %test_nodelta_obj_get.exit.thread60 ]
  %i.7144.i = add i32 %i.6.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.7144.i)
  %cmp56145.i = icmp sgt i32 %i.7144.i, -1
  br i1 %cmp56145.i, label %err_obj_second_put.i.for.body57.preheader.i_crit_edge, label %err_obj_second_put.i.err_stats_second_zero.i_crit_edge

err_obj_second_put.i.err_stats_second_zero.i_crit_edge: ; preds = %err_obj_second_put.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_stats_second_zero.i

err_obj_second_put.i.for.body57.preheader.i_crit_edge: ; preds = %err_obj_second_put.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body57.preheader.i

for.body57.preheader.i:                           ; preds = %err_obj_second_put.i.for.body57.preheader.i_crit_edge, %for.body50.i.for.body57.preheader.i_crit_edge, %err_obj_second_get.i.for.body57.preheader.i_crit_edge
  %i.7144168.i = phi i32 [ %i.7144.i, %err_obj_second_put.i.for.body57.preheader.i_crit_edge ], [ 31, %err_obj_second_get.i.for.body57.preheader.i_crit_edge ], [ 31, %for.body50.i.for.body57.preheader.i_crit_edge ]
  %err.1167.i = phi i32 [ %err.1.i, %err_obj_second_put.i.for.body57.preheader.i_crit_edge ], [ %err.0.i, %err_obj_second_get.i.for.body57.preheader.i_crit_edge ], [ %err.0161.i, %for.body50.i.for.body57.preheader.i_crit_edge ]
  br label %for.body57.i

for.body57.i:                                     ; preds = %for.body57.i.for.body57.i_crit_edge, %for.body57.preheader.i
  %i.7146.i = phi i32 [ %i.7.i, %for.body57.i.for.body57.i_crit_edge ], [ %i.7144168.i, %for.body57.preheader.i ]
  call fastcc void @world_obj_put(ptr noundef nonnull %world.i, ptr noundef %call.i, i32 noundef %i.7146.i) #12
  %i.7.i = add nsw i32 %i.7146.i, -1
  %cmp56.not.i = icmp eq i32 %i.7146.i, 0
  br i1 %cmp56.not.i, label %for.body57.i.err_stats_second_zero.i_crit_edge, label %for.body57.i.for.body57.i_crit_edge

for.body57.i.for.body57.i_crit_edge:              ; preds = %for.body57.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body57.i

for.body57.i.err_stats_second_zero.i_crit_edge:   ; preds = %for.body57.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_stats_second_zero.i

err_stats_second_zero.i:                          ; preds = %for.body57.i.err_stats_second_zero.i_crit_edge, %err_obj_second_put.i.err_stats_second_zero.i_crit_edge, %check_stats_zero.exit.err_stats_second_zero.i_crit_edge, %check_stats_zero.exit.i.err_stats_second_zero.i_crit_edge
  %err.2.i = phi i32 [ %retval.0.i.i, %check_stats_zero.exit.i.err_stats_second_zero.i_crit_edge ], [ %retval.0.i34, %check_stats_zero.exit.err_stats_second_zero.i_crit_edge ], [ %err.1.i, %err_obj_second_put.i.err_stats_second_zero.i_crit_edge ], [ %err.1167.i, %for.body57.i.err_stats_second_zero.i_crit_edge ]
  call void @objagg_destroy(ptr noundef %call.i) #12
  br label %test_nodelta.exit

test_nodelta.exit:                                ; preds = %err_stats_second_zero.i, %if.then.i
  %retval.0.i = phi i32 [ %1, %if.then.i ], [ %err.2.i, %err_stats_second_zero.i ]
  call void @llvm.lifetime.end.p0(i64 392, ptr nonnull %world.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool.not, label %test_nodelta.exit.if.end_crit_edge, label %test_nodelta.exit.cleanup_crit_edge

test_nodelta.exit.cleanup_crit_edge:              ; preds = %test_nodelta.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

test_nodelta.exit.if.end_crit_edge:               ; preds = %test_nodelta.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %test_nodelta.exit.if.end_crit_edge, %test_nodelta.exit.thread
  call void @llvm.lifetime.start.p0(i64 392, ptr nonnull %world.i9) #12
  %37 = call ptr @memset(ptr %world.i9, i32 0, i32 392)
  %call.i10 = call ptr @objagg_create(ptr noundef nonnull @delta_ops, ptr noundef null, ptr noundef nonnull %world.i9) #12
  %cmp.i.i11 = icmp ugt ptr %call.i10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i11, label %if.then.i12, label %for.body.i14.preheader

for.body.i14.preheader:                           ; preds = %if.end
  %delta_count.i = getelementptr inbounds %struct.world, ptr %world.i9, i32 0, i32 1
  br label %for.body.i14

if.then.i12:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %38 = ptrtoint ptr %call.i10 to i32
  br label %test_delta.exit

for.body.i14:                                     ; preds = %test_delta_action_item.exit.thread74.for.body.i14_crit_edge, %for.body.i14.preheader
  %i.032.i = phi i32 [ %inc.i15, %test_delta_action_item.exit.thread74.for.body.i14_crit_edge ], [ 0, %for.body.i14.preheader ]
  %arrayidx.i = getelementptr [26 x %struct.action_item], ptr @action_items, i32 0, i32 %i.032.i
  %39 = ptrtoint ptr %delta_count.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %delta_count.i, align 4
  %41 = ptrtoint ptr %world.i9 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %world.i9, align 4
  %43 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx.i, align 4
  %action2.i = getelementptr [26 x %struct.action_item], ptr @action_items, i32 0, i32 %i.032.i, i32 1
  %45 = ptrtoint ptr %action2.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %action2.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %errmsg.i) #12
  %47 = ptrtoint ptr %errmsg.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr inttoptr (i32 -1 to ptr), ptr %errmsg.i, align 4, !annotation !149
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp.i = icmp eq i32 %46, 0
  %48 = zext i32 %46 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values)
  switch i32 %46, label %for.body.i14.sw.epilog.i_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb7.i
  ]

for.body.i14.sw.epilog.i_crit_edge:               ; preds = %for.body.i14
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %for.body.i14
  %call.i42 = call fastcc ptr @world_obj_get(ptr noundef nonnull %world.i9, ptr noundef %call.i10, i32 noundef %44) #12
  %cmp.i.i43 = icmp ugt ptr %call.i42, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i43, label %test_delta_action_item.exit, label %sw.bb.i.sw.epilog.i_crit_edge

sw.bb.i.sw.epilog.i_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb7.i:                                         ; preds = %for.body.i14
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @world_obj_put(ptr noundef nonnull %world.i9, ptr noundef %call.i10, i32 noundef %44) #12
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb7.i, %sw.bb.i.sw.epilog.i_crit_edge, %for.body.i14.sw.epilog.i_crit_edge
  %expect_delta.i.i = getelementptr [26 x %struct.action_item], ptr @action_items, i32 0, i32 %i.032.i, i32 2
  %49 = ptrtoint ptr %expect_delta.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %expect_delta.i.i, align 4
  %51 = zext i32 %50 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %50, label %sw.epilog.i.sw.epilog.i.i_crit_edge [
    i32 0, label %sw.bb.i.i45
    i32 1, label %sw.bb2.i.i
    i32 2, label %sw.bb40.i.i
  ]

sw.epilog.i.sw.epilog.i.i_crit_edge:              ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i.i

sw.bb.i.i45:                                      ; preds = %sw.epilog.i
  %52 = ptrtoint ptr %delta_count.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %delta_count.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %40)
  %cmp.not.i.i44 = icmp eq i32 %53, %40
  br i1 %cmp.not.i.i44, label %sw.bb.i.i45.sw.epilog.i.i_crit_edge, label %do.end.i.i47

sw.bb.i.i45.sw.epilog.i.i_crit_edge:              ; preds = %sw.bb.i.i45
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i.i

do.end.i.i47:                                     ; preds = %sw.bb.i.i45
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i46 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef %44) #13
  br label %errout.i

sw.bb2.i.i:                                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %46)
  %cmp3.i.i = icmp eq i32 %46, 1
  br i1 %cmp3.i.i, label %do.end14.i.i48, label %if.end30.i.i, !prof !150

do.end14.i.i48:                                   ; preds = %sw.bb2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 577, i32 noundef 9, ptr noundef null) #12
  br label %errout.i

if.end30.i.i:                                     ; preds = %sw.bb2.i.i
  %add.i.i = add i32 %40, 1
  %54 = ptrtoint ptr %delta_count.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %delta_count.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %55)
  %cmp32.not.i.i = icmp eq i32 %add.i.i, %55
  br i1 %cmp32.not.i.i, label %if.end30.i.i.sw.epilog.i.i_crit_edge, label %do.end36.i.i

if.end30.i.i.sw.epilog.i.i_crit_edge:             ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i.i

do.end36.i.i:                                     ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call38.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, i32 noundef %44) #13
  br label %errout.i

sw.bb40.i.i:                                      ; preds = %sw.epilog.i
  br i1 %cmp.i, label %sw.bb40.i.i.sw.bb7.i.i56.sink.split_crit_edge, label %if.end75.i.i, !prof !150

sw.bb40.i.i.sw.bb7.i.i56.sink.split_crit_edge:    ; preds = %sw.bb40.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb7.i.i56.sink.split

if.end75.i.i:                                     ; preds = %sw.bb40.i.i
  %sub.i.i49 = add i32 %40, -1
  %56 = ptrtoint ptr %delta_count.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %delta_count.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i49, i32 %57)
  %cmp77.not.i.i = icmp eq i32 %sub.i.i49, %57
  br i1 %cmp77.not.i.i, label %if.end75.i.i.sw.epilog.i.i_crit_edge, label %if.end75.i.i.sw.bb.i53.i.sink.split_crit_edge

if.end75.i.i.sw.bb.i53.i.sink.split_crit_edge:    ; preds = %if.end75.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i53.i.sink.split

if.end75.i.i.sw.epilog.i.i_crit_edge:             ; preds = %if.end75.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %if.end75.i.i.sw.epilog.i.i_crit_edge, %if.end30.i.i.sw.epilog.i.i_crit_edge, %sw.bb.i.i45.sw.epilog.i.i_crit_edge, %sw.epilog.i.sw.epilog.i.i_crit_edge
  %expect_root.i.i = getelementptr [26 x %struct.action_item], ptr @action_items, i32 0, i32 %i.032.i, i32 3
  %58 = ptrtoint ptr %expect_root.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %expect_root.i.i, align 4
  %60 = zext i32 %59 to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values.76)
  switch i32 %59, label %sw.epilog.i.i.if.end14.i_crit_edge [
    i32 0, label %sw.bb85.i.i
    i32 1, label %sw.bb94.i.i
    i32 2, label %sw.bb140.i.i
  ]

sw.epilog.i.i.if.end14.i_crit_edge:               ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.i

sw.bb85.i.i:                                      ; preds = %sw.epilog.i.i
  %61 = ptrtoint ptr %world.i9 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %world.i9, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %62, i32 %42)
  %cmp86.not.i.i = icmp eq i32 %62, %42
  br i1 %cmp86.not.i.i, label %sw.bb85.i.i.if.end14.i_crit_edge, label %do.end90.i.i

sw.bb85.i.i.if.end14.i_crit_edge:                 ; preds = %sw.bb85.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.i

do.end90.i.i:                                     ; preds = %sw.bb85.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call92.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, i32 noundef %44) #13
  br label %errout.i

sw.bb94.i.i:                                      ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %46)
  %cmp97.i.i = icmp eq i32 %46, 1
  br i1 %cmp97.i.i, label %do.end113.i.i, label %if.end129.i.i, !prof !150

do.end113.i.i:                                    ; preds = %sw.bb94.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 605, i32 noundef 9, ptr noundef null) #12
  br label %errout.i

if.end129.i.i:                                    ; preds = %sw.bb94.i.i
  %add130.i.i = add i32 %42, 1
  %63 = ptrtoint ptr %world.i9 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %world.i9, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add130.i.i, i32 %64)
  %cmp132.not.i.i = icmp eq i32 %add130.i.i, %64
  br i1 %cmp132.not.i.i, label %if.end129.i.i.if.end14.i_crit_edge, label %do.end136.i.i

if.end129.i.i.if.end14.i_crit_edge:               ; preds = %if.end129.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.i

do.end136.i.i:                                    ; preds = %if.end129.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call138.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, i32 noundef %44) #13
  br label %errout.i

sw.bb140.i.i:                                     ; preds = %sw.epilog.i.i
  br i1 %cmp.i, label %sw.bb140.i.i.sw.bb7.i.i56.sink.split_crit_edge, label %if.end175.i.i, !prof !150

sw.bb140.i.i.sw.bb7.i.i56.sink.split_crit_edge:   ; preds = %sw.bb140.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb7.i.i56.sink.split

if.end175.i.i:                                    ; preds = %sw.bb140.i.i
  %sub176.i.i = add i32 %42, -1
  %65 = ptrtoint ptr %world.i9 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %world.i9, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub176.i.i, i32 %66)
  %cmp178.not.i.i = icmp eq i32 %sub176.i.i, %66
  br i1 %cmp178.not.i.i, label %if.end175.i.i.if.end14.i_crit_edge, label %if.end175.i.i.sw.bb.i53.i.sink.split_crit_edge

if.end175.i.i.sw.bb.i53.i.sink.split_crit_edge:   ; preds = %if.end175.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i53.i.sink.split

if.end175.i.i.if.end14.i_crit_edge:               ; preds = %if.end175.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.end175.i.i.if.end14.i_crit_edge, %if.end129.i.i.if.end14.i_crit_edge, %sw.bb85.i.i.if.end14.i_crit_edge, %sw.epilog.i.i.if.end14.i_crit_edge
  %call.i47.i = call ptr @objagg_stats_get(ptr noundef %call.i10) #12
  %cmp.i.i.i50 = icmp ugt ptr %call.i47.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i50, label %if.then.i.i51, label %if.end.i.i53

if.then.i.i51:                                    ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #11
  %67 = ptrtoint ptr %errmsg.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @.str.53, ptr %errmsg.i, align 4
  %68 = ptrtoint ptr %call.i47.i to i32
  br label %check_expect_stats.exit.i

if.end.i.i53:                                     ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #11
  %expect_stats.i = getelementptr [26 x %struct.action_item], ptr @action_items, i32 0, i32 %i.032.i, i32 4
  %call3.i.i52 = call fastcc i32 @__check_expect_stats(ptr noundef %call.i47.i, ptr noundef %expect_stats.i, ptr noundef nonnull %errmsg.i) #12
  call void @objagg_stats_put(ptr noundef %call.i47.i) #12
  br label %check_expect_stats.exit.i

check_expect_stats.exit.i:                        ; preds = %if.end.i.i53, %if.then.i.i51
  %retval.0.i48.i = phi i32 [ %68, %if.then.i.i51 ], [ %call3.i.i52, %if.end.i.i53 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i48.i)
  %tobool16.not.i = icmp eq i32 %retval.0.i48.i, 0
  br i1 %tobool16.not.i, label %test_delta_action_item.exit.thread74, label %do.end.i54

test_delta_action_item.exit.thread74:             ; preds = %check_expect_stats.exit.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %errmsg.i) #12
  %inc.i15 = add nuw nsw i32 %i.032.i, 1
  %exitcond.not.i16 = icmp eq i32 %inc.i15, 26
  br i1 %exitcond.not.i16, label %test_delta.exit.thread, label %test_delta_action_item.exit.thread74.for.body.i14_crit_edge

test_delta_action_item.exit.thread74.for.body.i14_crit_edge: ; preds = %test_delta_action_item.exit.thread74
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i14

do.end.i54:                                       ; preds = %check_expect_stats.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %69 = ptrtoint ptr %errmsg.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %errmsg.i, align 4
  %call19.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, i32 noundef %44, ptr noundef %70) #13
  br label %errout.i

errout.i:                                         ; preds = %do.end.i54, %do.end136.i.i, %do.end113.i.i, %do.end90.i.i, %do.end36.i.i, %do.end14.i.i48, %do.end.i.i47
  %err.0.i55 = phi i32 [ %retval.0.i48.i, %do.end.i54 ], [ -22, %do.end113.i.i ], [ -22, %do.end136.i.i ], [ -22, %do.end90.i.i ], [ -22, %do.end14.i.i48 ], [ -22, %do.end36.i.i ], [ -22, %do.end.i.i47 ]
  br i1 %cmp.i, label %errout.i.sw.bb7.i.i56_crit_edge, label %errout.i.sw.bb.i53.i_crit_edge

errout.i.sw.bb.i53.i_crit_edge:                   ; preds = %errout.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i53.i

errout.i.sw.bb7.i.i56_crit_edge:                  ; preds = %errout.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb7.i.i56

sw.bb.i53.i.sink.split:                           ; preds = %if.end175.i.i.sw.bb.i53.i.sink.split_crit_edge, %if.end75.i.i.sw.bb.i53.i.sink.split_crit_edge
  %.str.42.sink = phi ptr [ @.str.42, %if.end75.i.i.sw.bb.i53.i.sink.split_crit_edge ], [ @.str.51, %if.end175.i.i.sw.bb.i53.i.sink.split_crit_edge ]
  %call83.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.42.sink, i32 noundef %44) #13
  br label %sw.bb.i53.i

sw.bb.i53.i:                                      ; preds = %sw.bb.i53.i.sink.split, %errout.i.sw.bb.i53.i_crit_edge
  %err.0.i5570 = phi i32 [ %err.0.i55, %errout.i.sw.bb.i53.i_crit_edge ], [ -22, %sw.bb.i53.i.sink.split ]
  %call.i51.i = call fastcc ptr @world_obj_get(ptr noundef nonnull %world.i9, ptr noundef %call.i10, i32 noundef %44) #12
  br label %test_delta_action_item.exit.thread

sw.bb7.i.i56.sink.split:                          ; preds = %sw.bb140.i.i.sw.bb7.i.i56.sink.split_crit_edge, %sw.bb40.i.i.sw.bb7.i.i56.sink.split_crit_edge
  %.sink = phi i32 [ 586, %sw.bb40.i.i.sw.bb7.i.i56.sink.split_crit_edge ], [ 614, %sw.bb140.i.i.sw.bb7.i.i56.sink.split_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef %.sink, i32 noundef 9, ptr noundef null) #12
  br label %sw.bb7.i.i56

sw.bb7.i.i56:                                     ; preds = %sw.bb7.i.i56.sink.split, %errout.i.sw.bb7.i.i56_crit_edge
  %err.0.i5566 = phi i32 [ %err.0.i55, %errout.i.sw.bb7.i.i56_crit_edge ], [ -22, %sw.bb7.i.i56.sink.split ]
  call fastcc void @world_obj_put(ptr noundef nonnull %world.i9, ptr noundef %call.i10, i32 noundef %44) #12
  br label %test_delta_action_item.exit.thread

test_delta_action_item.exit.thread:               ; preds = %sw.bb7.i.i56, %sw.bb.i53.i
  %retval.0.i57.ph = phi i32 [ %err.0.i5570, %sw.bb.i53.i ], [ %err.0.i5566, %sw.bb7.i.i56 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %errmsg.i) #12
  br label %for.cond6.preheader.i

test_delta_action_item.exit:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  %71 = ptrtoint ptr %call.i42 to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %errmsg.i) #12
  br label %for.cond6.preheader.i

for.cond6.preheader.i:                            ; preds = %test_delta_action_item.exit, %test_delta_action_item.exit.thread
  %retval.0.i5773 = phi i32 [ %retval.0.i57.ph, %test_delta_action_item.exit.thread ], [ %71, %test_delta_action_item.exit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.032.i)
  %cmp734.not.i = icmp eq i32 %i.032.i, 0
  br i1 %cmp734.not.i, label %for.cond6.preheader.i.for.end13.i_crit_edge, label %for.cond6.preheader.i.for.body8.i_crit_edge

for.cond6.preheader.i.for.body8.i_crit_edge:      ; preds = %for.cond6.preheader.i
  br label %for.body8.i

for.cond6.preheader.i.for.end13.i_crit_edge:      ; preds = %for.cond6.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end13.i

test_delta.exit.thread:                           ; preds = %test_delta_action_item.exit.thread74
  call void @__sanitizer_cov_trace_pc() #11
  call void @objagg_destroy(ptr noundef %call.i10) #12
  call void @llvm.lifetime.end.p0(i64 392, ptr nonnull %world.i9) #12
  br label %if.end4

for.body8.i:                                      ; preds = %test_delta_action_item.exit.i.for.body8.i_crit_edge, %for.cond6.preheader.i.for.body8.i_crit_edge
  %i.135.in.i = phi i32 [ %i.135.i, %test_delta_action_item.exit.i.for.body8.i_crit_edge ], [ %i.032.i, %for.cond6.preheader.i.for.body8.i_crit_edge ]
  %i.135.i = add nsw i32 %i.135.in.i, -1
  %arrayidx9.i = getelementptr [26 x %struct.action_item], ptr @action_items, i32 0, i32 %i.135.i
  %72 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx9.i, align 4
  %action2.i.i = getelementptr [26 x %struct.action_item], ptr @action_items, i32 0, i32 %i.135.i, i32 1
  %74 = ptrtoint ptr %action2.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %action2.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %cmp.i29.i = icmp eq i32 %75, 0
  br i1 %cmp.i29.i, label %sw.bb7.i.i, label %sw.bb.i.i

sw.bb.i.i:                                        ; preds = %for.body8.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i18 = call fastcc ptr @world_obj_get(ptr noundef nonnull %world.i9, ptr noundef %call.i10, i32 noundef %73) #12
  br label %test_delta_action_item.exit.i

sw.bb7.i.i:                                       ; preds = %for.body8.i
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @world_obj_put(ptr noundef nonnull %world.i9, ptr noundef %call.i10, i32 noundef %73) #12
  br label %test_delta_action_item.exit.i

test_delta_action_item.exit.i:                    ; preds = %sw.bb7.i.i, %sw.bb.i.i
  %cmp7.i = icmp sgt i32 %i.135.in.i, 1
  br i1 %cmp7.i, label %test_delta_action_item.exit.i.for.body8.i_crit_edge, label %test_delta_action_item.exit.i.for.end13.i_crit_edge

test_delta_action_item.exit.i.for.end13.i_crit_edge: ; preds = %test_delta_action_item.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end13.i

test_delta_action_item.exit.i.for.body8.i_crit_edge: ; preds = %test_delta_action_item.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body8.i

for.end13.i:                                      ; preds = %test_delta_action_item.exit.i.for.end13.i_crit_edge, %for.cond6.preheader.i.for.end13.i_crit_edge
  call void @objagg_destroy(ptr noundef %call.i10) #12
  br label %test_delta.exit

test_delta.exit:                                  ; preds = %for.end13.i, %if.then.i12
  %retval.0.i19 = phi i32 [ %38, %if.then.i12 ], [ %retval.0.i5773, %for.end13.i ]
  call void @llvm.lifetime.end.p0(i64 392, ptr nonnull %world.i9) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i19)
  %tobool2.not = icmp eq i32 %retval.0.i19, 0
  br i1 %tobool2.not, label %test_delta.exit.if.end4_crit_edge, label %test_delta.exit.cleanup_crit_edge

test_delta.exit.cleanup_crit_edge:                ; preds = %test_delta.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

test_delta.exit.if.end4_crit_edge:                ; preds = %test_delta.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.end4:                                          ; preds = %test_delta.exit.if.end4_crit_edge, %test_delta.exit.thread
  call void @llvm.lifetime.start.p0(i64 392, ptr nonnull %world2.i.i) #12
  %76 = call ptr @memset(ptr %world2.i.i, i32 0, i32 392)
  call void @llvm.lifetime.start.p0(i64 392, ptr nonnull %world.i.i) #12
  %77 = call ptr @memset(ptr %world.i.i, i32 0, i32 392)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %errmsg.i.i) #12
  %78 = ptrtoint ptr %errmsg.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr inttoptr (i32 -1 to ptr), ptr %errmsg.i.i, align 4, !annotation !149
  %call.i.i20 = call ptr @objagg_create(ptr noundef nonnull @delta_ops, ptr noundef null, ptr noundef nonnull %world.i.i) #12
  %cmp.i.i.i21 = icmp ugt ptr %call.i.i20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i21, label %if.then.i.i22, label %for.body.preheader.i.i

for.body.preheader.i.i:                           ; preds = %if.end4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %key.i445.i) #12
  %79 = ptrtoint ptr %key.i445.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 1, ptr %key.i445.i, align 4
  %call.i446.i = call ptr @objagg_obj_get(ptr noundef %call.i.i20, ptr noundef nonnull %key.i445.i) #12
  %cmp.i.i447.i = icmp ugt ptr %call.i446.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i447.i, label %world_obj_get.exit464.thread515.i, label %if.end.i450.i

world_obj_get.exit464.thread515.i:                ; preds = %for.body.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call2.i448.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef 1) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key.i445.i) #12
  br label %err_world_obj_get.i.i

if.end.i450.i:                                    ; preds = %for.body.preheader.i.i
  %arrayidx53.i451.i = getelementptr inbounds %struct.world, ptr %world.i.i, i32 0, i32 4, i32 1
  %80 = ptrtoint ptr %arrayidx53.i451.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx53.i451.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool.not54.i452.i = icmp eq i32 %81, 0
  %arrayidx6.i453.i = getelementptr inbounds %struct.world, ptr %world.i.i, i32 0, i32 3, i32 1
  br i1 %tobool.not54.i452.i, label %key_id_index.exit43.i454.i, label %key_id_index.exit47.i457.i

key_id_index.exit43.i454.i:                       ; preds = %if.end.i450.i
  call void @__sanitizer_cov_trace_pc() #11
  %82 = ptrtoint ptr %arrayidx6.i453.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %call.i446.i, ptr %arrayidx6.i453.i, align 4
  br label %for.inc.i.i

key_id_index.exit47.i457.i:                       ; preds = %if.end.i450.i
  %83 = ptrtoint ptr %arrayidx6.i453.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %arrayidx6.i453.i, align 4
  %cmp.not.i456.i = icmp eq ptr %84, %call.i446.i
  br i1 %cmp.not.i456.i, label %key_id_index.exit47.i457.i.for.inc.i.i_crit_edge, label %world_obj_get.exit464.thread.i

key_id_index.exit47.i457.i.for.inc.i.i_crit_edge: ; preds = %key_id_index.exit47.i457.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

world_obj_get.exit464.thread.i:                   ; preds = %key_id_index.exit47.i457.i
  call void @__sanitizer_cov_trace_pc() #11
  %call15.i458.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef 1) #13
  call void @objagg_obj_put(ptr noundef %call.i.i20, ptr noundef %call.i446.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key.i445.i) #12
  br label %err_world_obj_get.i.i

if.then.i.i22:                                    ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %85 = ptrtoint ptr %call.i.i20 to i32
  br label %test_hints.exit

for.inc.i.i:                                      ; preds = %key_id_index.exit47.i457.i.for.inc.i.i_crit_edge, %key_id_index.exit43.i454.i
  %inc.i462.i = add i32 %81, 1
  %86 = ptrtoint ptr %arrayidx53.i451.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %inc.i462.i, ptr %arrayidx53.i451.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key.i445.i) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %key.i425.i) #12
  %87 = ptrtoint ptr %key.i425.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 7, ptr %key.i425.i, align 4
  %call.i426.i = call ptr @objagg_obj_get(ptr noundef %call.i.i20, ptr noundef nonnull %key.i425.i) #12
  %cmp.i.i427.i = icmp ugt ptr %call.i426.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i427.i, label %world_obj_get.exit444.thread516.i, label %if.end.i430.i

world_obj_get.exit444.thread516.i:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call2.i428.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef 7) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key.i425.i) #12
  br label %err_world_obj_get.thread51.i.i

if.end.i430.i:                                    ; preds = %for.inc.i.i
  %arrayidx53.i431.i = getelementptr inbounds %struct.world, ptr %world.i.i, i32 0, i32 4, i32 7
  %88 = ptrtoint ptr %arrayidx53.i431.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx53.i431.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool.not54.i432.i = icmp eq i32 %89, 0
  %arrayidx6.i433.i = getelementptr inbounds %struct.world, ptr %world.i.i, i32 0, i32 3, i32 7
  br i1 %tobool.not54.i432.i, label %key_id_index.exit43.i434.i, label %key_id_index.exit47.i437.i

key_id_index.exit43.i434.i:                       ; preds = %if.end.i430.i
  call void @__sanitizer_cov_trace_pc() #11
  %90 = ptrtoint ptr %arrayidx6.i433.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %call.i426.i, ptr %arrayidx6.i433.i, align 4
  br label %for.inc.1.i.i

key_id_index.exit47.i437.i:                       ; preds = %if.end.i430.i
  %91 = ptrtoint ptr %arrayidx6.i433.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %arrayidx6.i433.i, align 4
  %cmp.not.i436.i = icmp eq ptr %92, %call.i426.i
  br i1 %cmp.not.i436.i, label %key_id_index.exit47.i437.i.for.inc.1.i.i_crit_edge, label %world_obj_get.exit444.thread.i

key_id_index.exit47.i437.i.for.inc.1.i.i_crit_edge: ; preds = %key_id_index.exit47.i437.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1.i.i

world_obj_get.exit444.thread.i:                   ; preds = %key_id_index.exit47.i437.i
  call void @__sanitizer_cov_trace_pc() #11
  %call15.i438.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef 7) #13
  call void @objagg_obj_put(ptr noundef %call.i.i20, ptr noundef %call.i426.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key.i425.i) #12
  br label %err_world_obj_get.thread51.i.i

for.inc.1.i.i:                                    ; preds = %key_id_index.exit47.i437.i.for.inc.1.i.i_crit_edge, %key_id_index.exit43.i434.i
  %inc.i442.i = add i32 %89, 1
  %93 = ptrtoint ptr %arrayidx53.i431.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %inc.i442.i, ptr %arrayidx53.i431.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key.i425.i) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %key.i405.i) #12
  %94 = ptrtoint ptr %key.i405.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 3, ptr %key.i405.i, align 4
  %call.i406.i = call ptr @objagg_obj_get(ptr noundef %call.i.i20, ptr noundef nonnull %key.i405.i) #12
  %cmp.i.i407.i = icmp ugt ptr %call.i406.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i407.i, label %world_obj_get.exit424.thread517.i, label %if.end.i410.i

world_obj_get.exit424.thread517.i:                ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call2.i408.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef 3) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key.i405.i) #12
  br label %err_world_obj_get.thread51.i.i

if.end.i410.i:                                    ; preds = %for.inc.1.i.i
  %arrayidx53.i411.i = getelementptr inbounds %struct.world, ptr %world.i.i, i32 0, i32 4, i32 3
  %95 = ptrtoint ptr %arrayidx53.i411.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %arrayidx53.i411.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %tobool.not54.i412.i = icmp eq i32 %96, 0
  %arrayidx6.i413.i = getelementptr inbounds %struct.world, ptr %world.i.i, i32 0, i32 3, i32 3
  br i1 %tobool.not54.i412.i, label %key_id_index.exit43.i414.i, label %key_id_index.exit47.i417.i

key_id_index.exit43.i414.i:                       ; preds = %if.end.i410.i
  call void @__sanitizer_cov_trace_pc() #11
  %97 = ptrtoint ptr %arrayidx6.i413.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %call.i406.i, ptr %arrayidx6.i413.i, align 4
  br label %for.inc.2.i.i

key_id_index.exit47.i417.i:                       ; preds = %if.end.i410.i
  %98 = ptrtoint ptr %arrayidx6.i413.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %arrayidx6.i413.i, align 4
  %cmp.not.i416.i = icmp eq ptr %99, %call.i406.i
  br i1 %cmp.not.i416.i, label %key_id_index.exit47.i417.i.for.inc.2.i.i_crit_edge, label %world_obj_get.exit424.thread.i

key_id_index.exit47.i417.i.for.inc.2.i.i_crit_edge: ; preds = %key_id_index.exit47.i417.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.2.i.i

world_obj_get.exit424.thread.i:                   ; preds = %key_id_index.exit47.i417.i
  call void @__sanitizer_cov_trace_pc() #11
  %call15.i418.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef 3) #13
  call void @objagg_obj_put(ptr noundef %call.i.i20, ptr noundef %call.i406.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key.i405.i) #12
  br label %err_world_obj_get.thread51.i.i

for.inc.2.i.i:                                    ; preds = %key_id_index.exit47.i417.i.for.inc.2.i.i_crit_edge, %key_id_index.exit43.i414.i
  %inc.i422.i = add i32 %96, 1
  %100 = ptrtoint ptr %arrayidx53.i411.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %inc.i422.i, ptr %arrayidx53.i411.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key.i405.i) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %key.i385.i) #12
  %101 = ptrtoint ptr %key.i385.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 5, ptr %key.i385.i, align 4
  %call.i386.i = call ptr @objagg_obj_get(ptr noundef %call.i.i20, ptr noundef nonnull %key.i385.i) #12
  %cmp.i.i387.i = icmp ugt ptr %call.i386.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i387.i, label %world_obj_get.exit404.thread518.i, label %if.end.i390.i

world_obj_get.exit404.thread518.i:                ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call2.i388.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef 5) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key.i385.i) #12
  br label %err_world_obj_get.thread51.i.i

if.end.i390.i:                                    ; preds = %for.inc.2.i.i
  %arrayidx53.i391.i = getelementptr inbounds %struct.world, ptr %world.i.i, i32 0, i32 4, i32 5
  %102 = ptrtoint ptr %arrayidx53.i391.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %arrayidx53.i391.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %tobool.not54.i392.i = icmp eq i32 %103, 0
  %arrayidx6.i393.i = getelementptr inbounds %struct.world, ptr %world.i.i, i32 0, i32 3, i32 5
  br i1 %tobool.not54.i392.i, label %key_id_index.exit43.i394.i, label %key_id_index.exit47.i397.i

key_id_index.exit43.i394.i:                       ; preds = %if.end.i390.i
  call void @__sanitizer_cov_trace_pc() #11
  %104 = ptrtoint ptr %arrayidx6.i393.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %call.i386.i, ptr %arrayidx6.i393.i, align 4
  br label %for.inc.3.i.i

key_id_index.exit47.i397.i:                       ; preds = %if.end.i390.i
  %105 = ptrtoint ptr %arrayidx6.i393.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %arrayidx6.i393.i, align 4
  %cmp.not.i396.i = icmp eq ptr %106, %call.i386.i
  br i1 %cmp.not.i396.i, label %key_id_index.exit47.i397.i.for.inc.3.i.i_crit_edge, label %world_obj_get.exit404.thread.i

key_id_index.exit47.i397.i.for.inc.3.i.i_crit_edge: ; preds = %key_id_index.exit47.i397.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.3.i.i

world_obj_get.exit404.thread.i:                   ; preds = %key_id_index.exit47.i397.i
  call void @__sanitizer_cov_trace_pc() #11
  %call15.i398.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef 5) #13
  call void @objagg_obj_put(ptr noundef %call.i.i20, ptr noundef %call.i386.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key.i385.i) #12
  br label %err_world_obj_get.thread51.i.i

for.inc.3.i.i:                                    ; preds = %key_id_index.exit47.i397.i.for.inc.3.i.i_crit_edge, %key_id_index.exit43.i394.i
  %inc.i402.i = add i32 %103, 1
  %107 = ptrtoint ptr %arrayidx53.i391.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %inc.i402.i, ptr %arrayidx53.i391.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key.i385.i) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %key.i365.i) #12
  %108 = ptrtoint ptr %key.i365.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 3, ptr %key.i365.i, align 4
  %call.i366.i = call ptr @objagg_obj_get(ptr noundef %call.i.i20, ptr noundef nonnull %key.i365.i) #12
  %cmp.i.i367.i = icmp ugt ptr %call.i366.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i367.i, label %world_obj_get.exit384.thread519.i, label %if.end.i370.i

world_obj_get.exit384.thread519.i:                ; preds = %for.inc.3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call2.i368.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef 3) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key.i365.i) #12
  br label %err_world_obj_get.thread51.i.i

if.end.i370.i:                                    ; preds = %for.inc.3.i.i
  %109 = ptrtoint ptr %arrayidx53.i411.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %arrayidx53.i411.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %tobool.not54.i372.i = icmp eq i32 %110, 0
  br i1 %tobool.not54.i372.i, label %key_id_index.exit43.i374.i, label %key_id_index.exit47.i377.i

key_id_index.exit43.i374.i:                       ; preds = %if.end.i370.i
  call void @__sanitizer_cov_trace_pc() #11
  %111 = ptrtoint ptr %arrayidx6.i413.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %call.i366.i, ptr %arrayidx6.i413.i, align 4
  br label %for.inc.4.i.i

key_id_index.exit47.i377.i:                       ; preds = %if.end.i370.i
  %112 = ptrtoint ptr %arrayidx6.i413.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %arrayidx6.i413.i, align 4
  %cmp.not.i376.i = icmp eq ptr %113, %call.i366.i
  br i1 %cmp.not.i376.i, label %key_id_index.exit47.i377.i.for.inc.4.i.i_crit_edge, label %world_obj_get.exit384.thread.i

key_id_index.exit47.i377.i.for.inc.4.i.i_crit_edge: ; preds = %key_id_index.exit47.i377.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.4.i.i

world_obj_get.exit384.thread.i:                   ; preds = %key_id_index.exit47.i377.i
  call void @__sanitizer_cov_trace_pc() #11
  %call15.i378.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef 3) #13
  call void @objagg_obj_put(ptr noundef %call.i.i20, ptr noundef %call.i366.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key.i365.i) #12
  br label %err_world_obj_get.thread51.i.i

for.inc.4.i.i:                                    ; preds = %key_id_index.exit47.i377.i.for.inc.4.i.i_crit_edge, %key_id_index.exit43.i374.i
  %inc.i382.i = add i32 %110, 1
  %114 = ptrtoint ptr %arrayidx53.i411.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %inc.i382.i, ptr %arrayidx53.i411.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key.i365.i) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %key.i345.i) #12
  %115 = ptrtoint ptr %key.i345.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 1, ptr %key.i345.i, align 4
  %call.i346.i = call ptr @objagg_obj_get(ptr noundef %call.i.i20, ptr noundef nonnull %key.i345.i) #12
  %cmp.i.i347.i = icmp ugt ptr %call.i346.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i347.i, label %world_obj_get.exit364.thread520.i, label %if.end.i350.i

world_obj_get.exit364.thread520.i:                ; preds = %for.inc.4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call2.i348.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef 1) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key.i345.i) #12
  br label %err_world_obj_get.thread51.i.i

if.end.i350.i:                                    ; preds = %for.inc.4.i.i
  %116 = ptrtoint ptr %arrayidx53.i451.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %arrayidx53.i451.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %tobool.not54.i352.i = icmp eq i32 %117, 0
  br i1 %tobool.not54.i352.i, label %key_id_index.exit43.i354.i, label %key_id_index.exit47.i357.i

key_id_index.exit43.i354.i:                       ; preds = %if.end.i350.i
  call void @__sanitizer_cov_trace_pc() #11
  %118 = ptrtoint ptr %arrayidx6.i453.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %call.i346.i, ptr %arrayidx6.i453.i, align 4
  br label %for.inc.5.i.i

key_id_index.exit47.i357.i:                       ; preds = %if.end.i350.i
  %119 = ptrtoint ptr %arrayidx6.i453.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %arrayidx6.i453.i, align 4
  %cmp.not.i356.i = icmp eq ptr %120, %call.i346.i
  br i1 %cmp.not.i356.i, label %key_id_index.exit47.i357.i.for.inc.5.i.i_crit_edge, label %world_obj_get.exit364.thread.i

key_id_index.exit47.i357.i.for.inc.5.i.i_crit_edge: ; preds = %key_id_index.exit47.i357.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.5.i.i

world_obj_get.exit364.thread.i:                   ; preds = %key_id_index.exit47.i357.i
  call void @__sanitizer_cov_trace_pc() #11
  %call15.i358.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef 1) #13
  call void @objagg_obj_put(ptr noundef %call.i.i20, ptr noundef %call.i346.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key.i345.i) #12
  br label %err_world_obj_get.thread51.i.i

for.inc.5.i.i:                                    ; preds = %key_id_index.exit47.i357.i.for.inc.5.i.i_crit_edge, %key_id_index.exit43.i354.i
  %inc.i362.i = add i32 %117, 1
  %121 = ptrtoint ptr %arrayidx53.i451.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %inc.i362.i, ptr %arrayidx53.i451.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key.i345.i) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %key.i325.i) #12
  %122 = ptrtoint ptr %key.i325.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 30, ptr %key.i325.i, align 4
  %call.i326.i = call ptr @objagg_obj_get(ptr noundef %call.i.i20, ptr noundef nonnull %key.i325.i) #12
  %cmp.i.i327.i = icmp ugt ptr %call.i326.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i327.i, label %world_obj_get.exit344.thread521.i, label %if.end.i330.i

world_obj_get.exit344.thread521.i:                ; preds = %for.inc.5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call2.i328.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef 30) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key.i325.i) #12
  br label %err_world_obj_get.thread51.i.i

if.end.i330.i:                                    ; preds = %for.inc.5.i.i
  %arrayidx53.i331.i = getelementptr inbounds %struct.world, ptr %world.i.i, i32 0, i32 4, i32 30
  %123 = ptrtoint ptr %arrayidx53.i331.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %arrayidx53.i331.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %tobool.not54.i332.i = icmp eq i32 %124, 0
  %arrayidx6.i333.i = getelementptr inbounds %struct.world, ptr %world.i.i, i32 0, i32 3, i32 30
  br i1 %tobool.not54.i332.i, label %key_id_index.exit43.i334.i, label %key_id_index.exit47.i337.i

key_id_index.exit43.i334.i:                       ; preds = %if.end.i330.i
  call void @__sanitizer_cov_trace_pc() #11
  %125 = ptrtoint ptr %arrayidx6.i333.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %call.i326.i, ptr %arrayidx6.i333.i, align 4
  br label %for.inc.6.i.i

key_id_index.exit47.i337.i:                       ; preds = %if.end.i330.i
  %126 = ptrtoint ptr %arrayidx6.i333.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %arrayidx6.i333.i, align 4
  %cmp.not.i336.i = icmp eq ptr %127, %call.i326.i
  br i1 %cmp.not.i336.i, label %key_id_index.exit47.i337.i.for.inc.6.i.i_crit_edge, label %world_obj_get.exit344.thread.i

key_id_index.exit47.i337.i.for.inc.6.i.i_crit_edge: ; preds = %key_id_index.exit47.i337.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.6.i.i

world_obj_get.exit344.thread.i:                   ; preds = %key_id_index.exit47.i337.i
  call void @__sanitizer_cov_trace_pc() #11
  %call15.i338.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef 30) #13
  call void @objagg_obj_put(ptr noundef %call.i.i20, ptr noundef %call.i326.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key.i325.i) #12
  br label %err_world_obj_get.thread51.i.i

for.inc.6.i.i:                                    ; preds = %key_id_index.exit47.i337.i.for.inc.6.i.i_crit_edge, %key_id_index.exit43.i334.i
  %inc.i342.i = add i32 %124, 1
  %128 = ptrtoint ptr %arrayidx53.i331.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %inc.i342.i, ptr %arrayidx53.i331.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key.i325.i) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %key.i305.i) #12
  %129 = ptrtoint ptr %key.i305.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 8, ptr %key.i305.i, align 4
  %call.i306.i = call ptr @objagg_obj_get(ptr noundef %call.i.i20, ptr noundef nonnull %key.i305.i) #12
  %cmp.i.i307.i = icmp ugt ptr %call.i306.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i307.i, label %world_obj_get.exit324.thread522.i, label %if.end.i310.i

world_obj_get.exit324.thread522.i:                ; preds = %for.inc.6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call2.i308.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef 8) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key.i305.i) #12
  br label %err_world_obj_get.thread51.i.i

if.end.i310.i:                                    ; preds = %for.inc.6.i.i
  %arrayidx53.i311.i = getelementptr inbounds %struct.world, ptr %world.i.i, i32 0, i32 4, i32 8
  %130 = ptrtoint ptr %arrayidx53.i311.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %arrayidx53.i311.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %131)
  %tobool.not54.i312.i = icmp eq i32 %131, 0
  %arrayidx6.i313.i = getelementptr inbounds %struct.world, ptr %world.i.i, i32 0, i32 3, i32 8
  br i1 %tobool.not54.i312.i, label %key_id_index.exit43.i314.i, label %key_id_index.exit47.i317.i

key_id_index.exit43.i314.i:                       ; preds = %if.end.i310.i
  call void @__sanitizer_cov_trace_pc() #11
  %132 = ptrtoint ptr %arrayidx6.i313.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %call.i306.i, ptr %arrayidx6.i313.i, align 4
  br label %for.inc.7.i.i

key_id_index.exit47.i317.i:                       ; preds = %if.end.i310.i
  %133 = ptrtoint ptr %arrayidx6.i313.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %arrayidx6.i313.i, align 4
  %cmp.not.i316.i = icmp eq ptr %134, %call.i306.i
  br i1 %cmp.not.i316.i, label %key_id_index.exit47.i317.i.for.inc.7.i.i_crit_edge, label %world_obj_get.exit324.thread.i

key_id_index.exit47.i317.i.for.inc.7.i.i_crit_edge: ; preds = %key_id_index.exit47.i317.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.7.i.i

world_obj_get.exit324.thread.i:                   ; preds = %key_id_index.exit47.i317.i
  call void @__sanitizer_cov_trace_pc() #11
  %call15.i318.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef 8) #13
  call void @objagg_obj_put(ptr noundef %call.i.i20, ptr noundef %call.i306.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key.i305.i) #12
  br label %err_world_obj_get.thread51.i.i

for.inc.7.i.i:                                    ; preds = %key_id_index.exit47.i317.i.for.inc.7.i.i_crit_edge, %key_id_index.exit43.i314.i
  %inc.i322.i = add i32 %131, 1
  %135 = ptrtoint ptr %arrayidx53.i311.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %inc.i322.i, ptr %arrayidx53.i311.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key.i305.i) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %key.i285.i) #12
  %136 = ptrtoint ptr %key.i285.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 8, ptr %key.i285.i, align 4
  %call.i286.i = call ptr @objagg_obj_get(ptr noundef %call.i.i20, ptr noundef nonnull %key.i285.i) #12
  %cmp.i.i287.i = icmp ugt ptr %call.i286.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i287.i, label %world_obj_get.exit304.thread523.i, label %if.end.i290.i

world_obj_get.exit304.thread523.i:                ; preds = %for.inc.7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call2.i288.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef 8) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key.i285.i) #12
  br label %err_world_obj_get.thread51.i.i

if.end.i290.i:                                    ; preds = %for.inc.7.i.i
  %137 = ptrtoint ptr %arrayidx53.i311.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %arrayidx53.i311.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %138)
  %tobool.not54.i292.i = icmp eq i32 %138, 0
  br i1 %tobool.not54.i292.i, label %key_id_index.exit43.i294.i, label %key_id_index.exit47.i297.i

key_id_index.exit43.i294.i:                       ; preds = %if.end.i290.i
  call void @__sanitizer_cov_trace_pc() #11
  %139 = ptrtoint ptr %arrayidx6.i313.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %call.i286.i, ptr %arrayidx6.i313.i, align 4
  br label %for.inc.8.i.i

key_id_index.exit47.i297.i:                       ; preds = %if.end.i290.i
  %140 = ptrtoint ptr %arrayidx6.i313.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %arrayidx6.i313.i, align 4
  %cmp.not.i296.i = icmp eq ptr %141, %call.i286.i
  br i1 %cmp.not.i296.i, label %key_id_index.exit47.i297.i.for.inc.8.i.i_crit_edge, label %world_obj_get.exit304.thread.i

key_id_index.exit47.i297.i.for.inc.8.i.i_crit_edge: ; preds = %key_id_index.exit47.i297.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.8.i.i

world_obj_get.exit304.thread.i:                   ; preds = %key_id_index.exit47.i297.i
  call void @__sanitizer_cov_trace_pc() #11
  %call15.i298.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef 8) #13
  call void @objagg_obj_put(ptr noundef %call.i.i20, ptr noundef %call.i286.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key.i285.i) #12
  br label %err_world_obj_get.thread51.i.i

for.inc.8.i.i:                                    ; preds = %key_id_index.exit47.i297.i.for.inc.8.i.i_crit_edge, %key_id_index.exit43.i294.i
  %inc.i302.i = add i32 %138, 1
  %142 = ptrtoint ptr %arrayidx53.i311.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %inc.i302.i, ptr %arrayidx53.i311.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key.i285.i) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %key.i265.i) #12
  %143 = ptrtoint ptr %key.i265.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 5, ptr %key.i265.i, align 4
  %call.i266.i = call ptr @objagg_obj_get(ptr noundef %call.i.i20, ptr noundef nonnull %key.i265.i) #12
  %cmp.i.i267.i = icmp ugt ptr %call.i266.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i267.i, label %world_obj_get.exit284.thread524.i, label %if.end.i270.i

world_obj_get.exit284.thread524.i:                ; preds = %for.inc.8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call2.i268.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef 5) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key.i265.i) #12
  br label %err_world_obj_get.thread51.i.i

if.end.i270.i:                                    ; preds = %for.inc.8.i.i
  %144 = ptrtoint ptr %arrayidx53.i391.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %arrayidx53.i391.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %145)
  %tobool.not54.i272.i = icmp eq i32 %145, 0
  br i1 %tobool.not54.i272.i, label %key_id_index.exit43.i274.i, label %key_id_index.exit47.i277.i

key_id_index.exit43.i274.i:                       ; preds = %if.end.i270.i
  call void @__sanitizer_cov_trace_pc() #11
  %146 = ptrtoint ptr %arrayidx6.i393.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr %call.i266.i, ptr %arrayidx6.i393.i, align 4
  br label %for.inc.9.i.i

key_id_index.exit47.i277.i:                       ; preds = %if.end.i270.i
  %147 = ptrtoint ptr %arrayidx6.i393.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %arrayidx6.i393.i, align 4
  %cmp.not.i276.i = icmp eq ptr %148, %call.i266.i
  br i1 %cmp.not.i276.i, label %key_id_index.exit47.i277.i.for.inc.9.i.i_crit_edge, label %world_obj_get.exit284.thread.i

key_id_index.exit47.i277.i.for.inc.9.i.i_crit_edge: ; preds = %key_id_index.exit47.i277.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.9.i.i

world_obj_get.exit284.thread.i:                   ; preds = %key_id_index.exit47.i277.i
  call void @__sanitizer_cov_trace_pc() #11
  %call15.i278.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef 5) #13
  call void @objagg_obj_put(ptr noundef %call.i.i20, ptr noundef %call.i266.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key.i265.i) #12
  br label %err_world_obj_get.thread51.i.i

for.inc.9.i.i:                                    ; preds = %key_id_index.exit47.i277.i.for.inc.9.i.i_crit_edge, %key_id_index.exit43.i274.i
  %inc.i282.i = add i32 %145, 1
  %149 = ptrtoint ptr %arrayidx53.i391.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %inc.i282.i, ptr %arrayidx53.i391.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key.i265.i) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %key.i245.i) #12
  %150 = ptrtoint ptr %key.i245.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 6, ptr %key.i245.i, align 4
  %call.i246.i = call ptr @objagg_obj_get(ptr noundef %call.i.i20, ptr noundef nonnull %key.i245.i) #12
  %cmp.i.i247.i = icmp ugt ptr %call.i246.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i247.i, label %world_obj_get.exit264.thread525.i, label %if.end.i250.i

world_obj_get.exit264.thread525.i:                ; preds = %for.inc.9.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call2.i248.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef 6) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key.i245.i) #12
  br label %err_world_obj_get.thread51.i.i

if.end.i250.i:                                    ; preds = %for.inc.9.i.i
  %arrayidx53.i251.i = getelementptr inbounds %struct.world, ptr %world.i.i, i32 0, i32 4, i32 6
  %151 = ptrtoint ptr %arrayidx53.i251.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %arrayidx53.i251.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %152)
  %tobool.not54.i252.i = icmp eq i32 %152, 0
  %arrayidx6.i253.i = getelementptr inbounds %struct.world, ptr %world.i.i, i32 0, i32 3, i32 6
  br i1 %tobool.not54.i252.i, label %key_id_index.exit43.i254.i, label %key_id_index.exit47.i257.i

key_id_index.exit43.i254.i:                       ; preds = %if.end.i250.i
  call void @__sanitizer_cov_trace_pc() #11
  %153 = ptrtoint ptr %arrayidx6.i253.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr %call.i246.i, ptr %arrayidx6.i253.i, align 4
  br label %for.inc.10.i.i

key_id_index.exit47.i257.i:                       ; preds = %if.end.i250.i
  %154 = ptrtoint ptr %arrayidx6.i253.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %arrayidx6.i253.i, align 4
  %cmp.not.i256.i = icmp eq ptr %155, %call.i246.i
  br i1 %cmp.not.i256.i, label %key_id_index.exit47.i257.i.for.inc.10.i.i_crit_edge, label %world_obj_get.exit264.thread.i

key_id_index.exit47.i257.i.for.inc.10.i.i_crit_edge: ; preds = %key_id_index.exit47.i257.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.10.i.i

world_obj_get.exit264.thread.i:                   ; preds = %key_id_index.exit47.i257.i
  call void @__sanitizer_cov_trace_pc() #11
  %call15.i258.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef 6) #13
  call void @objagg_obj_put(ptr noundef %call.i.i20, ptr noundef %call.i246.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key.i245.i) #12
  br label %err_world_obj_get.thread51.i.i

for.inc.10.i.i:                                   ; preds = %key_id_index.exit47.i257.i.for.inc.10.i.i_crit_edge, %key_id_index.exit43.i254.i
  %inc.i262.i = add i32 %152, 1
  %156 = ptrtoint ptr %arrayidx53.i251.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %inc.i262.i, ptr %arrayidx53.i251.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key.i245.i) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %key.i225.i) #12
  %157 = ptrtoint ptr %key.i225.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 8, ptr %key.i225.i, align 4
  %call.i226.i = call ptr @objagg_obj_get(ptr noundef %call.i.i20, ptr noundef nonnull %key.i225.i) #12
  %cmp.i.i227.i = icmp ugt ptr %call.i226.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i227.i, label %world_obj_get.exit244.thread526.i, label %if.end.i230.i

world_obj_get.exit244.thread526.i:                ; preds = %for.inc.10.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call2.i228.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef 8) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key.i225.i) #12
  br label %err_world_obj_get.thread51.i.i

if.end.i230.i:                                    ; preds = %for.inc.10.i.i
  %158 = ptrtoint ptr %arrayidx53.i311.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %arrayidx53.i311.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %159)
  %tobool.not54.i232.i = icmp eq i32 %159, 0
  br i1 %tobool.not54.i232.i, label %key_id_index.exit43.i234.i, label %key_id_index.exit47.i237.i

key_id_index.exit43.i234.i:                       ; preds = %if.end.i230.i
  call void @__sanitizer_cov_trace_pc() #11
  %160 = ptrtoint ptr %arrayidx6.i313.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr %call.i226.i, ptr %arrayidx6.i313.i, align 4
  br label %for.inc.11.i.i

key_id_index.exit47.i237.i:                       ; preds = %if.end.i230.i
  %161 = ptrtoint ptr %arrayidx6.i313.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %arrayidx6.i313.i, align 4
  %cmp.not.i236.i = icmp eq ptr %162, %call.i226.i
  br i1 %cmp.not.i236.i, label %key_id_index.exit47.i237.i.for.inc.11.i.i_crit_edge, label %world_obj_get.exit244.thread.i

key_id_index.exit47.i237.i.for.inc.11.i.i_crit_edge: ; preds = %key_id_index.exit47.i237.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.11.i.i

world_obj_get.exit244.thread.i:                   ; preds = %key_id_index.exit47.i237.i
  call void @__sanitizer_cov_trace_pc() #11
  %call15.i238.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef 8) #13
  call void @objagg_obj_put(ptr noundef %call.i.i20, ptr noundef %call.i226.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key.i225.i) #12
  br label %err_world_obj_get.thread51.i.i

for.inc.11.i.i:                                   ; preds = %key_id_index.exit47.i237.i.for.inc.11.i.i_crit_edge, %key_id_index.exit43.i234.i
  %inc.i242.i = add i32 %159, 1
  %163 = ptrtoint ptr %arrayidx53.i311.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %inc.i242.i, ptr %arrayidx53.i311.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key.i225.i) #12
  call fastcc void @pr_debug_stats(ptr noundef %call.i.i20) #12
  %call.i.i.i = call ptr @objagg_stats_get(ptr noundef %call.i.i20) #12
  %cmp.i.i.i.i = icmp ugt ptr %call.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i, label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %for.inc.11.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %164 = ptrtoint ptr %errmsg.i.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr @.str.53, ptr %errmsg.i.i, align 4
  %165 = ptrtoint ptr %call.i.i.i to i32
  br label %check_expect_stats.exit.i.i

if.end.i.i.i:                                     ; preds = %for.inc.11.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call3.i.i.i = call fastcc i32 @__check_expect_stats(ptr noundef %call.i.i.i, ptr noundef getelementptr inbounds ({ ptr, i32, { i32, <{ %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, [25 x %struct.expect_stats_info] }> }, { i32, <{ %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, [25 x %struct.expect_stats_info] }> } }, ptr @hints_case, i32 0, i32 2, i32 0), ptr noundef nonnull %errmsg.i.i) #12
  call void @objagg_stats_put(ptr noundef %call.i.i.i) #12
  br label %check_expect_stats.exit.i.i

check_expect_stats.exit.i.i:                      ; preds = %if.end.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %165, %if.then.i.i.i ], [ %call3.i.i.i, %if.end.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i.i)
  %tobool.not.i.i = icmp eq i32 %retval.0.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.end11.i.i, label %do.end.i.i24

do.end.i.i24:                                     ; preds = %check_expect_stats.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %166 = ptrtoint ptr %errmsg.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %errmsg.i.i, align 4
  %call10.i.i23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef %167) #13
  br label %for.body67.preheader.i.i

if.end11.i.i:                                     ; preds = %check_expect_stats.exit.i.i
  %call12.i.i = call ptr @objagg_hints_get(ptr noundef %call.i.i20, i32 noundef 0) #12
  %cmp.i2.i.i = icmp ugt ptr %call12.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i2.i.i, label %if.then14.i.i, label %if.end16.i.i

if.then14.i.i:                                    ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %168 = ptrtoint ptr %call12.i.i to i32
  br label %for.body67.preheader.i.i

if.end16.i.i:                                     ; preds = %if.end11.i.i
  call fastcc void @pr_debug_hints_stats(ptr noundef %call12.i.i) #12
  %call.i3.i.i = call ptr @objagg_hints_stats_get(ptr noundef %call12.i.i) #12
  %cmp.i.i4.i.i = icmp ugt ptr %call.i3.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i4.i.i, label %if.then.i5.i.i, label %if.end.i7.i.i

if.then.i5.i.i:                                   ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %169 = ptrtoint ptr %call.i3.i.i to i32
  br label %check_expect_hints_stats.exit.i.i

if.end.i7.i.i:                                    ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call3.i6.i.i = call fastcc i32 @__check_expect_stats(ptr noundef %call.i3.i.i, ptr noundef getelementptr inbounds ({ ptr, i32, { i32, <{ %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, [25 x %struct.expect_stats_info] }> }, { i32, <{ %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, [25 x %struct.expect_stats_info] }> } }, ptr @hints_case, i32 0, i32 3, i32 0), ptr noundef nonnull %errmsg.i.i) #12
  call void @objagg_stats_put(ptr noundef %call.i3.i.i) #12
  br label %check_expect_hints_stats.exit.i.i

check_expect_hints_stats.exit.i.i:                ; preds = %if.end.i7.i.i, %if.then.i5.i.i
  %retval.0.i8.i.i = phi i32 [ %169, %if.then.i5.i.i ], [ %call3.i6.i.i, %if.end.i7.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i8.i.i)
  %tobool18.not.i.i = icmp eq i32 %retval.0.i8.i.i, 0
  br i1 %tobool18.not.i.i, label %if.end25.i.i, label %do.end22.i.i

do.end22.i.i:                                     ; preds = %check_expect_hints_stats.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %170 = ptrtoint ptr %errmsg.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %errmsg.i.i, align 4
  %call24.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef %171) #13
  br label %err_check_expect_hints_stats.i.i

if.end25.i.i:                                     ; preds = %check_expect_hints_stats.exit.i.i
  %call26.i.i = call ptr @objagg_create(ptr noundef nonnull @delta_ops, ptr noundef %call12.i.i, ptr noundef nonnull %world2.i.i) #12
  %cmp.i9.i.i = icmp ugt ptr %call26.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i9.i.i, label %if.then28.i.i, label %for.body34.preheader.i.i

for.body34.preheader.i.i:                         ; preds = %if.end25.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %key.i205.i) #12
  %172 = ptrtoint ptr %key.i205.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 1, ptr %key.i205.i, align 4
  %call.i206.i = call ptr @objagg_obj_get(ptr noundef %call26.i.i, ptr noundef nonnull %key.i205.i) #12
  %cmp.i.i207.i = icmp ugt ptr %call.i206.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i207.i, label %world_obj_get.exit224.thread527.i, label %if.end.i210.i

world_obj_get.exit224.thread527.i:                ; preds = %for.body34.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call2.i208.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef 1) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key.i205.i) #12
  br label %err_world2_obj_get.i.i

if.end.i210.i:                                    ; preds = %for.body34.preheader.i.i
  %arrayidx53.i211.i = getelementptr inbounds %struct.world, ptr %world2.i.i, i32 0, i32 4, i32 1
  %173 = ptrtoint ptr %arrayidx53.i211.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %arrayidx53.i211.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %174)
  %tobool.not54.i212.i = icmp eq i32 %174, 0
  %arrayidx6.i213.i = getelementptr inbounds %struct.world, ptr %world2.i.i, i32 0, i32 3, i32 1
  br i1 %tobool.not54.i212.i, label %key_id_index.exit43.i214.i, label %key_id_index.exit47.i217.i

key_id_index.exit43.i214.i:                       ; preds = %if.end.i210.i
  call void @__sanitizer_cov_trace_pc() #11
  %175 = ptrtoint ptr %arrayidx6.i213.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr %call.i206.i, ptr %arrayidx6.i213.i, align 4
  br label %for.inc42.i.i

key_id_index.exit47.i217.i:                       ; preds = %if.end.i210.i
  %176 = ptrtoint ptr %arrayidx6.i213.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %arrayidx6.i213.i, align 4
  %cmp.not.i216.i = icmp eq ptr %177, %call.i206.i
  br i1 %cmp.not.i216.i, label %key_id_index.exit47.i217.i.for.inc42.i.i_crit_edge, label %world_obj_get.exit224.thread.i

key_id_index.exit47.i217.i.for.inc42.i.i_crit_edge: ; preds = %key_id_index.exit47.i217.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc42.i.i

world_obj_get.exit224.thread.i:                   ; preds = %key_id_index.exit47.i217.i
  call void @__sanitizer_cov_trace_pc() #11
  %call15.i218.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef 1) #13
  call void @objagg_obj_put(ptr noundef %call26.i.i, ptr noundef %call.i206.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key.i205.i) #12
  br label %err_world2_obj_get.i.i

if.then28.i.i:                                    ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %178 = ptrtoint ptr %call26.i.i to i32
  br label %test_hints.exit

for.inc42.i.i:                                    ; preds = %key_id_index.exit47.i217.i.for.inc42.i.i_crit_edge, %key_id_index.exit43.i214.i
  %inc.i222.i = add i32 %174, 1
  %179 = ptrtoint ptr %arrayidx53.i211.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 %inc.i222.i, ptr %arrayidx53.i211.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key.i205.i) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %key.i185.i) #12
  %180 = ptrtoint ptr %key.i185.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 7, ptr %key.i185.i, align 4
  %call.i186.i = call ptr @objagg_obj_get(ptr noundef %call26.i.i, ptr noundef nonnull %key.i185.i) #12
  %cmp.i.i187.i = icmp ugt ptr %call.i186.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i187.i, label %world_obj_get.exit204.thread528.i, label %if.end.i190.i

world_obj_get.exit204.thread528.i:                ; preds = %for.inc42.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call2.i188.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef 7) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key.i185.i) #12
  br label %err_world2_obj_get.thread40.i.i

if.end.i190.i:                                    ; preds = %for.inc42.i.i
  %arrayidx53.i191.i = getelementptr inbounds %struct.world, ptr %world2.i.i, i32 0, i32 4, i32 7
  %181 = ptrtoint ptr %arrayidx53.i191.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %arrayidx53.i191.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %182)
  %tobool.not54.i192.i = icmp eq i32 %182, 0
  %arrayidx6.i193.i = getelementptr inbounds %struct.world, ptr %world2.i.i, i32 0, i32 3, i32 7
  br i1 %tobool.not54.i192.i, label %key_id_index.exit43.i194.i, label %key_id_index.exit47.i197.i

key_id_index.exit43.i194.i:                       ; preds = %if.end.i190.i
  call void @__sanitizer_cov_trace_pc() #11
  %183 = ptrtoint ptr %arrayidx6.i193.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store ptr %call.i186.i, ptr %arrayidx6.i193.i, align 4
  br label %for.inc42.1.i.i

key_id_index.exit47.i197.i:                       ; preds = %if.end.i190.i
  %184 = ptrtoint ptr %arrayidx6.i193.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %arrayidx6.i193.i, align 4
  %cmp.not.i196.i = icmp eq ptr %185, %call.i186.i
  br i1 %cmp.not.i196.i, label %key_id_index.exit47.i197.i.for.inc42.1.i.i_crit_edge, label %world_obj_get.exit204.thread.i

key_id_index.exit47.i197.i.for.inc42.1.i.i_crit_edge: ; preds = %key_id_index.exit47.i197.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc42.1.i.i

world_obj_get.exit204.thread.i:                   ; preds = %key_id_index.exit47.i197.i
  call void @__sanitizer_cov_trace_pc() #11
  %call15.i198.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef 7) #13
  call void @objagg_obj_put(ptr noundef %call26.i.i, ptr noundef %call.i186.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key.i185.i) #12
  br label %err_world2_obj_get.thread40.i.i

for.inc42.1.i.i:                                  ; preds = %key_id_index.exit47.i197.i.for.inc42.1.i.i_crit_edge, %key_id_index.exit43.i194.i
  %inc.i202.i = add i32 %182, 1
  %186 = ptrtoint ptr %arrayidx53.i191.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 %inc.i202.i, ptr %arrayidx53.i191.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key.i185.i) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %key.i165.i) #12
  %187 = ptrtoint ptr %key.i165.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 3, ptr %key.i165.i, align 4
  %call.i166.i = call ptr @objagg_obj_get(ptr noundef %call26.i.i, ptr noundef nonnull %key.i165.i) #12
  %cmp.i.i167.i = icmp ugt ptr %call.i166.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i167.i, label %world_obj_get.exit184.thread529.i, label %if.end.i170.i

world_obj_get.exit184.thread529.i:                ; preds = %for.inc42.1.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call2.i168.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef 3) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key.i165.i) #12
  br label %err_world2_obj_get.thread40.i.i

if.end.i170.i:                                    ; preds = %for.inc42.1.i.i
  %arrayidx53.i171.i = getelementptr inbounds %struct.world, ptr %world2.i.i, i32 0, i32 4, i32 3
  %188 = ptrtoint ptr %arrayidx53.i171.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %arrayidx53.i171.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %189)
  %tobool.not54.i172.i = icmp eq i32 %189, 0
  %arrayidx6.i173.i = getelementptr inbounds %struct.world, ptr %world2.i.i, i32 0, i32 3, i32 3
  br i1 %tobool.not54.i172.i, label %key_id_index.exit43.i174.i, label %key_id_index.exit47.i177.i

key_id_index.exit43.i174.i:                       ; preds = %if.end.i170.i
  call void @__sanitizer_cov_trace_pc() #11
  %190 = ptrtoint ptr %arrayidx6.i173.i to i32
  call void @__asan_store4_noabort(i32 %190)
  store ptr %call.i166.i, ptr %arrayidx6.i173.i, align 4
  br label %for.inc42.2.i.i

key_id_index.exit47.i177.i:                       ; preds = %if.end.i170.i
  %191 = ptrtoint ptr %arrayidx6.i173.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %arrayidx6.i173.i, align 4
  %cmp.not.i176.i = icmp eq ptr %192, %call.i166.i
  br i1 %cmp.not.i176.i, label %key_id_index.exit47.i177.i.for.inc42.2.i.i_crit_edge, label %world_obj_get.exit184.thread.i

key_id_index.exit47.i177.i.for.inc42.2.i.i_crit_edge: ; preds = %key_id_index.exit47.i177.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc42.2.i.i

world_obj_get.exit184.thread.i:                   ; preds = %key_id_index.exit47.i177.i
  call void @__sanitizer_cov_trace_pc() #11
  %call15.i178.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef 3) #13
  call void @objagg_obj_put(ptr noundef %call26.i.i, ptr noundef %call.i166.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key.i165.i) #12
  br label %err_world2_obj_get.thread40.i.i

for.inc42.2.i.i:                                  ; preds = %key_id_index.exit47.i177.i.for.inc42.2.i.i_crit_edge, %key_id_index.exit43.i174.i
  %inc.i182.i = add i32 %189, 1
  %193 = ptrtoint ptr %arrayidx53.i171.i to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 %inc.i182.i, ptr %arrayidx53.i171.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key.i165.i) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %key.i145.i) #12
  %194 = ptrtoint ptr %key.i145.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 5, ptr %key.i145.i, align 4
  %call.i146.i = call ptr @objagg_obj_get(ptr noundef %call26.i.i, ptr noundef nonnull %key.i145.i) #12
  %cmp.i.i147.i = icmp ugt ptr %call.i146.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i147.i, label %world_obj_get.exit164.thread530.i, label %if.end.i150.i

world_obj_get.exit164.thread530.i:                ; preds = %for.inc42.2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call2.i148.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef 5) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key.i145.i) #12
  br label %err_world2_obj_get.thread40.i.i

if.end.i150.i:                                    ; preds = %for.inc42.2.i.i
  %arrayidx53.i151.i = getelementptr inbounds %struct.world, ptr %world2.i.i, i32 0, i32 4, i32 5
  %195 = ptrtoint ptr %arrayidx53.i151.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %arrayidx53.i151.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %196)
  %tobool.not54.i152.i = icmp eq i32 %196, 0
  %arrayidx6.i153.i = getelementptr inbounds %struct.world, ptr %world2.i.i, i32 0, i32 3, i32 5
  br i1 %tobool.not54.i152.i, label %key_id_index.exit43.i154.i, label %key_id_index.exit47.i157.i

key_id_index.exit43.i154.i:                       ; preds = %if.end.i150.i
  call void @__sanitizer_cov_trace_pc() #11
  %197 = ptrtoint ptr %arrayidx6.i153.i to i32
  call void @__asan_store4_noabort(i32 %197)
  store ptr %call.i146.i, ptr %arrayidx6.i153.i, align 4
  br label %for.inc42.3.i.i

key_id_index.exit47.i157.i:                       ; preds = %if.end.i150.i
  %198 = ptrtoint ptr %arrayidx6.i153.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %arrayidx6.i153.i, align 4
  %cmp.not.i156.i = icmp eq ptr %199, %call.i146.i
  br i1 %cmp.not.i156.i, label %key_id_index.exit47.i157.i.for.inc42.3.i.i_crit_edge, label %world_obj_get.exit164.thread.i

key_id_index.exit47.i157.i.for.inc42.3.i.i_crit_edge: ; preds = %key_id_index.exit47.i157.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc42.3.i.i

world_obj_get.exit164.thread.i:                   ; preds = %key_id_index.exit47.i157.i
  call void @__sanitizer_cov_trace_pc() #11
  %call15.i158.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef 5) #13
  call void @objagg_obj_put(ptr noundef %call26.i.i, ptr noundef %call.i146.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key.i145.i) #12
  br label %err_world2_obj_get.thread40.i.i

for.inc42.3.i.i:                                  ; preds = %key_id_index.exit47.i157.i.for.inc42.3.i.i_crit_edge, %key_id_index.exit43.i154.i
  %inc.i162.i = add i32 %196, 1
  %200 = ptrtoint ptr %arrayidx53.i151.i to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 %inc.i162.i, ptr %arrayidx53.i151.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key.i145.i) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %key.i125.i) #12
  %201 = ptrtoint ptr %key.i125.i to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 3, ptr %key.i125.i, align 4
  %call.i126.i = call ptr @objagg_obj_get(ptr noundef %call26.i.i, ptr noundef nonnull %key.i125.i) #12
  %cmp.i.i127.i = icmp ugt ptr %call.i126.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i127.i, label %world_obj_get.exit144.thread531.i, label %if.end.i130.i

world_obj_get.exit144.thread531.i:                ; preds = %for.inc42.3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call2.i128.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef 3) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key.i125.i) #12
  br label %err_world2_obj_get.thread40.i.i

if.end.i130.i:                                    ; preds = %for.inc42.3.i.i
  %202 = ptrtoint ptr %arrayidx53.i171.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %arrayidx53.i171.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %203)
  %tobool.not54.i132.i = icmp eq i32 %203, 0
  br i1 %tobool.not54.i132.i, label %key_id_index.exit43.i134.i, label %key_id_index.exit47.i137.i

key_id_index.exit43.i134.i:                       ; preds = %if.end.i130.i
  call void @__sanitizer_cov_trace_pc() #11
  %204 = ptrtoint ptr %arrayidx6.i173.i to i32
  call void @__asan_store4_noabort(i32 %204)
  store ptr %call.i126.i, ptr %arrayidx6.i173.i, align 4
  br label %for.inc42.4.i.i

key_id_index.exit47.i137.i:                       ; preds = %if.end.i130.i
  %205 = ptrtoint ptr %arrayidx6.i173.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %arrayidx6.i173.i, align 4
  %cmp.not.i136.i = icmp eq ptr %206, %call.i126.i
  br i1 %cmp.not.i136.i, label %key_id_index.exit47.i137.i.for.inc42.4.i.i_crit_edge, label %world_obj_get.exit144.thread.i

key_id_index.exit47.i137.i.for.inc42.4.i.i_crit_edge: ; preds = %key_id_index.exit47.i137.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc42.4.i.i

world_obj_get.exit144.thread.i:                   ; preds = %key_id_index.exit47.i137.i
  call void @__sanitizer_cov_trace_pc() #11
  %call15.i138.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef 3) #13
  call void @objagg_obj_put(ptr noundef %call26.i.i, ptr noundef %call.i126.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key.i125.i) #12
  br label %err_world2_obj_get.thread40.i.i

for.inc42.4.i.i:                                  ; preds = %key_id_index.exit47.i137.i.for.inc42.4.i.i_crit_edge, %key_id_index.exit43.i134.i
  %inc.i142.i = add i32 %203, 1
  %207 = ptrtoint ptr %arrayidx53.i171.i to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 %inc.i142.i, ptr %arrayidx53.i171.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key.i125.i) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %key.i105.i) #12
  %208 = ptrtoint ptr %key.i105.i to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 1, ptr %key.i105.i, align 4
  %call.i106.i = call ptr @objagg_obj_get(ptr noundef %call26.i.i, ptr noundef nonnull %key.i105.i) #12
  %cmp.i.i107.i = icmp ugt ptr %call.i106.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i107.i, label %world_obj_get.exit124.thread532.i, label %if.end.i110.i

world_obj_get.exit124.thread532.i:                ; preds = %for.inc42.4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call2.i108.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef 1) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key.i105.i) #12
  br label %err_world2_obj_get.thread40.i.i

if.end.i110.i:                                    ; preds = %for.inc42.4.i.i
  %209 = ptrtoint ptr %arrayidx53.i211.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %arrayidx53.i211.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %210)
  %tobool.not54.i112.i = icmp eq i32 %210, 0
  br i1 %tobool.not54.i112.i, label %key_id_index.exit43.i114.i, label %key_id_index.exit47.i117.i

key_id_index.exit43.i114.i:                       ; preds = %if.end.i110.i
  call void @__sanitizer_cov_trace_pc() #11
  %211 = ptrtoint ptr %arrayidx6.i213.i to i32
  call void @__asan_store4_noabort(i32 %211)
  store ptr %call.i106.i, ptr %arrayidx6.i213.i, align 4
  br label %for.inc42.5.i.i

key_id_index.exit47.i117.i:                       ; preds = %if.end.i110.i
  %212 = ptrtoint ptr %arrayidx6.i213.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %arrayidx6.i213.i, align 4
  %cmp.not.i116.i = icmp eq ptr %213, %call.i106.i
  br i1 %cmp.not.i116.i, label %key_id_index.exit47.i117.i.for.inc42.5.i.i_crit_edge, label %world_obj_get.exit124.thread.i

key_id_index.exit47.i117.i.for.inc42.5.i.i_crit_edge: ; preds = %key_id_index.exit47.i117.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc42.5.i.i

world_obj_get.exit124.thread.i:                   ; preds = %key_id_index.exit47.i117.i
  call void @__sanitizer_cov_trace_pc() #11
  %call15.i118.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef 1) #13
  call void @objagg_obj_put(ptr noundef %call26.i.i, ptr noundef %call.i106.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key.i105.i) #12
  br label %err_world2_obj_get.thread40.i.i

for.inc42.5.i.i:                                  ; preds = %key_id_index.exit47.i117.i.for.inc42.5.i.i_crit_edge, %key_id_index.exit43.i114.i
  %inc.i122.i = add i32 %210, 1
  %214 = ptrtoint ptr %arrayidx53.i211.i to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 %inc.i122.i, ptr %arrayidx53.i211.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key.i105.i) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %key.i85.i) #12
  %215 = ptrtoint ptr %key.i85.i to i32
  call void @__asan_store4_noabort(i32 %215)
  store i32 30, ptr %key.i85.i, align 4
  %call.i86.i = call ptr @objagg_obj_get(ptr noundef %call26.i.i, ptr noundef nonnull %key.i85.i) #12
  %cmp.i.i87.i = icmp ugt ptr %call.i86.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i87.i, label %world_obj_get.exit104.thread533.i, label %if.end.i90.i

world_obj_get.exit104.thread533.i:                ; preds = %for.inc42.5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call2.i88.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef 30) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key.i85.i) #12
  br label %err_world2_obj_get.thread40.i.i

if.end.i90.i:                                     ; preds = %for.inc42.5.i.i
  %arrayidx53.i91.i = getelementptr inbounds %struct.world, ptr %world2.i.i, i32 0, i32 4, i32 30
  %216 = ptrtoint ptr %arrayidx53.i91.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %arrayidx53.i91.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %217)
  %tobool.not54.i92.i = icmp eq i32 %217, 0
  %arrayidx6.i93.i = getelementptr inbounds %struct.world, ptr %world2.i.i, i32 0, i32 3, i32 30
  br i1 %tobool.not54.i92.i, label %key_id_index.exit43.i94.i, label %key_id_index.exit47.i97.i

key_id_index.exit43.i94.i:                        ; preds = %if.end.i90.i
  call void @__sanitizer_cov_trace_pc() #11
  %218 = ptrtoint ptr %arrayidx6.i93.i to i32
  call void @__asan_store4_noabort(i32 %218)
  store ptr %call.i86.i, ptr %arrayidx6.i93.i, align 4
  br label %for.inc42.6.i.i

key_id_index.exit47.i97.i:                        ; preds = %if.end.i90.i
  %219 = ptrtoint ptr %arrayidx6.i93.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %arrayidx6.i93.i, align 4
  %cmp.not.i96.i = icmp eq ptr %220, %call.i86.i
  br i1 %cmp.not.i96.i, label %key_id_index.exit47.i97.i.for.inc42.6.i.i_crit_edge, label %world_obj_get.exit104.thread.i

key_id_index.exit47.i97.i.for.inc42.6.i.i_crit_edge: ; preds = %key_id_index.exit47.i97.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc42.6.i.i

world_obj_get.exit104.thread.i:                   ; preds = %key_id_index.exit47.i97.i
  call void @__sanitizer_cov_trace_pc() #11
  %call15.i98.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef 30) #13
  call void @objagg_obj_put(ptr noundef %call26.i.i, ptr noundef %call.i86.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key.i85.i) #12
  br label %err_world2_obj_get.thread40.i.i

for.inc42.6.i.i:                                  ; preds = %key_id_index.exit47.i97.i.for.inc42.6.i.i_crit_edge, %key_id_index.exit43.i94.i
  %inc.i102.i = add i32 %217, 1
  %221 = ptrtoint ptr %arrayidx53.i91.i to i32
  call void @__asan_store4_noabort(i32 %221)
  store i32 %inc.i102.i, ptr %arrayidx53.i91.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key.i85.i) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %key.i65.i) #12
  %222 = ptrtoint ptr %key.i65.i to i32
  call void @__asan_store4_noabort(i32 %222)
  store i32 8, ptr %key.i65.i, align 4
  %call.i66.i = call ptr @objagg_obj_get(ptr noundef %call26.i.i, ptr noundef nonnull %key.i65.i) #12
  %cmp.i.i67.i = icmp ugt ptr %call.i66.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i67.i, label %world_obj_get.exit84.thread534.i, label %if.end.i70.i

world_obj_get.exit84.thread534.i:                 ; preds = %for.inc42.6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call2.i68.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef 8) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key.i65.i) #12
  br label %err_world2_obj_get.thread40.i.i

if.end.i70.i:                                     ; preds = %for.inc42.6.i.i
  %arrayidx53.i71.i = getelementptr inbounds %struct.world, ptr %world2.i.i, i32 0, i32 4, i32 8
  %223 = ptrtoint ptr %arrayidx53.i71.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %arrayidx53.i71.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %224)
  %tobool.not54.i72.i = icmp eq i32 %224, 0
  %arrayidx6.i73.i = getelementptr inbounds %struct.world, ptr %world2.i.i, i32 0, i32 3, i32 8
  br i1 %tobool.not54.i72.i, label %key_id_index.exit43.i74.i, label %key_id_index.exit47.i77.i

key_id_index.exit43.i74.i:                        ; preds = %if.end.i70.i
  call void @__sanitizer_cov_trace_pc() #11
  %225 = ptrtoint ptr %arrayidx6.i73.i to i32
  call void @__asan_store4_noabort(i32 %225)
  store ptr %call.i66.i, ptr %arrayidx6.i73.i, align 4
  br label %for.inc42.7.i.i

key_id_index.exit47.i77.i:                        ; preds = %if.end.i70.i
  %226 = ptrtoint ptr %arrayidx6.i73.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %arrayidx6.i73.i, align 4
  %cmp.not.i76.i = icmp eq ptr %227, %call.i66.i
  br i1 %cmp.not.i76.i, label %key_id_index.exit47.i77.i.for.inc42.7.i.i_crit_edge, label %world_obj_get.exit84.thread.i

key_id_index.exit47.i77.i.for.inc42.7.i.i_crit_edge: ; preds = %key_id_index.exit47.i77.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc42.7.i.i

world_obj_get.exit84.thread.i:                    ; preds = %key_id_index.exit47.i77.i
  call void @__sanitizer_cov_trace_pc() #11
  %call15.i78.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef 8) #13
  call void @objagg_obj_put(ptr noundef %call26.i.i, ptr noundef %call.i66.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key.i65.i) #12
  br label %err_world2_obj_get.thread40.i.i

for.inc42.7.i.i:                                  ; preds = %key_id_index.exit47.i77.i.for.inc42.7.i.i_crit_edge, %key_id_index.exit43.i74.i
  %inc.i82.i = add i32 %224, 1
  %228 = ptrtoint ptr %arrayidx53.i71.i to i32
  call void @__asan_store4_noabort(i32 %228)
  store i32 %inc.i82.i, ptr %arrayidx53.i71.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key.i65.i) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %key.i45.i) #12
  %229 = ptrtoint ptr %key.i45.i to i32
  call void @__asan_store4_noabort(i32 %229)
  store i32 8, ptr %key.i45.i, align 4
  %call.i46.i = call ptr @objagg_obj_get(ptr noundef %call26.i.i, ptr noundef nonnull %key.i45.i) #12
  %cmp.i.i47.i = icmp ugt ptr %call.i46.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i47.i, label %world_obj_get.exit64.thread535.i, label %if.end.i50.i

world_obj_get.exit64.thread535.i:                 ; preds = %for.inc42.7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call2.i48.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef 8) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key.i45.i) #12
  br label %err_world2_obj_get.thread40.i.i

if.end.i50.i:                                     ; preds = %for.inc42.7.i.i
  %230 = ptrtoint ptr %arrayidx53.i71.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %arrayidx53.i71.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %231)
  %tobool.not54.i52.i = icmp eq i32 %231, 0
  br i1 %tobool.not54.i52.i, label %key_id_index.exit43.i54.i, label %key_id_index.exit47.i57.i

key_id_index.exit43.i54.i:                        ; preds = %if.end.i50.i
  call void @__sanitizer_cov_trace_pc() #11
  %232 = ptrtoint ptr %arrayidx6.i73.i to i32
  call void @__asan_store4_noabort(i32 %232)
  store ptr %call.i46.i, ptr %arrayidx6.i73.i, align 4
  br label %for.inc42.8.i.i

key_id_index.exit47.i57.i:                        ; preds = %if.end.i50.i
  %233 = ptrtoint ptr %arrayidx6.i73.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %arrayidx6.i73.i, align 4
  %cmp.not.i56.i = icmp eq ptr %234, %call.i46.i
  br i1 %cmp.not.i56.i, label %key_id_index.exit47.i57.i.for.inc42.8.i.i_crit_edge, label %world_obj_get.exit64.thread.i

key_id_index.exit47.i57.i.for.inc42.8.i.i_crit_edge: ; preds = %key_id_index.exit47.i57.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc42.8.i.i

world_obj_get.exit64.thread.i:                    ; preds = %key_id_index.exit47.i57.i
  call void @__sanitizer_cov_trace_pc() #11
  %call15.i58.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef 8) #13
  call void @objagg_obj_put(ptr noundef %call26.i.i, ptr noundef %call.i46.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key.i45.i) #12
  br label %err_world2_obj_get.thread40.i.i

for.inc42.8.i.i:                                  ; preds = %key_id_index.exit47.i57.i.for.inc42.8.i.i_crit_edge, %key_id_index.exit43.i54.i
  %inc.i62.i = add i32 %231, 1
  %235 = ptrtoint ptr %arrayidx53.i71.i to i32
  call void @__asan_store4_noabort(i32 %235)
  store i32 %inc.i62.i, ptr %arrayidx53.i71.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key.i45.i) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %key.i25.i) #12
  %236 = ptrtoint ptr %key.i25.i to i32
  call void @__asan_store4_noabort(i32 %236)
  store i32 5, ptr %key.i25.i, align 4
  %call.i26.i = call ptr @objagg_obj_get(ptr noundef %call26.i.i, ptr noundef nonnull %key.i25.i) #12
  %cmp.i.i27.i = icmp ugt ptr %call.i26.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i27.i, label %world_obj_get.exit44.thread536.i, label %if.end.i30.i

world_obj_get.exit44.thread536.i:                 ; preds = %for.inc42.8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call2.i28.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef 5) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key.i25.i) #12
  br label %err_world2_obj_get.thread40.i.i

if.end.i30.i:                                     ; preds = %for.inc42.8.i.i
  %237 = ptrtoint ptr %arrayidx53.i151.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %arrayidx53.i151.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %238)
  %tobool.not54.i32.i = icmp eq i32 %238, 0
  br i1 %tobool.not54.i32.i, label %key_id_index.exit43.i34.i, label %key_id_index.exit47.i37.i

key_id_index.exit43.i34.i:                        ; preds = %if.end.i30.i
  call void @__sanitizer_cov_trace_pc() #11
  %239 = ptrtoint ptr %arrayidx6.i153.i to i32
  call void @__asan_store4_noabort(i32 %239)
  store ptr %call.i26.i, ptr %arrayidx6.i153.i, align 4
  br label %for.inc42.9.i.i

key_id_index.exit47.i37.i:                        ; preds = %if.end.i30.i
  %240 = ptrtoint ptr %arrayidx6.i153.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %arrayidx6.i153.i, align 4
  %cmp.not.i36.i = icmp eq ptr %241, %call.i26.i
  br i1 %cmp.not.i36.i, label %key_id_index.exit47.i37.i.for.inc42.9.i.i_crit_edge, label %world_obj_get.exit44.thread.i

key_id_index.exit47.i37.i.for.inc42.9.i.i_crit_edge: ; preds = %key_id_index.exit47.i37.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc42.9.i.i

world_obj_get.exit44.thread.i:                    ; preds = %key_id_index.exit47.i37.i
  call void @__sanitizer_cov_trace_pc() #11
  %call15.i38.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef 5) #13
  call void @objagg_obj_put(ptr noundef %call26.i.i, ptr noundef %call.i26.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key.i25.i) #12
  br label %err_world2_obj_get.thread40.i.i

for.inc42.9.i.i:                                  ; preds = %key_id_index.exit47.i37.i.for.inc42.9.i.i_crit_edge, %key_id_index.exit43.i34.i
  %inc.i42.i = add i32 %238, 1
  %242 = ptrtoint ptr %arrayidx53.i151.i to i32
  call void @__asan_store4_noabort(i32 %242)
  store i32 %inc.i42.i, ptr %arrayidx53.i151.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key.i25.i) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %key.i5.i) #12
  %243 = ptrtoint ptr %key.i5.i to i32
  call void @__asan_store4_noabort(i32 %243)
  store i32 6, ptr %key.i5.i, align 4
  %call.i6.i = call ptr @objagg_obj_get(ptr noundef %call26.i.i, ptr noundef nonnull %key.i5.i) #12
  %cmp.i.i7.i = icmp ugt ptr %call.i6.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i7.i, label %world_obj_get.exit24.thread537.i, label %if.end.i10.i

world_obj_get.exit24.thread537.i:                 ; preds = %for.inc42.9.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call2.i8.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef 6) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key.i5.i) #12
  br label %err_world2_obj_get.thread40.i.i

if.end.i10.i:                                     ; preds = %for.inc42.9.i.i
  %arrayidx53.i11.i = getelementptr inbounds %struct.world, ptr %world2.i.i, i32 0, i32 4, i32 6
  %244 = ptrtoint ptr %arrayidx53.i11.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %arrayidx53.i11.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %245)
  %tobool.not54.i12.i = icmp eq i32 %245, 0
  %arrayidx6.i13.i = getelementptr inbounds %struct.world, ptr %world2.i.i, i32 0, i32 3, i32 6
  br i1 %tobool.not54.i12.i, label %key_id_index.exit43.i14.i, label %key_id_index.exit47.i17.i

key_id_index.exit43.i14.i:                        ; preds = %if.end.i10.i
  call void @__sanitizer_cov_trace_pc() #11
  %246 = ptrtoint ptr %arrayidx6.i13.i to i32
  call void @__asan_store4_noabort(i32 %246)
  store ptr %call.i6.i, ptr %arrayidx6.i13.i, align 4
  br label %for.inc42.10.i.i

key_id_index.exit47.i17.i:                        ; preds = %if.end.i10.i
  %247 = ptrtoint ptr %arrayidx6.i13.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %arrayidx6.i13.i, align 4
  %cmp.not.i16.i = icmp eq ptr %248, %call.i6.i
  br i1 %cmp.not.i16.i, label %key_id_index.exit47.i17.i.for.inc42.10.i.i_crit_edge, label %world_obj_get.exit24.thread.i

key_id_index.exit47.i17.i.for.inc42.10.i.i_crit_edge: ; preds = %key_id_index.exit47.i17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc42.10.i.i

world_obj_get.exit24.thread.i:                    ; preds = %key_id_index.exit47.i17.i
  call void @__sanitizer_cov_trace_pc() #11
  %call15.i18.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef 6) #13
  call void @objagg_obj_put(ptr noundef %call26.i.i, ptr noundef %call.i6.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key.i5.i) #12
  br label %err_world2_obj_get.thread40.i.i

for.inc42.10.i.i:                                 ; preds = %key_id_index.exit47.i17.i.for.inc42.10.i.i_crit_edge, %key_id_index.exit43.i14.i
  %inc.i22.i = add i32 %245, 1
  %249 = ptrtoint ptr %arrayidx53.i11.i to i32
  call void @__asan_store4_noabort(i32 %249)
  store i32 %inc.i22.i, ptr %arrayidx53.i11.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key.i5.i) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %key.i.i) #12
  %250 = ptrtoint ptr %key.i.i to i32
  call void @__asan_store4_noabort(i32 %250)
  store i32 8, ptr %key.i.i, align 4
  %call.i1.i = call ptr @objagg_obj_get(ptr noundef %call26.i.i, ptr noundef nonnull %key.i.i) #12
  %cmp.i.i2.i = icmp ugt ptr %call.i1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i2.i, label %world_obj_get.exit.thread538.i, label %if.end.i.i25

world_obj_get.exit.thread538.i:                   ; preds = %for.inc42.10.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call2.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef 8) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key.i.i) #12
  br label %err_world2_obj_get.thread40.i.i

if.end.i.i25:                                     ; preds = %for.inc42.10.i.i
  %251 = ptrtoint ptr %arrayidx53.i71.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %arrayidx53.i71.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %252)
  %tobool.not54.i.i = icmp eq i32 %252, 0
  br i1 %tobool.not54.i.i, label %key_id_index.exit43.i.i, label %key_id_index.exit47.i.i

key_id_index.exit43.i.i:                          ; preds = %if.end.i.i25
  call void @__sanitizer_cov_trace_pc() #11
  %253 = ptrtoint ptr %arrayidx6.i73.i to i32
  call void @__asan_store4_noabort(i32 %253)
  store ptr %call.i1.i, ptr %arrayidx6.i73.i, align 4
  br label %for.inc42.11.i.i

key_id_index.exit47.i.i:                          ; preds = %if.end.i.i25
  %254 = ptrtoint ptr %arrayidx6.i73.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %arrayidx6.i73.i, align 4
  %cmp.not.i.i26 = icmp eq ptr %255, %call.i1.i
  br i1 %cmp.not.i.i26, label %key_id_index.exit47.i.i.for.inc42.11.i.i_crit_edge, label %world_obj_get.exit.thread.i

key_id_index.exit47.i.i.for.inc42.11.i.i_crit_edge: ; preds = %key_id_index.exit47.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc42.11.i.i

world_obj_get.exit.thread.i:                      ; preds = %key_id_index.exit47.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call15.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef 8) #13
  call void @objagg_obj_put(ptr noundef %call26.i.i, ptr noundef %call.i1.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key.i.i) #12
  br label %err_world2_obj_get.thread40.i.i

for.inc42.11.i.i:                                 ; preds = %key_id_index.exit47.i.i.for.inc42.11.i.i_crit_edge, %key_id_index.exit43.i.i
  %inc.i.i27 = add i32 %252, 1
  %256 = ptrtoint ptr %arrayidx53.i71.i to i32
  call void @__asan_store4_noabort(i32 %256)
  store i32 %inc.i.i27, ptr %arrayidx53.i71.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key.i.i) #12
  call fastcc void @pr_debug_stats(ptr noundef %call26.i.i) #12
  %call.i11.i.i = call ptr @objagg_stats_get(ptr noundef %call26.i.i) #12
  %cmp.i.i12.i.i = icmp ugt ptr %call.i11.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i12.i.i, label %if.then.i13.i.i, label %if.end.i15.i.i

if.then.i13.i.i:                                  ; preds = %for.inc42.11.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %257 = ptrtoint ptr %errmsg.i.i to i32
  call void @__asan_store4_noabort(i32 %257)
  store ptr @.str.53, ptr %errmsg.i.i, align 4
  %258 = ptrtoint ptr %call.i11.i.i to i32
  br label %check_expect_stats.exit17.i.i

if.end.i15.i.i:                                   ; preds = %for.inc42.11.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call3.i14.i.i = call fastcc i32 @__check_expect_stats(ptr noundef %call.i11.i.i, ptr noundef getelementptr inbounds ({ ptr, i32, { i32, <{ %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, [25 x %struct.expect_stats_info] }> }, { i32, <{ %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, %struct.expect_stats_info, [25 x %struct.expect_stats_info] }> } }, ptr @hints_case, i32 0, i32 3, i32 0), ptr noundef nonnull %errmsg.i.i) #12
  call void @objagg_stats_put(ptr noundef %call.i11.i.i) #12
  br label %check_expect_stats.exit17.i.i

check_expect_stats.exit17.i.i:                    ; preds = %if.end.i15.i.i, %if.then.i13.i.i
  %retval.0.i16.i.i = phi i32 [ %258, %if.then.i13.i.i ], [ %call3.i14.i.i, %if.end.i15.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i16.i.i)
  %tobool47.not.i.i = icmp eq i32 %retval.0.i16.i.i, 0
  br i1 %tobool47.not.i.i, label %check_expect_stats.exit17.i.i.for.body57.preheader.i.i_crit_edge, label %do.end51.i.i

check_expect_stats.exit17.i.i.for.body57.preheader.i.i_crit_edge: ; preds = %check_expect_stats.exit17.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body57.preheader.i.i

do.end51.i.i:                                     ; preds = %check_expect_stats.exit17.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %259 = ptrtoint ptr %errmsg.i.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %errmsg.i.i, align 4
  %call53.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, ptr noundef %260) #13
  br label %for.body57.preheader.i.i

err_world2_obj_get.thread40.i.i:                  ; preds = %world_obj_get.exit.thread.i, %world_obj_get.exit.thread538.i, %world_obj_get.exit24.thread.i, %world_obj_get.exit24.thread537.i, %world_obj_get.exit44.thread.i, %world_obj_get.exit44.thread536.i, %world_obj_get.exit64.thread.i, %world_obj_get.exit64.thread535.i, %world_obj_get.exit84.thread.i, %world_obj_get.exit84.thread534.i, %world_obj_get.exit104.thread.i, %world_obj_get.exit104.thread533.i, %world_obj_get.exit124.thread.i, %world_obj_get.exit124.thread532.i, %world_obj_get.exit144.thread.i, %world_obj_get.exit144.thread531.i, %world_obj_get.exit164.thread.i, %world_obj_get.exit164.thread530.i, %world_obj_get.exit184.thread.i, %world_obj_get.exit184.thread529.i, %world_obj_get.exit204.thread.i, %world_obj_get.exit204.thread528.i
  %i.122.lcssa.ph.i.i = phi i32 [ 1, %world_obj_get.exit204.thread.i ], [ 2, %world_obj_get.exit184.thread.i ], [ 3, %world_obj_get.exit164.thread.i ], [ 4, %world_obj_get.exit144.thread.i ], [ 5, %world_obj_get.exit124.thread.i ], [ 6, %world_obj_get.exit104.thread.i ], [ 7, %world_obj_get.exit84.thread.i ], [ 8, %world_obj_get.exit64.thread.i ], [ 9, %world_obj_get.exit44.thread.i ], [ 10, %world_obj_get.exit24.thread.i ], [ 11, %world_obj_get.exit.thread.i ], [ 1, %world_obj_get.exit204.thread528.i ], [ 2, %world_obj_get.exit184.thread529.i ], [ 3, %world_obj_get.exit164.thread530.i ], [ 4, %world_obj_get.exit144.thread531.i ], [ 5, %world_obj_get.exit124.thread532.i ], [ 6, %world_obj_get.exit104.thread533.i ], [ 7, %world_obj_get.exit84.thread534.i ], [ 8, %world_obj_get.exit64.thread535.i ], [ 9, %world_obj_get.exit44.thread536.i ], [ 10, %world_obj_get.exit24.thread537.i ], [ 11, %world_obj_get.exit.thread538.i ]
  %call37.lcssa.ph.i.i = phi ptr [ inttoptr (i32 -22 to ptr), %world_obj_get.exit204.thread.i ], [ inttoptr (i32 -22 to ptr), %world_obj_get.exit184.thread.i ], [ inttoptr (i32 -22 to ptr), %world_obj_get.exit164.thread.i ], [ inttoptr (i32 -22 to ptr), %world_obj_get.exit144.thread.i ], [ inttoptr (i32 -22 to ptr), %world_obj_get.exit124.thread.i ], [ inttoptr (i32 -22 to ptr), %world_obj_get.exit104.thread.i ], [ inttoptr (i32 -22 to ptr), %world_obj_get.exit84.thread.i ], [ inttoptr (i32 -22 to ptr), %world_obj_get.exit64.thread.i ], [ inttoptr (i32 -22 to ptr), %world_obj_get.exit44.thread.i ], [ inttoptr (i32 -22 to ptr), %world_obj_get.exit24.thread.i ], [ inttoptr (i32 -22 to ptr), %world_obj_get.exit.thread.i ], [ %call.i186.i, %world_obj_get.exit204.thread528.i ], [ %call.i166.i, %world_obj_get.exit184.thread529.i ], [ %call.i146.i, %world_obj_get.exit164.thread530.i ], [ %call.i126.i, %world_obj_get.exit144.thread531.i ], [ %call.i106.i, %world_obj_get.exit124.thread532.i ], [ %call.i86.i, %world_obj_get.exit104.thread533.i ], [ %call.i66.i, %world_obj_get.exit84.thread534.i ], [ %call.i46.i, %world_obj_get.exit64.thread535.i ], [ %call.i26.i, %world_obj_get.exit44.thread536.i ], [ %call.i6.i, %world_obj_get.exit24.thread537.i ], [ %call.i1.i, %world_obj_get.exit.thread538.i ]
  %261 = ptrtoint ptr %call37.lcssa.ph.i.i to i32
  br label %for.body57.preheader.i.i

err_world2_obj_get.i.i:                           ; preds = %world_obj_get.exit224.thread.i, %world_obj_get.exit224.thread527.i
  %retval.0.i223492.i = phi ptr [ inttoptr (i32 -22 to ptr), %world_obj_get.exit224.thread.i ], [ %call.i206.i, %world_obj_get.exit224.thread527.i ]
  %262 = ptrtoint ptr %retval.0.i223492.i to i32
  br label %for.end62.i.i

for.body57.preheader.i.i:                         ; preds = %err_world2_obj_get.thread40.i.i, %do.end51.i.i, %check_expect_stats.exit17.i.i.for.body57.preheader.i.i_crit_edge
  %err.038.i.i = phi i32 [ %261, %err_world2_obj_get.thread40.i.i ], [ 0, %check_expect_stats.exit17.i.i.for.body57.preheader.i.i_crit_edge ], [ %retval.0.i16.i.i, %do.end51.i.i ]
  %i.11936.i.i = phi i32 [ %i.122.lcssa.ph.i.i, %err_world2_obj_get.thread40.i.i ], [ 12, %check_expect_stats.exit17.i.i.for.body57.preheader.i.i_crit_edge ], [ 12, %do.end51.i.i ]
  br label %for.body57.i.i

for.body57.i.i:                                   ; preds = %for.body57.i.i.for.body57.i.i_crit_edge, %for.body57.preheader.i.i
  %i.225.in.i.i = phi i32 [ %i.225.i.i, %for.body57.i.i.for.body57.i.i_crit_edge ], [ %i.11936.i.i, %for.body57.preheader.i.i ]
  %i.225.i.i = add nsw i32 %i.225.in.i.i, -1
  %arrayidx59.i.i = getelementptr i32, ptr @hints_case_key_ids, i32 %i.225.i.i
  %263 = ptrtoint ptr %arrayidx59.i.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %arrayidx59.i.i, align 4
  call fastcc void @world_obj_put(ptr noundef nonnull %world2.i.i, ptr noundef %call.i.i20, i32 noundef %264) #12
  %cmp56.i.i = icmp ugt i32 %i.225.in.i.i, 1
  br i1 %cmp56.i.i, label %for.body57.i.i.for.body57.i.i_crit_edge, label %for.body57.i.i.for.end62.i.i_crit_edge

for.body57.i.i.for.end62.i.i_crit_edge:           ; preds = %for.body57.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end62.i.i

for.body57.i.i.for.body57.i.i_crit_edge:          ; preds = %for.body57.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body57.i.i

for.end62.i.i:                                    ; preds = %for.body57.i.i.for.end62.i.i_crit_edge, %err_world2_obj_get.i.i
  %err.037.i.i = phi i32 [ %262, %err_world2_obj_get.i.i ], [ %err.038.i.i, %for.body57.i.i.for.end62.i.i_crit_edge ]
  call void @objagg_destroy(ptr noundef %call26.i.i) #12
  br label %err_check_expect_hints_stats.i.i

err_check_expect_hints_stats.i.i:                 ; preds = %for.end62.i.i, %do.end22.i.i
  %err.1.i.i = phi i32 [ %retval.0.i8.i.i, %do.end22.i.i ], [ %err.037.i.i, %for.end62.i.i ]
  call void @objagg_hints_put(ptr noundef %call12.i.i) #12
  br label %for.body67.preheader.i.i

err_world_obj_get.thread51.i.i:                   ; preds = %world_obj_get.exit244.thread.i, %world_obj_get.exit244.thread526.i, %world_obj_get.exit264.thread.i, %world_obj_get.exit264.thread525.i, %world_obj_get.exit284.thread.i, %world_obj_get.exit284.thread524.i, %world_obj_get.exit304.thread.i, %world_obj_get.exit304.thread523.i, %world_obj_get.exit324.thread.i, %world_obj_get.exit324.thread522.i, %world_obj_get.exit344.thread.i, %world_obj_get.exit344.thread521.i, %world_obj_get.exit364.thread.i, %world_obj_get.exit364.thread520.i, %world_obj_get.exit384.thread.i, %world_obj_get.exit384.thread519.i, %world_obj_get.exit404.thread.i, %world_obj_get.exit404.thread518.i, %world_obj_get.exit424.thread.i, %world_obj_get.exit424.thread517.i, %world_obj_get.exit444.thread.i, %world_obj_get.exit444.thread516.i
  %i.021.lcssa.ph.i.i = phi i32 [ 1, %world_obj_get.exit444.thread.i ], [ 2, %world_obj_get.exit424.thread.i ], [ 3, %world_obj_get.exit404.thread.i ], [ 4, %world_obj_get.exit384.thread.i ], [ 5, %world_obj_get.exit364.thread.i ], [ 6, %world_obj_get.exit344.thread.i ], [ 7, %world_obj_get.exit324.thread.i ], [ 8, %world_obj_get.exit304.thread.i ], [ 9, %world_obj_get.exit284.thread.i ], [ 10, %world_obj_get.exit264.thread.i ], [ 11, %world_obj_get.exit244.thread.i ], [ 1, %world_obj_get.exit444.thread516.i ], [ 2, %world_obj_get.exit424.thread517.i ], [ 3, %world_obj_get.exit404.thread518.i ], [ 4, %world_obj_get.exit384.thread519.i ], [ 5, %world_obj_get.exit364.thread520.i ], [ 6, %world_obj_get.exit344.thread521.i ], [ 7, %world_obj_get.exit324.thread522.i ], [ 8, %world_obj_get.exit304.thread523.i ], [ 9, %world_obj_get.exit284.thread524.i ], [ 10, %world_obj_get.exit264.thread525.i ], [ 11, %world_obj_get.exit244.thread526.i ]
  %call3.lcssa.ph.i.i = phi ptr [ inttoptr (i32 -22 to ptr), %world_obj_get.exit444.thread.i ], [ inttoptr (i32 -22 to ptr), %world_obj_get.exit424.thread.i ], [ inttoptr (i32 -22 to ptr), %world_obj_get.exit404.thread.i ], [ inttoptr (i32 -22 to ptr), %world_obj_get.exit384.thread.i ], [ inttoptr (i32 -22 to ptr), %world_obj_get.exit364.thread.i ], [ inttoptr (i32 -22 to ptr), %world_obj_get.exit344.thread.i ], [ inttoptr (i32 -22 to ptr), %world_obj_get.exit324.thread.i ], [ inttoptr (i32 -22 to ptr), %world_obj_get.exit304.thread.i ], [ inttoptr (i32 -22 to ptr), %world_obj_get.exit284.thread.i ], [ inttoptr (i32 -22 to ptr), %world_obj_get.exit264.thread.i ], [ inttoptr (i32 -22 to ptr), %world_obj_get.exit244.thread.i ], [ %call.i426.i, %world_obj_get.exit444.thread516.i ], [ %call.i406.i, %world_obj_get.exit424.thread517.i ], [ %call.i386.i, %world_obj_get.exit404.thread518.i ], [ %call.i366.i, %world_obj_get.exit384.thread519.i ], [ %call.i346.i, %world_obj_get.exit364.thread520.i ], [ %call.i326.i, %world_obj_get.exit344.thread521.i ], [ %call.i306.i, %world_obj_get.exit324.thread522.i ], [ %call.i286.i, %world_obj_get.exit304.thread523.i ], [ %call.i266.i, %world_obj_get.exit284.thread524.i ], [ %call.i246.i, %world_obj_get.exit264.thread525.i ], [ %call.i226.i, %world_obj_get.exit244.thread526.i ]
  %265 = ptrtoint ptr %call3.lcssa.ph.i.i to i32
  br label %for.body67.preheader.i.i

err_world_obj_get.i.i:                            ; preds = %world_obj_get.exit464.thread.i, %world_obj_get.exit464.thread515.i
  %retval.0.i463467.i = phi ptr [ inttoptr (i32 -22 to ptr), %world_obj_get.exit464.thread.i ], [ %call.i446.i, %world_obj_get.exit464.thread515.i ]
  %266 = ptrtoint ptr %retval.0.i463467.i to i32
  br label %for.end72.i.i

for.body67.preheader.i.i:                         ; preds = %err_world_obj_get.thread51.i.i, %err_check_expect_hints_stats.i.i, %if.then14.i.i, %do.end.i.i24
  %err.249.i.i = phi i32 [ %265, %err_world_obj_get.thread51.i.i ], [ %err.1.i.i, %err_check_expect_hints_stats.i.i ], [ %168, %if.then14.i.i ], [ %retval.0.i.i.i, %do.end.i.i24 ]
  %i.447.i.i = phi i32 [ %i.021.lcssa.ph.i.i, %err_world_obj_get.thread51.i.i ], [ 12, %err_check_expect_hints_stats.i.i ], [ 12, %if.then14.i.i ], [ 12, %do.end.i.i24 ]
  br label %for.body67.i.i

for.body67.i.i:                                   ; preds = %for.body67.i.i.for.body67.i.i_crit_edge, %for.body67.preheader.i.i
  %i.528.in.i.i = phi i32 [ %i.528.i.i, %for.body67.i.i.for.body67.i.i_crit_edge ], [ %i.447.i.i, %for.body67.preheader.i.i ]
  %i.528.i.i = add nsw i32 %i.528.in.i.i, -1
  %arrayidx69.i.i = getelementptr i32, ptr @hints_case_key_ids, i32 %i.528.i.i
  %267 = ptrtoint ptr %arrayidx69.i.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %arrayidx69.i.i, align 4
  call fastcc void @world_obj_put(ptr noundef nonnull %world.i.i, ptr noundef %call.i.i20, i32 noundef %268) #12
  %cmp66.i.i = icmp ugt i32 %i.528.in.i.i, 1
  br i1 %cmp66.i.i, label %for.body67.i.i.for.body67.i.i_crit_edge, label %for.body67.i.i.for.end72.i.i_crit_edge

for.body67.i.i.for.end72.i.i_crit_edge:           ; preds = %for.body67.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end72.i.i

for.body67.i.i.for.body67.i.i_crit_edge:          ; preds = %for.body67.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body67.i.i

for.end72.i.i:                                    ; preds = %for.body67.i.i.for.end72.i.i_crit_edge, %err_world_obj_get.i.i
  %err.248.i.i = phi i32 [ %266, %err_world_obj_get.i.i ], [ %err.249.i.i, %for.body67.i.i.for.end72.i.i_crit_edge ]
  call void @objagg_destroy(ptr noundef %call.i.i20) #12
  br label %test_hints.exit

test_hints.exit:                                  ; preds = %for.end72.i.i, %if.then28.i.i, %if.then.i.i22
  %retval.0.i.i28 = phi i32 [ %85, %if.then.i.i22 ], [ %err.248.i.i, %for.end72.i.i ], [ %178, %if.then28.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %errmsg.i.i) #12
  call void @llvm.lifetime.end.p0(i64 392, ptr nonnull %world.i.i) #12
  call void @llvm.lifetime.end.p0(i64 392, ptr nonnull %world2.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %test_hints.exit, %test_delta.exit.cleanup_crit_edge, %test_nodelta.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.i28, %test_hints.exit ], [ %retval.0.i, %test_nodelta.exit.cleanup_crit_edge ], [ %retval.0.i19, %test_delta.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @objagg_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @objagg_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @world_obj_put(ptr nocapture noundef %world, ptr noundef %objagg, i32 noundef %key_id) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %key_id)
  %cmp.i = icmp ugt i32 %key_id, 31
  br i1 %cmp.i, label %key_id_index.exit, label %key_id_index.exit.thread

key_id_index.exit:                                ; preds = %entry
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 21, i32 noundef 9, ptr noundef null) #12
  %arrayidx = getelementptr %struct.world, ptr %world, i32 0, i32 4, i32 0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %key_id_index.exit.cleanup_crit_edge, label %do.end.i15

key_id_index.exit.cleanup_crit_edge:              ; preds = %key_id_index.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

key_id_index.exit.thread:                         ; preds = %entry
  %arrayidx19 = getelementptr %struct.world, ptr %world, i32 0, i32 4, i32 %key_id
  %2 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not20 = icmp eq i32 %3, 0
  br i1 %tobool.not20, label %key_id_index.exit.thread.cleanup_crit_edge, label %key_id_index.exit13.thread

key_id_index.exit.thread.cleanup_crit_edge:       ; preds = %key_id_index.exit.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

key_id_index.exit13.thread:                       ; preds = %key_id_index.exit.thread
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx222 = getelementptr %struct.world, ptr %world, i32 0, i32 3, i32 %key_id
  %4 = ptrtoint ptr %arrayidx222 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx222, align 4
  tail call void @objagg_obj_put(ptr noundef %objagg, ptr noundef %5) #12
  br label %key_id_index.exit17

do.end.i15:                                       ; preds = %key_id_index.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 21, i32 noundef 9, ptr noundef null) #12
  %arrayidx2 = getelementptr %struct.world, ptr %world, i32 0, i32 3, i32 0
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx2, align 4
  tail call void @objagg_obj_put(ptr noundef %objagg, ptr noundef %7) #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 21, i32 noundef 9, ptr noundef null) #12
  br label %key_id_index.exit17

key_id_index.exit17:                              ; preds = %do.end.i15, %key_id_index.exit13.thread
  %retval.0.i16 = phi i32 [ 0, %do.end.i15 ], [ %key_id, %key_id_index.exit13.thread ]
  %arrayidx5 = getelementptr %struct.world, ptr %world, i32 0, i32 4, i32 %retval.0.i16
  %8 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx5, align 4
  %dec = add i32 %9, -1
  store i32 %dec, ptr %arrayidx5, align 4
  br label %cleanup

cleanup:                                          ; preds = %key_id_index.exit17, %key_id_index.exit.thread.cleanup_crit_edge, %key_id_index.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @delta_check_dummy(ptr nocapture noundef readnone %priv, ptr nocapture noundef readnone %parent_obj, ptr nocapture noundef readnone %obj) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal nonnull ptr @delta_create_dummy(ptr nocapture noundef readnone %priv, ptr nocapture noundef readnone %parent_obj, ptr nocapture noundef readnone %obj) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  ret ptr inttoptr (i32 -95 to ptr)
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @delta_destroy_dummy(ptr nocapture noundef %priv, ptr nocapture noundef %delta_priv) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @root_create(ptr nocapture noundef %priv, ptr nocapture noundef readonly %obj, i32 noundef %id) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 132) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %1 = ptrtoint ptr %obj to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %obj, align 4
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %call7.i.i, align 8
  %buf = getelementptr inbounds %struct.root, ptr %call7.i.i, i32 0, i32 1
  %next_root_buf = getelementptr inbounds %struct.world, ptr %priv, i32 0, i32 2
  %4 = call ptr @memcpy(ptr %buf, ptr %next_root_buf, i32 128)
  %5 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %priv, align 4
  %inc = add i32 %6, 1
  store i32 %inc, ptr %priv, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %if.end ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @root_destroy(ptr nocapture noundef %priv, ptr noundef %root_priv) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %priv, align 4
  %dec = add i32 %1, -1
  store i32 %dec, ptr %priv, align 4
  tail call void @kfree(ptr noundef %root_priv) #12
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @objagg_stats_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @objagg_stats_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @prandom_bytes(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @world_obj_get(ptr nocapture noundef %world, ptr noundef %objagg, i32 noundef %key_id) unnamed_addr #4 align 64 {
entry:
  %key = alloca %struct.tokey, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %key) #12
  %0 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %key_id, ptr %key, align 4
  %call = call ptr @objagg_obj_get(ptr noundef %objagg, ptr noundef nonnull %key) #12
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %key_id) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %key_id)
  %cmp.i39 = icmp ugt i32 %key_id, 31
  br i1 %cmp.i39, label %key_id_index.exit, label %key_id_index.exit.thread

key_id_index.exit:                                ; preds = %if.end
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 21, i32 noundef 9, ptr noundef null) #12
  %arrayidx = getelementptr %struct.world, ptr %world, i32 0, i32 4, i32 0
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 21, i32 noundef 9, ptr noundef null) #12
  br i1 %tobool.not, label %key_id_index.exit.key_id_index.exit43_crit_edge, label %key_id_index.exit.key_id_index.exit47_crit_edge

key_id_index.exit.key_id_index.exit47_crit_edge:  ; preds = %key_id_index.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %key_id_index.exit47

key_id_index.exit.key_id_index.exit43_crit_edge:  ; preds = %key_id_index.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %key_id_index.exit43

key_id_index.exit.thread:                         ; preds = %if.end
  %arrayidx53 = getelementptr %struct.world, ptr %world, i32 0, i32 4, i32 %key_id
  %3 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx53, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not54 = icmp eq i32 %4, 0
  br i1 %tobool.not54, label %key_id_index.exit.thread.key_id_index.exit43_crit_edge, label %key_id_index.exit.thread.key_id_index.exit47_crit_edge

key_id_index.exit.thread.key_id_index.exit47_crit_edge: ; preds = %key_id_index.exit.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %key_id_index.exit47

key_id_index.exit.thread.key_id_index.exit43_crit_edge: ; preds = %key_id_index.exit.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %key_id_index.exit43

key_id_index.exit43:                              ; preds = %key_id_index.exit.thread.key_id_index.exit43_crit_edge, %key_id_index.exit.key_id_index.exit43_crit_edge
  %retval.0.i42 = phi i32 [ %key_id, %key_id_index.exit.thread.key_id_index.exit43_crit_edge ], [ 0, %key_id_index.exit.key_id_index.exit43_crit_edge ]
  %arrayidx6 = getelementptr %struct.world, ptr %world, i32 0, i32 3, i32 %retval.0.i42
  %5 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call, ptr %arrayidx6, align 4
  br label %if.end17

key_id_index.exit47:                              ; preds = %key_id_index.exit.thread.key_id_index.exit47_crit_edge, %key_id_index.exit.key_id_index.exit47_crit_edge
  %retval.0.i46 = phi i32 [ %key_id, %key_id_index.exit.thread.key_id_index.exit47_crit_edge ], [ 0, %key_id_index.exit.key_id_index.exit47_crit_edge ]
  %arrayidx9 = getelementptr %struct.world, ptr %world, i32 0, i32 3, i32 %retval.0.i46
  %6 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx9, align 4
  %cmp.not = icmp eq ptr %7, %call
  br i1 %cmp.not, label %key_id_index.exit47.if.end17_crit_edge, label %do.end13

key_id_index.exit47.if.end17_crit_edge:           ; preds = %key_id_index.exit47
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

do.end13:                                         ; preds = %key_id_index.exit47
  call void @__sanitizer_cov_trace_pc() #11
  %call15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %key_id) #13
  call void @objagg_obj_put(ptr noundef %objagg, ptr noundef %call) #12
  br label %cleanup

if.end17:                                         ; preds = %key_id_index.exit47.if.end17_crit_edge, %key_id_index.exit43
  br i1 %cmp.i39, label %do.end.i49, label %if.end17.key_id_index.exit51_crit_edge

if.end17.key_id_index.exit51_crit_edge:           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %key_id_index.exit51

do.end.i49:                                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 21, i32 noundef 9, ptr noundef null) #12
  br label %key_id_index.exit51

key_id_index.exit51:                              ; preds = %do.end.i49, %if.end17.key_id_index.exit51_crit_edge
  %retval.0.i50 = phi i32 [ 0, %do.end.i49 ], [ %key_id, %if.end17.key_id_index.exit51_crit_edge ]
  %arrayidx20 = getelementptr %struct.world, ptr %world, i32 0, i32 4, i32 %retval.0.i50
  %8 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx20, align 4
  %inc = add i32 %9, 1
  store i32 %inc, ptr %arrayidx20, align 4
  br label %cleanup

cleanup:                                          ; preds = %key_id_index.exit51, %do.end13, %do.end
  %retval.0 = phi ptr [ %call, %do.end ], [ inttoptr (i32 -22 to ptr), %do.end13 ], [ %call, %key_id_index.exit51 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key) #12
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @objagg_obj_root_priv(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @objagg_obj_put(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @objagg_obj_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @delta_check(ptr nocapture noundef readnone %priv, ptr nocapture noundef readonly %parent_obj, ptr nocapture noundef readonly %obj) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %obj to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %obj, align 4
  %2 = ptrtoint ptr %parent_obj to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %parent_obj, align 4
  %sub = sub i32 %1, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %sub)
  %4 = icmp ult i32 %sub, 6
  ret i1 %4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @delta_create(ptr nocapture noundef %priv, ptr nocapture noundef readonly %parent_obj, ptr nocapture noundef readonly %obj) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %obj to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %obj, align 4
  %2 = ptrtoint ptr %parent_obj to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %parent_obj, align 4
  %sub = sub i32 %1, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %sub)
  %4 = icmp ult i32 %sub, 6
  br i1 %4, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 4) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %sub, ptr %call7.i.i, align 8
  %delta_count = getelementptr inbounds %struct.world, ptr %priv, i32 0, i32 1
  %7 = ptrtoint ptr %delta_count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %delta_count, align 4
  %inc = add i32 %8, 1
  store i32 %inc, ptr %delta_count, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %if.end6 ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @delta_destroy(ptr nocapture noundef %priv, ptr noundef %delta_priv) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %delta_count = getelementptr inbounds %struct.world, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %delta_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %delta_count, align 4
  %dec = add i32 %1, -1
  store i32 %dec, ptr %delta_count, align 4
  tail call void @kfree(ptr noundef %delta_priv) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__check_expect_stats(ptr nocapture noundef readonly %stats, ptr nocapture noundef readonly %expect_stats, ptr noundef writeonly %errmsg) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %stats_info_count = getelementptr inbounds %struct.objagg_stats, ptr %stats, i32 0, i32 1
  %0 = ptrtoint ptr %stats_info_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %stats_info_count, align 4
  %2 = ptrtoint ptr %expect_stats to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %expect_stats, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not = icmp eq i32 %1, %3
  br i1 %cmp.not, label %for.cond.preheader, label %entry.cleanup.sink.split_crit_edge

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

for.cond.preheader:                               ; preds = %entry
  %4 = ptrtoint ptr %stats_info_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stats_info_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp250.not = icmp eq i32 %5, 0
  br i1 %cmp250.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %tobool.not.i = icmp eq ptr %errmsg, null
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.051 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.objagg_stats, ptr %stats, i32 0, i32 2, i32 %i.051
  %arrayidx3 = getelementptr %struct.expect_stats, ptr %expect_stats, i32 0, i32 1, i32 %i.051
  %is_root.i = getelementptr %struct.objagg_stats, ptr %stats, i32 0, i32 2, i32 %i.051, i32 2
  %6 = ptrtoint ptr %is_root.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %is_root.i, align 4, !range !151
  %is_root1.i = getelementptr %struct.expect_stats, ptr %expect_stats, i32 0, i32 1, i32 %i.051, i32 1
  %8 = ptrtoint ptr %is_root1.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %is_root1.i, align 4, !range !151
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %9)
  %cmp.not.i = icmp eq i8 %7, %9
  br i1 %cmp.not.i, label %if.end7.i, label %if.then.i

if.then.i:                                        ; preds = %for.body
  br i1 %tobool.not.i, label %if.then.i.cleanup_crit_edge, label %if.then.i.cleanup.sink.split_crit_edge

if.then.i.cleanup.sink.split_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7.i:                                        ; preds = %for.body
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %12 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp10.not.i = icmp eq i32 %11, %13
  br i1 %cmp10.not.i, label %if.end16.i, label %if.then12.i

if.then12.i:                                      ; preds = %if.end7.i
  br i1 %tobool.not.i, label %if.then12.i.cleanup_crit_edge, label %if.then12.i.cleanup.sink.split_crit_edge

if.then12.i.cleanup.sink.split_crit_edge:         ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.then12.i.cleanup_crit_edge:                    ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16.i:                                       ; preds = %if.end7.i
  %delta_user_count.i = getelementptr inbounds %struct.objagg_obj_stats, ptr %arrayidx, i32 0, i32 1
  %14 = ptrtoint ptr %delta_user_count.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %delta_user_count.i, align 4
  %delta_user_count19.i = getelementptr inbounds %struct.objagg_obj_stats, ptr %arrayidx3, i32 0, i32 1
  %16 = ptrtoint ptr %delta_user_count19.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %delta_user_count19.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp20.not.i = icmp eq i32 %15, %17
  br i1 %cmp20.not.i, label %if.end5, label %if.then22.i

if.then22.i:                                      ; preds = %if.end16.i
  br i1 %tobool.not.i, label %if.then22.i.cleanup_crit_edge, label %if.then22.i.cleanup.sink.split_crit_edge

if.then22.i.cleanup.sink.split_crit_edge:         ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.then22.i.cleanup_crit_edge:                    ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end16.i
  %objagg_obj.i = getelementptr %struct.objagg_stats, ptr %stats, i32 0, i32 2, i32 %i.051, i32 1
  %18 = ptrtoint ptr %objagg_obj.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %objagg_obj.i, align 4
  %call.i.i = tail call ptr @objagg_obj_root_priv(ptr noundef %19) #12
  %20 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %call.i.i, align 4
  %call1.i.i = tail call ptr @objagg_obj_delta_priv(ptr noundef %19) #12
  %tobool.not.i.i = icmp eq ptr %call1.i.i, null
  br i1 %tobool.not.i.i, label %if.end5.obj_to_key_id.exit.i_crit_edge, label %if.then.i.i

if.end5.obj_to_key_id.exit.i_crit_edge:           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %obj_to_key_id.exit.i

if.then.i.i:                                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %call1.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %call1.i.i, align 4
  %add.i.i = add i32 %23, %21
  br label %obj_to_key_id.exit.i

obj_to_key_id.exit.i:                             ; preds = %if.then.i.i, %if.end5.obj_to_key_id.exit.i_crit_edge
  %key_id.0.i.i = phi i32 [ %add.i.i, %if.then.i.i ], [ %21, %if.end5.obj_to_key_id.exit.i_crit_edge ]
  %key_id.i = getelementptr %struct.expect_stats, ptr %expect_stats, i32 0, i32 1, i32 %i.051, i32 2
  %24 = ptrtoint ptr %key_id.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %key_id.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %key_id.0.i.i, i32 %25)
  %cmp.not.i38 = icmp eq i32 %key_id.0.i.i, %25
  br i1 %cmp.not.i38, label %obj_to_key_id.exit.i.for.inc_crit_edge, label %if.then.i39

obj_to_key_id.exit.i.for.inc_crit_edge:           ; preds = %obj_to_key_id.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then.i39:                                      ; preds = %obj_to_key_id.exit.i
  br i1 %tobool.not.i, label %if.then.i39.for.cond.i.preheader_crit_edge, label %if.then1.i

if.then.i39.for.cond.i.preheader_crit_edge:       ; preds = %if.then.i39
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.preheader

if.then1.i:                                       ; preds = %if.then.i39
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %errmsg to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @.str.58, ptr %errmsg, align 4
  br label %for.cond.i.preheader

for.cond.i.preheader:                             ; preds = %if.then1.i, %if.then.i39.for.cond.i.preheader_crit_edge
  br label %for.cond.i

for.cond.i:                                       ; preds = %obj_to_key_id.exit.i.i.for.cond.i_crit_edge, %for.cond.i.preheader
  %i.0.in.i = phi i32 [ %i.0.i, %obj_to_key_id.exit.i.i.for.cond.i_crit_edge ], [ %i.051, %for.cond.i.preheader ]
  %i.0.i = add i32 %i.0.in.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.0.i)
  %cmp.i = icmp sgt i32 %i.0.i, -1
  br i1 %cmp.i, label %for.body.i, label %for.cond.i.for.cond10.i.preheader_crit_edge

for.cond.i.for.cond10.i.preheader_crit_edge:      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond10.i.preheader

for.cond10.i.preheader:                           ; preds = %if.end16.i.i.for.cond10.i.preheader_crit_edge, %if.end7.i.i.for.cond10.i.preheader_crit_edge, %for.body.i.for.cond10.i.preheader_crit_edge, %for.cond.i.for.cond10.i.preheader_crit_edge
  br label %for.cond10.i

for.body.i:                                       ; preds = %for.cond.i
  %arrayidx.i = getelementptr %struct.objagg_stats, ptr %stats, i32 0, i32 2, i32 %i.0.i
  %is_root.i.i = getelementptr %struct.objagg_stats, ptr %stats, i32 0, i32 2, i32 %i.0.i, i32 2
  %27 = ptrtoint ptr %is_root.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %is_root.i.i, align 4, !range !151
  %29 = ptrtoint ptr %is_root1.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %is_root1.i, align 4, !range !151
  call void @__sanitizer_cov_trace_cmp1(i8 %28, i8 %30)
  %cmp.not.i.i = icmp eq i8 %28, %30
  br i1 %cmp.not.i.i, label %if.end7.i.i, label %for.body.i.for.cond10.i.preheader_crit_edge

for.body.i.for.cond10.i.preheader_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond10.i.preheader

if.end7.i.i:                                      ; preds = %for.body.i
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.i, align 4
  %33 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %34)
  %cmp10.not.i.i = icmp eq i32 %32, %34
  br i1 %cmp10.not.i.i, label %if.end16.i.i, label %if.end7.i.i.for.cond10.i.preheader_crit_edge

if.end7.i.i.for.cond10.i.preheader_crit_edge:     ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond10.i.preheader

if.end16.i.i:                                     ; preds = %if.end7.i.i
  %delta_user_count.i.i = getelementptr inbounds %struct.objagg_obj_stats, ptr %arrayidx.i, i32 0, i32 1
  %35 = ptrtoint ptr %delta_user_count.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %delta_user_count.i.i, align 4
  %37 = ptrtoint ptr %delta_user_count19.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %delta_user_count19.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %38)
  %cmp20.not.i.i = icmp eq i32 %36, %38
  br i1 %cmp20.not.i.i, label %if.end.i, label %if.end16.i.i.for.cond10.i.preheader_crit_edge

if.end16.i.i.for.cond10.i.preheader_crit_edge:    ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond10.i.preheader

if.end.i:                                         ; preds = %if.end16.i.i
  %objagg_obj.i.i = getelementptr %struct.objagg_stats, ptr %stats, i32 0, i32 2, i32 %i.0.i, i32 1
  %39 = ptrtoint ptr %objagg_obj.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %objagg_obj.i.i, align 4
  %call.i.i.i = tail call ptr @objagg_obj_root_priv(ptr noundef %40) #12
  %41 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %call.i.i.i, align 4
  %call1.i.i.i = tail call ptr @objagg_obj_delta_priv(ptr noundef %40) #12
  %tobool.not.i.i.i = icmp eq ptr %call1.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.end.i.obj_to_key_id.exit.i.i_crit_edge, label %if.then.i.i.i

if.end.i.obj_to_key_id.exit.i.i_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %obj_to_key_id.exit.i.i

if.then.i.i.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %43 = ptrtoint ptr %call1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %call1.i.i.i, align 4
  %add.i.i.i = add i32 %44, %42
  br label %obj_to_key_id.exit.i.i

obj_to_key_id.exit.i.i:                           ; preds = %if.then.i.i.i, %if.end.i.obj_to_key_id.exit.i.i_crit_edge
  %key_id.0.i.i.i = phi i32 [ %add.i.i.i, %if.then.i.i.i ], [ %42, %if.end.i.obj_to_key_id.exit.i.i_crit_edge ]
  %45 = ptrtoint ptr %key_id.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %key_id.i, align 4
  %cmp.not.i54.i = icmp eq i32 %key_id.0.i.i.i, %46
  br i1 %cmp.not.i54.i, label %obj_to_key_id.exit.i.i.for.inc_crit_edge, label %obj_to_key_id.exit.i.i.for.cond.i_crit_edge

obj_to_key_id.exit.i.i.for.cond.i_crit_edge:      ; preds = %obj_to_key_id.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

obj_to_key_id.exit.i.i.for.inc_crit_edge:         ; preds = %obj_to_key_id.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.cond10.i:                                     ; preds = %obj_to_key_id.exit.i80.i.for.cond10.i_crit_edge, %for.cond10.i.preheader
  %i.1.in.i = phi i32 [ %i.1.i, %obj_to_key_id.exit.i80.i.for.cond10.i_crit_edge ], [ %i.051, %for.cond10.i.preheader ]
  %i.1.i = add nuw i32 %i.1.in.i, 1
  %47 = ptrtoint ptr %stats_info_count to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %stats_info_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1.i, i32 %48)
  %cmp11.i = icmp ult i32 %i.1.i, %48
  br i1 %cmp11.i, label %for.body12.i, label %for.cond10.i.cleanup_crit_edge

for.cond10.i.cleanup_crit_edge:                   ; preds = %for.cond10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body12.i:                                     ; preds = %for.cond10.i
  %arrayidx14.i = getelementptr %struct.objagg_stats, ptr %stats, i32 0, i32 2, i32 %i.1.i
  %is_root.i57.i = getelementptr %struct.objagg_stats, ptr %stats, i32 0, i32 2, i32 %i.1.i, i32 2
  %49 = ptrtoint ptr %is_root.i57.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %is_root.i57.i, align 4, !range !151
  %51 = ptrtoint ptr %is_root1.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %is_root1.i, align 4, !range !151
  call void @__sanitizer_cov_trace_cmp1(i8 %50, i8 %52)
  %cmp.not.i59.i = icmp eq i8 %50, %52
  br i1 %cmp.not.i59.i, label %if.end7.i62.i, label %for.body12.i.cleanup_crit_edge

for.body12.i.cleanup_crit_edge:                   ; preds = %for.body12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7.i62.i:                                    ; preds = %for.body12.i
  %53 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx14.i, align 4
  %55 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %56)
  %cmp10.not.i61.i = icmp eq i32 %54, %56
  br i1 %cmp10.not.i61.i, label %if.end16.i67.i, label %if.end7.i62.i.cleanup_crit_edge

if.end7.i62.i.cleanup_crit_edge:                  ; preds = %if.end7.i62.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16.i67.i:                                   ; preds = %if.end7.i62.i
  %delta_user_count.i64.i = getelementptr inbounds %struct.objagg_obj_stats, ptr %arrayidx14.i, i32 0, i32 1
  %57 = ptrtoint ptr %delta_user_count.i64.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %delta_user_count.i64.i, align 4
  %59 = ptrtoint ptr %delta_user_count19.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %delta_user_count19.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %60)
  %cmp20.not.i66.i = icmp eq i32 %58, %60
  br i1 %cmp20.not.i66.i, label %if.end20.i, label %if.end16.i67.i.cleanup_crit_edge

if.end16.i67.i.cleanup_crit_edge:                 ; preds = %if.end16.i67.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end20.i:                                       ; preds = %if.end16.i67.i
  %objagg_obj.i71.i = getelementptr %struct.objagg_stats, ptr %stats, i32 0, i32 2, i32 %i.1.i, i32 1
  %61 = ptrtoint ptr %objagg_obj.i71.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %objagg_obj.i71.i, align 4
  %call.i.i72.i = tail call ptr @objagg_obj_root_priv(ptr noundef %62) #12
  %63 = ptrtoint ptr %call.i.i72.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %call.i.i72.i, align 4
  %call1.i.i73.i = tail call ptr @objagg_obj_delta_priv(ptr noundef %62) #12
  %tobool.not.i.i74.i = icmp eq ptr %call1.i.i73.i, null
  br i1 %tobool.not.i.i74.i, label %if.end20.i.obj_to_key_id.exit.i80.i_crit_edge, label %if.then.i.i76.i

if.end20.i.obj_to_key_id.exit.i80.i_crit_edge:    ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %obj_to_key_id.exit.i80.i

if.then.i.i76.i:                                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #11
  %65 = ptrtoint ptr %call1.i.i73.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %call1.i.i73.i, align 4
  %add.i.i75.i = add i32 %66, %64
  br label %obj_to_key_id.exit.i80.i

obj_to_key_id.exit.i80.i:                         ; preds = %if.then.i.i76.i, %if.end20.i.obj_to_key_id.exit.i80.i_crit_edge
  %key_id.0.i.i77.i = phi i32 [ %add.i.i75.i, %if.then.i.i76.i ], [ %64, %if.end20.i.obj_to_key_id.exit.i80.i_crit_edge ]
  %67 = ptrtoint ptr %key_id.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %key_id.i, align 4
  %cmp.not.i79.i = icmp eq i32 %key_id.0.i.i77.i, %68
  br i1 %cmp.not.i79.i, label %obj_to_key_id.exit.i80.i.for.inc_crit_edge, label %obj_to_key_id.exit.i80.i.for.cond10.i_crit_edge

obj_to_key_id.exit.i80.i.for.cond10.i_crit_edge:  ; preds = %obj_to_key_id.exit.i80.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond10.i

obj_to_key_id.exit.i80.i.for.inc_crit_edge:       ; preds = %obj_to_key_id.exit.i80.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.inc:                                          ; preds = %obj_to_key_id.exit.i80.i.for.inc_crit_edge, %obj_to_key_id.exit.i.i.for.inc_crit_edge, %obj_to_key_id.exit.i.for.inc_crit_edge
  %inc = add nuw i32 %i.051, 1
  %69 = ptrtoint ptr %stats_info_count to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %stats_info_count, align 4
  %cmp2 = icmp ult i32 %inc, %70
  br i1 %cmp2, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup.sink.split:                               ; preds = %if.then22.i.cleanup.sink.split_crit_edge, %if.then12.i.cleanup.sink.split_crit_edge, %if.then.i.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.str.57.sink.i.sink = phi ptr [ @.str.54, %entry.cleanup.sink.split_crit_edge ], [ @.str.55, %if.then.i.cleanup.sink.split_crit_edge ], [ @.str.56, %if.then12.i.cleanup.sink.split_crit_edge ], [ @.str.57, %if.then22.i.cleanup.sink.split_crit_edge ]
  %71 = ptrtoint ptr %errmsg to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %.str.57.sink.i.sink, ptr %errmsg, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.inc.cleanup_crit_edge, %if.end16.i67.i.cleanup_crit_edge, %if.end7.i62.i.cleanup_crit_edge, %for.body12.i.cleanup_crit_edge, %for.cond10.i.cleanup_crit_edge, %if.then22.i.cleanup_crit_edge, %if.then12.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then.i.cleanup_crit_edge ], [ -22, %if.then12.i.cleanup_crit_edge ], [ -22, %if.then22.i.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ -22, %cleanup.sink.split ], [ -22, %if.end16.i67.i.cleanup_crit_edge ], [ -22, %if.end7.i62.i.cleanup_crit_edge ], [ -22, %for.body12.i.cleanup_crit_edge ], [ -22, %for.cond10.i.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @objagg_obj_delta_priv(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pr_debug_stats(ptr noundef %objagg) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call ptr @objagg_stats_get(ptr noundef %objagg) #12
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %stats_info_count.i = getelementptr inbounds %struct.objagg_stats, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %stats_info_count.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %stats_info_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp24.not.i = icmp eq i32 %1, 0
  br i1 %cmp24.not.i, label %if.end.__pr_debug_stats.exit_crit_edge, label %if.end.do.body.i_crit_edge

if.end.do.body.i_crit_edge:                       ; preds = %if.end
  br label %do.body.i

if.end.__pr_debug_stats.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %__pr_debug_stats.exit

do.body.i:                                        ; preds = %for.inc.i.do.body.i_crit_edge, %if.end.do.body.i_crit_edge
  %i.025.i = phi i32 [ %inc.i, %for.inc.i.do.body.i_crit_edge ], [ 0, %if.end.do.body.i_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__pr_debug_stats.__UNIQUE_ID_ddebug173, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pr_debug_stats, %if.then.i)) #12
          to label %for.inc.i [label %if.then.i], !srcloc !152

if.then.i:                                        ; preds = %do.body.i
  %arrayidx.i = getelementptr %struct.objagg_stats, ptr %call, i32 0, i32 2, i32 %i.025.i
  %objagg_obj.i = getelementptr %struct.objagg_stats, ptr %call, i32 0, i32 2, i32 %i.025.i, i32 1
  %2 = ptrtoint ptr %objagg_obj.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %objagg_obj.i, align 4
  %call.i.i = tail call ptr @objagg_obj_root_priv(ptr noundef %3) #12
  %4 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %call.i.i, align 4
  %call1.i.i = tail call ptr @objagg_obj_delta_priv(ptr noundef %3) #12
  %tobool.not.i.i = icmp eq ptr %call1.i.i, null
  br i1 %tobool.not.i.i, label %if.then.i.obj_to_key_id.exit.i_crit_edge, label %if.then.i.i

if.then.i.obj_to_key_id.exit.i_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %obj_to_key_id.exit.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %call1.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %call1.i.i, align 4
  %add.i.i = add i32 %7, %5
  br label %obj_to_key_id.exit.i

obj_to_key_id.exit.i:                             ; preds = %if.then.i.i, %if.then.i.obj_to_key_id.exit.i_crit_edge
  %key_id.0.i.i = phi i32 [ %add.i.i, %if.then.i.i ], [ %5, %if.then.i.obj_to_key_id.exit.i_crit_edge ]
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  %delta_user_count.i = getelementptr inbounds %struct.objagg_obj_stats, ptr %arrayidx.i, i32 0, i32 1
  %10 = ptrtoint ptr %delta_user_count.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %delta_user_count.i, align 4
  %is_root.i = getelementptr %struct.objagg_stats, ptr %call, i32 0, i32 2, i32 %i.025.i, i32 2
  %12 = ptrtoint ptr %is_root.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %is_root.i, align 4, !range !151
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool12.not.i = icmp eq i8 %13, 0
  %cond.i = select i1 %tobool12.not.i, ptr @.str.73, ptr @.str.72
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__pr_debug_stats.__UNIQUE_ID_ddebug173, ptr noundef nonnull @.str.71, i32 noundef %i.025.i, i32 noundef %key_id.0.i.i, i32 noundef %9, i32 noundef %11, ptr noundef nonnull %cond.i) #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %obj_to_key_id.exit.i, %do.body.i
  %inc.i = add nuw i32 %i.025.i, 1
  %14 = ptrtoint ptr %stats_info_count.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %stats_info_count.i, align 4
  %cmp.i4 = icmp ult i32 %inc.i, %15
  br i1 %cmp.i4, label %for.inc.i.do.body.i_crit_edge, label %for.inc.i.__pr_debug_stats.exit_crit_edge

for.inc.i.__pr_debug_stats.exit_crit_edge:        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__pr_debug_stats.exit

for.inc.i.do.body.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

__pr_debug_stats.exit:                            ; preds = %for.inc.i.__pr_debug_stats.exit_crit_edge, %if.end.__pr_debug_stats.exit_crit_edge
  tail call void @objagg_stats_put(ptr noundef %call) #12
  br label %cleanup

cleanup:                                          ; preds = %__pr_debug_stats.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @objagg_hints_get(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pr_debug_hints_stats(ptr noundef %objagg_hints) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call ptr @objagg_hints_stats_get(ptr noundef %objagg_hints) #12
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %stats_info_count.i = getelementptr inbounds %struct.objagg_stats, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %stats_info_count.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %stats_info_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp24.not.i = icmp eq i32 %1, 0
  br i1 %cmp24.not.i, label %if.end.__pr_debug_stats.exit_crit_edge, label %if.end.do.body.i_crit_edge

if.end.do.body.i_crit_edge:                       ; preds = %if.end
  br label %do.body.i

if.end.__pr_debug_stats.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %__pr_debug_stats.exit

do.body.i:                                        ; preds = %for.inc.i.do.body.i_crit_edge, %if.end.do.body.i_crit_edge
  %i.025.i = phi i32 [ %inc.i, %for.inc.i.do.body.i_crit_edge ], [ 0, %if.end.do.body.i_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__pr_debug_stats.__UNIQUE_ID_ddebug173, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pr_debug_hints_stats, %if.then.i)) #12
          to label %for.inc.i [label %if.then.i], !srcloc !152

if.then.i:                                        ; preds = %do.body.i
  %arrayidx.i = getelementptr %struct.objagg_stats, ptr %call, i32 0, i32 2, i32 %i.025.i
  %objagg_obj.i = getelementptr %struct.objagg_stats, ptr %call, i32 0, i32 2, i32 %i.025.i, i32 1
  %2 = ptrtoint ptr %objagg_obj.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %objagg_obj.i, align 4
  %call.i.i = tail call ptr @objagg_obj_root_priv(ptr noundef %3) #12
  %4 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %call.i.i, align 4
  %call1.i.i = tail call ptr @objagg_obj_delta_priv(ptr noundef %3) #12
  %tobool.not.i.i = icmp eq ptr %call1.i.i, null
  br i1 %tobool.not.i.i, label %if.then.i.obj_to_key_id.exit.i_crit_edge, label %if.then.i.i

if.then.i.obj_to_key_id.exit.i_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %obj_to_key_id.exit.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %call1.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %call1.i.i, align 4
  %add.i.i = add i32 %7, %5
  br label %obj_to_key_id.exit.i

obj_to_key_id.exit.i:                             ; preds = %if.then.i.i, %if.then.i.obj_to_key_id.exit.i_crit_edge
  %key_id.0.i.i = phi i32 [ %add.i.i, %if.then.i.i ], [ %5, %if.then.i.obj_to_key_id.exit.i_crit_edge ]
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  %delta_user_count.i = getelementptr inbounds %struct.objagg_obj_stats, ptr %arrayidx.i, i32 0, i32 1
  %10 = ptrtoint ptr %delta_user_count.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %delta_user_count.i, align 4
  %is_root.i = getelementptr %struct.objagg_stats, ptr %call, i32 0, i32 2, i32 %i.025.i, i32 2
  %12 = ptrtoint ptr %is_root.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %is_root.i, align 4, !range !151
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool12.not.i = icmp eq i8 %13, 0
  %cond.i = select i1 %tobool12.not.i, ptr @.str.73, ptr @.str.72
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__pr_debug_stats.__UNIQUE_ID_ddebug173, ptr noundef nonnull @.str.71, i32 noundef %i.025.i, i32 noundef %key_id.0.i.i, i32 noundef %9, i32 noundef %11, ptr noundef nonnull %cond.i) #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %obj_to_key_id.exit.i, %do.body.i
  %inc.i = add nuw i32 %i.025.i, 1
  %14 = ptrtoint ptr %stats_info_count.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %stats_info_count.i, align 4
  %cmp.i4 = icmp ult i32 %inc.i, %15
  br i1 %cmp.i4, label %for.inc.i.do.body.i_crit_edge, label %for.inc.i.__pr_debug_stats.exit_crit_edge

for.inc.i.__pr_debug_stats.exit_crit_edge:        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__pr_debug_stats.exit

for.inc.i.do.body.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

__pr_debug_stats.exit:                            ; preds = %for.inc.i.__pr_debug_stats.exit_crit_edge, %if.end.__pr_debug_stats.exit_crit_edge
  tail call void @objagg_stats_put(ptr noundef %call) #12
  br label %cleanup

cleanup:                                          ; preds = %__pr_debug_stats.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @objagg_hints_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @objagg_hints_stats_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
  ret void
}

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nounwind uwtable(sync) }
attributes #11 = { nomerge }
attributes #12 = { nounwind }
attributes #13 = { cold nounwind }
attributes #14 = { nobuiltin nounwind }
attributes #15 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !16, !17, !18, !19, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !66, !68, !69, !70, !72, !74, !75, !76, !77, !79, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !93, !94, !96, !97, !98, !100, !101, !102, !104, !106, !108, !110, !112, !114, !116, !118, !119, !120, !121, !123, !124, !125, !127, !128, !129, !131, !132, !133, !134, !135, !136, !137, !139}
!llvm.module.flags = !{!141, !142, !143, !144, !145, !146, !147}
!llvm.ident = !{!148}

!0 = !{ptr @__initcall__kmod_test_objagg__174_1017_test_objagg_init6, !1, !"__initcall__kmod_test_objagg__174_1017_test_objagg_init6", i1 false, i1 false}
!1 = !{!"../lib/test_objagg.c", i32 1017, i32 1}
!2 = !{ptr @__exitcall_test_objagg_exit, !3, !"__exitcall_test_objagg_exit", i1 false, i1 false}
!3 = !{!"../lib/test_objagg.c", i32 1018, i32 1}
!4 = !{ptr @__UNIQUE_ID_file175, !5, !"__UNIQUE_ID_file175", i1 false, i1 false}
!5 = !{!"../lib/test_objagg.c", i32 1019, i32 1}
!6 = !{ptr @__UNIQUE_ID_license176, !5, !"__UNIQUE_ID_license176", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author177, !8, !"__UNIQUE_ID_author177", i1 false, i1 false}
!8 = !{!"../lib/test_objagg.c", i32 1020, i32 1}
!9 = !{ptr @__UNIQUE_ID_description178, !10, !"__UNIQUE_ID_description178", i1 false, i1 false}
!10 = !{!"../lib/test_objagg.c", i32 1021, i32 1}
!11 = !{ptr @nodelta_ops, !12, !"nodelta_ops", i1 false, i1 false}
!12 = !{!"../lib/test_objagg.c", i32 295, i32 32}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../lib/test_objagg.c", i32 236, i32 3}
!15 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @check_stats_zero._entry, !14, !"_entry", i1 false, i1 false}
!18 = !{ptr @check_stats_zero._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../lib/test_objagg.c", i32 165, i32 3}
!21 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @test_nodelta_obj_get._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @test_nodelta_obj_get._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../lib/test_objagg.c", i32 170, i32 4}
!26 = !{ptr @test_nodelta_obj_get._entry.5, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @test_nodelta_obj_get._entry_ptr.7, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../lib/test_objagg.c", i32 176, i32 4}
!30 = !{ptr @test_nodelta_obj_get._entry.8, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @test_nodelta_obj_get._entry_ptr.10, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../lib/test_objagg.c", i32 184, i32 3}
!34 = !{ptr @test_nodelta_obj_get._entry.11, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @test_nodelta_obj_get._entry_ptr.13, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../lib/test_objagg.c", i32 190, i32 3}
!38 = !{ptr @test_nodelta_obj_get._entry.14, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @test_nodelta_obj_get._entry_ptr.16, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../lib/test_objagg.c", i32 57, i32 3}
!42 = !{ptr @world_obj_get._entry, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @world_obj_get._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../lib/test_objagg.c", i32 63, i32 3}
!46 = !{ptr @world_obj_get._entry.18, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @world_obj_get._entry_ptr.20, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../lib/test_objagg.c", i32 255, i32 3}
!50 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @check_stats_nodelta._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @check_stats_nodelta._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.24, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../lib/test_objagg.c", i32 263, i32 4}
!55 = !{ptr @check_stats_nodelta._entry.23, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @check_stats_nodelta._entry_ptr.25, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../lib/test_objagg.c", i32 268, i32 4}
!59 = !{ptr @check_stats_nodelta._entry.26, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @check_stats_nodelta._entry_ptr.28, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../lib/test_objagg.c", i32 213, i32 4}
!63 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @test_nodelta_obj_put._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @test_nodelta_obj_put._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../lib/test_objagg.c", i32 218, i32 4}
!68 = !{ptr @test_nodelta_obj_put._entry.31, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @test_nodelta_obj_put._entry_ptr.33, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @delta_ops, !71, !"delta_ops", i1 false, i1 false}
!71 = !{!"../lib/test_objagg.c", i32 374, i32 32}
!72 = !{ptr @.str.34, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../lib/test_objagg.c", i32 793, i32 3}
!74 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @test_delta_action_item._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @test_delta_action_item._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.36, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../lib/test_objagg.c", i32 571, i32 4}
!79 = !{ptr @.str.37, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @check_expect._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @check_expect._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.39, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../lib/test_objagg.c", i32 580, i32 4}
!84 = !{ptr @check_expect._entry.38, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @check_expect._entry_ptr.40, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.42, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../lib/test_objagg.c", i32 589, i32 4}
!88 = !{ptr @check_expect._entry.41, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @check_expect._entry_ptr.43, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.45, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../lib/test_objagg.c", i32 599, i32 4}
!92 = !{ptr @check_expect._entry.44, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @check_expect._entry_ptr.46, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.48, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../lib/test_objagg.c", i32 608, i32 4}
!96 = !{ptr @check_expect._entry.47, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @check_expect._entry_ptr.49, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.51, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../lib/test_objagg.c", i32 617, i32 4}
!100 = !{ptr @check_expect._entry.50, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @check_expect._entry_ptr.52, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.53, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../lib/test_objagg.c", i32 749, i32 13}
!104 = !{ptr @.str.54, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../lib/test_objagg.c", i32 717, i32 13}
!106 = !{ptr @.str.55, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../lib/test_objagg.c", i32 647, i32 14}
!108 = !{ptr @.str.56, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../lib/test_objagg.c", i32 653, i32 14}
!110 = !{ptr @.str.57, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../lib/test_objagg.c", i32 659, i32 14}
!112 = !{ptr @.str.58, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../lib/test_objagg.c", i32 673, i32 14}
!114 = !{ptr @action_items, !115, !"action_items", i1 false, i1 false}
!115 = !{!"../lib/test_objagg.c", i32 431, i32 33}
!116 = !{ptr @.str.60, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../lib/test_objagg.c", i32 937, i32 3}
!118 = !{ptr @.str.61, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @test_hints_case._entry, !117, !"_entry", i1 false, i1 false}
!120 = !{ptr @test_hints_case._entry_ptr, !117, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.63, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../lib/test_objagg.c", i32 951, i32 3}
!123 = !{ptr @test_hints_case._entry.62, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @test_hints_case._entry_ptr.64, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.66, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../lib/test_objagg.c", i32 972, i32 3}
!127 = !{ptr @test_hints_case._entry.65, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @test_hints_case._entry_ptr.67, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.68, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../lib/test_objagg.c", i32 865, i32 3}
!131 = !{ptr @.str.69, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @.str.70, !130, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @__pr_debug_stats.__UNIQUE_ID_ddebug173, !130, !"__UNIQUE_ID_ddebug173", i1 false, i1 false}
!134 = !{ptr @.str.71, !130, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @.str.72, !130, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @.str.73, !130, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @hints_case, !138, !"hints_case", i1 false, i1 false}
!138 = !{!"../lib/test_objagg.c", i32 847, i32 32}
!139 = !{ptr @hints_case_key_ids, !140, !"hints_case_key_ids", i1 false, i1 false}
!140 = !{!"../lib/test_objagg.c", i32 843, i32 27}
!141 = !{i32 1, !"wchar_size", i32 2}
!142 = !{i32 1, !"min_enum_size", i32 4}
!143 = !{i32 8, !"branch-target-enforcement", i32 0}
!144 = !{i32 8, !"sign-return-address", i32 0}
!145 = !{i32 8, !"sign-return-address-all", i32 0}
!146 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!147 = !{i32 7, !"uwtable", i32 1}
!148 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!149 = !{!"auto-init"}
!150 = !{!"branch_weights", i32 1, i32 2000}
!151 = !{i8 0, i8 2}
!152 = !{i64 2148714751, i64 2148714756, i64 2148714769, i64 2148714813, i64 2148714847, i64 2148714868}
