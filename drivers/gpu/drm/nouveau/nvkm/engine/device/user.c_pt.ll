; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/engine/device/user.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/device/user.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nvkm_object_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_device_oclass = type { ptr, %struct.nvkm_sclass }
%struct.nvkm_oclass = type { ptr, %struct.nvkm_sclass, ptr, ptr, i32, i8, i64, i64, ptr, ptr, ptr }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.list_head = type { ptr, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.nvkm_client = type { %struct.nvkm_object, [32 x i8], i64, i32, [32 x ptr], %struct.rb_root, ptr, ptr, %struct.list_head, %struct.spinlock }
%struct.rb_root = type { ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nv_device_v0 = type { i8, i8, [6 x i8], i64 }
%struct.nvkm_udevice = type { %struct.nvkm_object, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.153, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.153 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nv_device_info_v1 = type { i8, i8, [6 x i8], [0 x %struct.nv_device_info_v1_data] }
%struct.nv_device_info_v1_data = type { i64, i64 }
%struct.nv_device_info_v0 = type { i8, i8, i16, i8, i8, [2 x i8], i64, i64, [16 x i8], [64 x i8] }
%struct.nvkm_fb = type { ptr, %struct.nvkm_subdev, %struct.nvkm_blob, ptr, %struct.anon.111, %struct.anon.112, i8, ptr, ptr }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.nvkm_blob = type { ptr, i32 }
%struct.anon.111 = type { %struct.mutex, %struct.nvkm_mm }
%struct.nvkm_mm = type { %struct.list_head, %struct.list_head, i32, i32 }
%struct.anon.112 = type { [16 x %struct.nvkm_fb_tile], i32 }
%struct.nvkm_fb_tile = type { ptr, i32, i32, i32, i32 }
%struct.nvkm_ram = type { ptr, ptr, i32, i64, %struct.nvkm_mm, i64, %struct.mutex, i32, i32, i32, i32, [16 x i32], i32, ptr, %struct.nvkm_ram_data, %struct.nvkm_ram_data, %struct.nvkm_ram_data }
%struct.nvkm_ram_data = type { %struct.list_head, %struct.nvbios_ramcfg, i32 }
%struct.nvbios_ramcfg = type <{ i32, i32, i32, i32, %union.anon.100, i32, i32, i32, i32, i32, i32, %union.anon.104, i32, i32, [11 x i32], %union.anon.108 }>
%union.anon.100 = type { %struct.anon.103 }
%struct.anon.103 = type { i64 }
%union.anon.104 = type { %struct.anon.107 }
%struct.anon.107 = type { i32, i32, i8 }
%union.anon.108 = type <{ %struct.anon.110, [12 x i8] }>
%struct.anon.110 = type { i48 }
%struct.nvkm_instmem = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.list_head, %struct.list_head, i32, %struct.mutex, ptr, ptr, ptr, ptr }
%struct.nv_device_time_v0 = type { i8, [7 x i8], i64 }
%struct.nvkm_device_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.nvkm_engine_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon, %struct.anon.154, ptr, [0 x %struct.nvkm_sclass] }
%struct.anon = type { ptr }
%struct.anon.154 = type { ptr, ptr }
%struct.nvkm_mmu = type { ptr, %struct.nvkm_subdev, i8, i32, [4 x %struct.anon.165], i32, [16 x %struct.anon.166], ptr, %struct.anon.167, %struct.anon.167, %struct.mutex, %struct.nvkm_device_oclass }
%struct.anon.165 = type { i8, i64 }
%struct.anon.166 = type { i8, i8 }
%struct.anon.167 = type { %struct.mutex, %struct.list_head }
%struct.nvkm_fault = type { ptr, %struct.nvkm_subdev, [2 x ptr], i32, %struct.nvkm_event, %struct.nvkm_notify, %struct.nvkm_device_oclass }
%struct.nvkm_notify = type { ptr, %struct.list_head, i32, i32, ptr, i32, i32, i32, %struct.work_struct, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }

@nvkm_udevice_sclass = dso_local constant { %struct.nvkm_sclass, [44 x i8] } { %struct.nvkm_sclass { i32 0, i32 0, i32 128, ptr null, ptr @nvkm_udevice_new }, [44 x i8] zeroinitializer }, align 32
@nvkm_udevice_new._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 392, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: create device size %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nvkm_udevice_new\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"drivers/gpu/drm/nouveau/nvkm/engine/device/user.c\00", [46 x i8] zeroinitializer }, align 32
@nvkm_udevice_new._entry_ptr = internal global ptr @nvkm_udevice_new._entry, section ".printk_index", align 4
@nvkm_udevice_new._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 395, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: create device v%d device %016llx\0A\00", [62 x i8] zeroinitializer }, align 32
@nvkm_udevice_new._entry_ptr.5 = internal global ptr @nvkm_udevice_new._entry.3, section ".printk_index", align 4
@nvkm_udevice_super = internal constant { %struct.nvkm_object_func, [36 x i8] } { %struct.nvkm_object_func { ptr null, ptr @nvkm_udevice_init, ptr @nvkm_udevice_fini, ptr @nvkm_udevice_mthd, ptr null, ptr @nvkm_udevice_map, ptr null, ptr @nvkm_udevice_rd08, ptr @nvkm_udevice_rd16, ptr @nvkm_udevice_rd32, ptr @nvkm_udevice_wr08, ptr @nvkm_udevice_wr16, ptr @nvkm_udevice_wr32, ptr null, ptr @nvkm_udevice_child_get }, [36 x i8] zeroinitializer }, align 32
@nvkm_udevice = internal constant { %struct.nvkm_object_func, [36 x i8] } { %struct.nvkm_object_func { ptr null, ptr @nvkm_udevice_init, ptr @nvkm_udevice_fini, ptr @nvkm_udevice_mthd, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nvkm_udevice_child_get }, [36 x i8] zeroinitializer }, align 32
@nvkm_udevice_mthd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 192, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: device mthd %08x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nvkm_udevice_mthd\00", [46 x i8] zeroinitializer }, align 32
@nvkm_udevice_mthd._entry_ptr = internal global ptr @nvkm_udevice_mthd._entry, section ".printk_index", align 4
@nvkm_udevice_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 85, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: device info size %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nvkm_udevice_info\00", [46 x i8] zeroinitializer }, align 32
@nvkm_udevice_info._entry_ptr = internal global ptr @nvkm_udevice_info._entry, section ".printk_index", align 4
@nvkm_udevice_info._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.2, i32 88, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: device info vers %d count %d\0A\00", [34 x i8] zeroinitializer }, align 32
@nvkm_udevice_info._entry_ptr.12 = internal global ptr @nvkm_udevice_info._entry.10, section ".printk_index", align 4
@nvkm_udevice_info._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.9, ptr @.str.2, i32 97, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: device info vers %d\0A\00", [43 x i8] zeroinitializer }, align 32
@nvkm_udevice_info._entry_ptr.15 = internal global ptr @nvkm_udevice_info._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@nvkm_udevice_time._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 179, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: device time size %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nvkm_udevice_time\00", [46 x i8] zeroinitializer }, align 32
@nvkm_udevice_time._entry_ptr = internal global ptr @nvkm_udevice_time._entry, section ".printk_index", align 4
@nvkm_udevice_time._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.2, i32 181, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: device time vers %d\0A\00", [43 x i8] zeroinitializer }, align 32
@nvkm_udevice_time._entry_ptr.21 = internal global ptr @nvkm_udevice_time._entry.19, section ".printk_index", align 4
@nvkm_control_oclass = external dso_local constant %struct.nvkm_device_oclass, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.22 = internal global [12 x i64] [i64 10, i64 32, i64 26, i64 31, i64 76, i64 78, i64 99, i64 103, i64 104, i64 170, i64 172, i64 175]
@__sancov_gen_cov_switch_values.23 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.24 = internal global [16 x i64] [i64 14, i64 32, i64 4, i64 16, i64 17, i64 32, i64 48, i64 64, i64 80, i64 192, i64 224, i64 272, i64 304, i64 320, i64 352, i64 368]
@___asan_gen_.25 = private unnamed_addr constant [20 x i8] c"nvkm_udevice_sclass\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 422, i32 1 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 392, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 394, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant [19 x i8] c"nvkm_udevice_super\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 357, i32 1 }
@___asan_gen_.49 = private unnamed_addr constant [13 x i8] c"nvkm_udevice\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 372, i32 1 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 192, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 85, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 87, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 97, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 164, i32 49 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 179, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.97 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.98 = private constant [53 x i8] c"../drivers/gpu/drm/nouveau/nvkm/engine/device/user.c\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 181, i32 3 }
@llvm.compiler.used = appending global [33 x ptr] [ptr @nvkm_udevice_info._entry, ptr @nvkm_udevice_info._entry.10, ptr @nvkm_udevice_info._entry.13, ptr @nvkm_udevice_info._entry_ptr, ptr @nvkm_udevice_info._entry_ptr.12, ptr @nvkm_udevice_info._entry_ptr.15, ptr @nvkm_udevice_mthd._entry, ptr @nvkm_udevice_mthd._entry_ptr, ptr @nvkm_udevice_new._entry, ptr @nvkm_udevice_new._entry.3, ptr @nvkm_udevice_new._entry_ptr, ptr @nvkm_udevice_new._entry_ptr.5, ptr @nvkm_udevice_time._entry, ptr @nvkm_udevice_time._entry.19, ptr @nvkm_udevice_time._entry_ptr, ptr @nvkm_udevice_time._entry_ptr.21, ptr @nvkm_udevice_sclass, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @nvkm_udevice_super, ptr @nvkm_udevice, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_udevice_sclass to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_udevice_new._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_udevice_new._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_udevice_super to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_udevice to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_udevice_mthd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_udevice_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_udevice_info._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_udevice_info._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_udevice_time._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_udevice_time._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_udevice_new(ptr noundef %oclass, ptr nocapture noundef readonly %data, i32 noundef %size, ptr nocapture noundef writeonly %pobject) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %client1 = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 8
  %0 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client1, align 8
  %client2 = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %client2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client2, align 4
  %debug = getelementptr inbounds %struct.nvkm_client, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %debug, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp = icmp ugt i32 %5, 4
  br i1 %cmp, label %do.end, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.nvkm_client, ptr %3, i32 0, i32 1
  %handle = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %handle, align 8
  %oclass4 = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %oclass4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %oclass4, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name, i32 noundef %7, i32 noundef %9, i32 noundef %size) #10
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %do.end, %entry.land.lhs.true_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %size)
  %cmp8 = icmp ugt i32 %size, 15
  br i1 %cmp8, label %land.lhs.true12, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true12:                                  ; preds = %land.lhs.true
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %data, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp15 = icmp eq i8 %11, 0
  br i1 %cmp15, label %if.then17, label %land.lhs.true12.cleanup_crit_edge

land.lhs.true12.cleanup_crit_edge:                ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then17:                                        ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %size)
  %tobool.not = icmp eq i32 %size, 16
  br i1 %tobool.not, label %do.body24, label %if.then17.cleanup_crit_edge

if.then17.cleanup_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body24:                                        ; preds = %if.then17
  %12 = ptrtoint ptr %client2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %client2, align 4
  %debug28 = getelementptr inbounds %struct.nvkm_client, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %debug28 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %debug28, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %15)
  %cmp29 = icmp ugt i32 %15, 4
  br i1 %cmp29, label %do.end34, label %do.body24.if.end43_crit_edge

do.body24.if.end43_crit_edge:                     ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

do.end34:                                         ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #9
  %name36 = getelementptr inbounds %struct.nvkm_client, ptr %13, i32 0, i32 1
  %handle38 = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 4
  %16 = ptrtoint ptr %handle38 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %handle38, align 8
  %oclass39 = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 3
  %18 = ptrtoint ptr %oclass39 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %oclass39, align 4
  %20 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %data, align 8
  %conv41 = zext i8 %21 to i32
  %device = getelementptr inbounds %struct.nv_device_v0, ptr %data, i32 0, i32 3
  %22 = ptrtoint ptr %device to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %device, align 8
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %name36, i32 noundef %17, i32 noundef %19, i32 noundef %conv41, i64 noundef %23) #10
  br label %if.end43

if.end43:                                         ; preds = %do.end34, %do.body24.if.end43_crit_edge
  %priv = getelementptr inbounds %struct.nv_device_v0, ptr %data, i32 0, i32 1
  %24 = ptrtoint ptr %priv to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %priv, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %26 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %26, i32 noundef 3520, i32 noundef 80) #11
  %tobool52.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool52.not, label %if.end43.cleanup_crit_edge, label %if.end54

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end54:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool47.not = icmp eq i8 %25, 0
  %nvkm_udevice.nvkm_udevice_super = select i1 %tobool47.not, ptr @nvkm_udevice, ptr @nvkm_udevice_super
  tail call void @nvkm_object_ctor(ptr noundef nonnull %nvkm_udevice.nvkm_udevice_super, ptr noundef %oclass, ptr noundef nonnull %call7.i.i) #7
  %27 = ptrtoint ptr %pobject to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call7.i.i, ptr %pobject, align 4
  %device57 = getelementptr inbounds %struct.nv_device_v0, ptr %data, i32 0, i32 3
  %28 = ptrtoint ptr %device57 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %device57, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %29)
  %cmp58.not = icmp eq i64 %29, -1
  br i1 %cmp58.not, label %if.else64, label %if.end54.if.end68_crit_edge

if.end54.if.end68_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end68

if.else64:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  %device65 = getelementptr inbounds %struct.nvkm_client, ptr %1, i32 0, i32 2
  %30 = ptrtoint ptr %device65 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %device65, align 8
  br label %if.end68

if.end68:                                         ; preds = %if.else64, %if.end54.if.end68_crit_edge
  %.sink = phi i64 [ %31, %if.else64 ], [ %29, %if.end54.if.end68_crit_edge ]
  %call66 = tail call ptr @nvkm_device_find(i64 noundef %.sink) #7
  %32 = getelementptr inbounds %struct.nvkm_udevice, ptr %call7.i.i, i32 0, i32 1
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call66, ptr %32, align 8
  %tobool70.not = icmp eq ptr %call66, null
  %. = select i1 %tobool70.not, i32 -19, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end68, %if.end43.cleanup_crit_edge, %if.then17.cleanup_crit_edge, %land.lhs.true12.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.end43.cleanup_crit_edge ], [ %., %if.end68 ], [ -38, %land.lhs.true.cleanup_crit_edge ], [ -38, %land.lhs.true12.cleanup_crit_edge ], [ -7, %if.then17.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_object_ctor(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_device_find(i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_udevice_init(ptr nocapture noundef readonly %object) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.nvkm_udevice, ptr %object, i32 0, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 8
  %mutex = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %refcount = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %refcount, align 8
  %inc = add i32 %3, 1
  store i32 %inc, ptr %refcount, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.done_crit_edge

entry.done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %done

if.then:                                          ; preds = %entry
  %call = tail call i32 @nvkm_device_init(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.then.done_crit_edge, label %if.then3

if.then.done_crit_edge:                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %done

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %refcount, align 8
  %dec = add i32 %5, -1
  store i32 %dec, ptr %refcount, align 8
  br label %done

done:                                             ; preds = %if.then3, %if.then.done_crit_edge, %entry.done_crit_edge
  %ret.0 = phi i32 [ 0, %entry.done_crit_edge ], [ %call, %if.then3 ], [ 0, %if.then.done_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_udevice_fini(ptr nocapture noundef readonly %object, i1 noundef zeroext %suspend) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.nvkm_udevice, ptr %object, i32 0, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 8
  %mutex = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %refcount = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %refcount, align 8
  %dec = add i32 %3, -1
  store i32 %dec, ptr %refcount, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %if.then, label %entry.done_crit_edge

entry.done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %done

if.then:                                          ; preds = %entry
  %call = tail call i32 @nvkm_device_fini(ptr noundef %1, i1 noundef zeroext %suspend) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp ne i32 %call, 0
  %4 = and i1 %tobool3.not, %suspend
  br i1 %4, label %if.then5, label %if.then.done_crit_edge

if.then.done_crit_edge:                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %done

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %refcount, align 8
  %inc = add i32 %6, 1
  store i32 %inc, ptr %refcount, align 8
  br label %done

done:                                             ; preds = %if.then5, %if.then.done_crit_edge, %entry.done_crit_edge
  %ret.0 = phi i32 [ 0, %entry.done_crit_edge ], [ %call, %if.then5 ], [ %call, %if.then.done_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_udevice_mthd(ptr nocapture noundef readonly %object, i32 noundef %mthd, ptr noundef %data, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %client = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 1
  %0 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client, align 4
  %debug = getelementptr inbounds %struct.nvkm_client, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %debug, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp = icmp ugt i32 %3, 4
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.nvkm_client, ptr %1, i32 0, i32 1
  %handle = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 4
  %4 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %handle, align 8
  %oclass = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 3
  %6 = ptrtoint ptr %oclass to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %oclass, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name, i32 noundef %5, i32 noundef %7, i32 noundef %mthd) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %8 = zext i32 %mthd to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mthd, label %if.end.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb6
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %device2.i = getelementptr inbounds %struct.nvkm_udevice, ptr %object, i32 0, i32 1
  %9 = ptrtoint ptr %device2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %device2.i, align 8
  %fb3.i = getelementptr inbounds %struct.nvkm_device, ptr %10, i32 0, i32 33
  %11 = ptrtoint ptr %fb3.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fb3.i, align 8
  %imem4.i = getelementptr inbounds %struct.nvkm_device, ptr %10, i32 0, i32 32
  %13 = ptrtoint ptr %imem4.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %imem4.i, align 4
  %15 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %client, align 4
  %debug.i = getelementptr inbounds %struct.nvkm_client, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %debug.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %debug.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %18)
  %cmp.i = icmp ugt i32 %18, 4
  br i1 %cmp.i, label %do.end.i, label %sw.bb.land.lhs.true.i_crit_edge

sw.bb.land.lhs.true.i_crit_edge:                  ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.i

do.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %name.i = getelementptr inbounds %struct.nvkm_client, ptr %16, i32 0, i32 1
  %handle.i = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 4
  %19 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %handle.i, align 8
  %oclass.i = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 3
  %21 = ptrtoint ptr %oclass.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %oclass.i, align 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name.i, i32 noundef %20, i32 noundef %22, i32 noundef %size) #10
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %do.end.i, %sw.bb.land.lhs.true.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %size)
  %cmp9.i = icmp ugt i32 %size, 7
  br i1 %cmp9.i, label %land.lhs.true10.i, label %land.lhs.true.i.cleanup_crit_edge

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true10.i:                                ; preds = %land.lhs.true.i
  %23 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %data, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %24)
  %cond.i = icmp eq i8 %24, 1
  br i1 %cond.i, label %do.body25.i, label %land.lhs.true66.i

do.body25.i:                                      ; preds = %land.lhs.true10.i
  %sub.i = add i32 %size, -8
  %25 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %client, align 4
  %debug29.i = getelementptr inbounds %struct.nvkm_client, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %debug29.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %debug29.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %28)
  %cmp30.i = icmp ugt i32 %28, 4
  br i1 %cmp30.i, label %do.end35.i, label %do.body25.i.if.end45.i_crit_edge

do.body25.i.if.end45.i_crit_edge:                 ; preds = %do.body25.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45.i

do.end35.i:                                       ; preds = %do.body25.i
  call void @__sanitizer_cov_trace_pc() #9
  %name37.i = getelementptr inbounds %struct.nvkm_client, ptr %26, i32 0, i32 1
  %handle39.i = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 4
  %29 = ptrtoint ptr %handle39.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %handle39.i, align 8
  %oclass40.i = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 3
  %31 = ptrtoint ptr %oclass40.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %oclass40.i, align 4
  %count.i = getelementptr inbounds %struct.nv_device_info_v1, ptr %data, i32 0, i32 1
  %33 = ptrtoint ptr %count.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %count.i, align 1
  %conv43.i = zext i8 %34 to i32
  %call44.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %name37.i, i32 noundef %30, i32 noundef %32, i32 noundef 1, i32 noundef %conv43.i) #10
  br label %if.end45.i

if.end45.i:                                       ; preds = %do.end35.i, %do.body25.i.if.end45.i_crit_edge
  %count48.i = getelementptr inbounds %struct.nv_device_info_v1, ptr %data, i32 0, i32 1
  %35 = ptrtoint ptr %count48.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %count48.i, align 1
  %conv49.i = zext i8 %36 to i32
  %mul.i = shl nuw nsw i32 %conv49.i, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %sub.i)
  %cmp50.i = icmp eq i32 %mul.i, %sub.i
  br i1 %cmp50.i, label %for.cond.preheader.i, label %if.end45.i.cleanup_crit_edge

if.end45.i.cleanup_crit_edge:                     ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader.i:                             ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %cmp55312.not.i = icmp eq i8 %36, 0
  br i1 %cmp55312.not.i, label %for.cond.preheader.i.cleanup_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.cleanup_crit_edge:           ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.i:                                       ; preds = %nvkm_udevice_info_v1.exit.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.0313.i = phi i32 [ %inc.i, %nvkm_udevice_info_v1.exit.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.nv_device_info_v1, ptr %data, i32 0, i32 3, i32 %i.0313.i
  %37 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %arrayidx.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %38)
  %tobool.not.i.i = icmp ult i64 %38, 4294967296
  br i1 %tobool.not.i.i, label %for.body.i.return.sink.split.i.i_crit_edge, label %if.then.i.i

for.body.i.return.sink.split.i.i_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return.sink.split.i.i

if.then.i.i:                                      ; preds = %for.body.i
  %data.i.i = getelementptr %struct.nv_device_info_v1, ptr %data, i32 0, i32 3, i32 %i.0313.i, i32 1
  %and.i.i.i = and i64 %38, -4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %and.i.i.i)
  %cond.i.i.i = icmp eq i64 %and.i.i.i, 4294967296
  br i1 %cond.i.i.i, label %sw.bb.i.i.i, label %if.then.i.i.return.sink.split.i.i_crit_edge

if.then.i.i.return.sink.split.i.i_crit_edge:      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return.sink.split.i.i

sw.bb.i.i.i:                                      ; preds = %if.then.i.i
  %call.i.i.i = tail call ptr @nvkm_device_subdev(ptr noundef %10, i32 noundef 32, i32 noundef 0) #7
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i.i, label %sw.bb.i.i.i.return.sink.split.i.i_crit_edge, label %nvkm_udevice_info_subdev.exit.i.i

sw.bb.i.i.i.return.sink.split.i.i_crit_edge:      ; preds = %sw.bb.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return.sink.split.i.i

nvkm_udevice_info_subdev.exit.i.i:                ; preds = %sw.bb.i.i.i
  %call1.i.i.i = tail call i32 @nvkm_subdev_info(ptr noundef nonnull %call.i.i.i, i64 noundef %38, ptr noundef %data.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool2.not.i.i, label %nvkm_udevice_info_subdev.exit.i.i.nvkm_udevice_info_v1.exit.i_crit_edge, label %nvkm_udevice_info_subdev.exit.i.i.return.sink.split.i.i_crit_edge

nvkm_udevice_info_subdev.exit.i.i.return.sink.split.i.i_crit_edge: ; preds = %nvkm_udevice_info_subdev.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return.sink.split.i.i

nvkm_udevice_info_subdev.exit.i.i.nvkm_udevice_info_v1.exit.i_crit_edge: ; preds = %nvkm_udevice_info_subdev.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nvkm_udevice_info_v1.exit.i

return.sink.split.i.i:                            ; preds = %nvkm_udevice_info_subdev.exit.i.i.return.sink.split.i.i_crit_edge, %sw.bb.i.i.i.return.sink.split.i.i_crit_edge, %if.then.i.i.return.sink.split.i.i_crit_edge, %for.body.i.return.sink.split.i.i_crit_edge
  %39 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 -1, ptr %arrayidx.i, align 8
  br label %nvkm_udevice_info_v1.exit.i

nvkm_udevice_info_v1.exit.i:                      ; preds = %return.sink.split.i.i, %nvkm_udevice_info_subdev.exit.i.i.nvkm_udevice_info_v1.exit.i_crit_edge
  %inc.i = add nuw nsw i32 %i.0313.i, 1
  %40 = ptrtoint ptr %count48.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %count48.i, align 1
  %conv54.i = zext i8 %41 to i32
  %cmp55.i = icmp ult i32 %inc.i, %conv54.i
  br i1 %cmp55.i, label %nvkm_udevice_info_v1.exit.i.for.body.i_crit_edge, label %nvkm_udevice_info_v1.exit.i.cleanup_crit_edge

nvkm_udevice_info_v1.exit.i.cleanup_crit_edge:    ; preds = %nvkm_udevice_info_v1.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

nvkm_udevice_info_v1.exit.i.for.body.i_crit_edge: ; preds = %nvkm_udevice_info_v1.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

land.lhs.true66.i:                                ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 103, i32 %size)
  %cmp67.i = icmp ugt i32 %size, 103
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %cmp77.i = icmp eq i8 %24, 0
  %or.cond = select i1 %cmp67.i, i1 %cmp77.i, i1 false
  br i1 %or.cond, label %if.then79.i, label %land.lhs.true66.i.cleanup_crit_edge

land.lhs.true66.i.cleanup_crit_edge:              ; preds = %land.lhs.true66.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then79.i:                                      ; preds = %land.lhs.true66.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 104, i32 %size)
  %tobool83.not.i = icmp eq i32 %size, 104
  br i1 %tobool83.not.i, label %do.body90.i, label %if.then79.i.cleanup_crit_edge

if.then79.i.cleanup_crit_edge:                    ; preds = %if.then79.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body90.i:                                      ; preds = %if.then79.i
  %42 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %client, align 4
  %debug94.i = getelementptr inbounds %struct.nvkm_client, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %debug94.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %debug94.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %45)
  %cmp95.i = icmp ugt i32 %45, 4
  br i1 %cmp95.i, label %do.end100.i, label %do.body90.i.if.end109.i_crit_edge

do.body90.i.if.end109.i_crit_edge:                ; preds = %do.body90.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end109.i

do.end100.i:                                      ; preds = %do.body90.i
  call void @__sanitizer_cov_trace_pc() #9
  %name102.i = getelementptr inbounds %struct.nvkm_client, ptr %43, i32 0, i32 1
  %handle104.i = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 4
  %46 = ptrtoint ptr %handle104.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %handle104.i, align 8
  %oclass105.i = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 3
  %48 = ptrtoint ptr %oclass105.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %oclass105.i, align 4
  %call108.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %name102.i, i32 noundef %47, i32 noundef %49, i32 noundef 0) #10
  br label %if.end109.i

if.end109.i:                                      ; preds = %do.end100.i, %do.body90.i.if.end109.i_crit_edge
  %chipset.i = getelementptr inbounds %struct.nvkm_device, ptr %10, i32 0, i32 16
  %50 = ptrtoint ptr %chipset.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %chipset.i, align 4
  %52 = zext i32 %51 to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %51, label %sw.default.i [
    i32 26, label %if.end109.i.sw.bb.i_crit_edge
    i32 31, label %if.end109.i.sw.bb.i_crit_edge26
    i32 76, label %if.end109.i.sw.bb.i_crit_edge27
    i32 78, label %if.end109.i.sw.bb.i_crit_edge28
    i32 99, label %if.end109.i.sw.bb.i_crit_edge29
    i32 103, label %if.end109.i.sw.bb.i_crit_edge30
    i32 104, label %if.end109.i.sw.bb.i_crit_edge31
    i32 170, label %if.end109.i.sw.bb.i_crit_edge32
    i32 172, label %if.end109.i.sw.bb.i_crit_edge33
    i32 175, label %if.end109.i.sw.bb.i_crit_edge34
  ]

if.end109.i.sw.bb.i_crit_edge34:                  ; preds = %if.end109.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

if.end109.i.sw.bb.i_crit_edge33:                  ; preds = %if.end109.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

if.end109.i.sw.bb.i_crit_edge32:                  ; preds = %if.end109.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

if.end109.i.sw.bb.i_crit_edge31:                  ; preds = %if.end109.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

if.end109.i.sw.bb.i_crit_edge30:                  ; preds = %if.end109.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

if.end109.i.sw.bb.i_crit_edge29:                  ; preds = %if.end109.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

if.end109.i.sw.bb.i_crit_edge28:                  ; preds = %if.end109.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

if.end109.i.sw.bb.i_crit_edge27:                  ; preds = %if.end109.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

if.end109.i.sw.bb.i_crit_edge26:                  ; preds = %if.end109.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

if.end109.i.sw.bb.i_crit_edge:                    ; preds = %if.end109.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %if.end109.i.sw.bb.i_crit_edge, %if.end109.i.sw.bb.i_crit_edge26, %if.end109.i.sw.bb.i_crit_edge27, %if.end109.i.sw.bb.i_crit_edge28, %if.end109.i.sw.bb.i_crit_edge29, %if.end109.i.sw.bb.i_crit_edge30, %if.end109.i.sw.bb.i_crit_edge31, %if.end109.i.sw.bb.i_crit_edge32, %if.end109.i.sw.bb.i_crit_edge33, %if.end109.i.sw.bb.i_crit_edge34
  %platform.i = getelementptr inbounds %struct.nv_device_info_v0, ptr %data, i32 0, i32 1
  %53 = ptrtoint ptr %platform.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %platform.i, align 1
  br label %sw.epilog145.i

sw.default.i:                                     ; preds = %if.end109.i
  %type.i = getelementptr inbounds %struct.nvkm_device, ptr %10, i32 0, i32 3
  %54 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %type.i, align 4
  %56 = zext i32 %55 to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %55, label %do.end131.i [
    i32 0, label %sw.bb115.i
    i32 1, label %sw.bb117.i
    i32 2, label %sw.bb119.i
    i32 3, label %sw.bb121.i
  ]

sw.bb115.i:                                       ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #9
  %platform116.i = getelementptr inbounds %struct.nv_device_info_v0, ptr %data, i32 0, i32 1
  %57 = ptrtoint ptr %platform116.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 1, ptr %platform116.i, align 1
  br label %sw.epilog145.i

sw.bb117.i:                                       ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #9
  %platform118.i = getelementptr inbounds %struct.nv_device_info_v0, ptr %data, i32 0, i32 1
  %58 = ptrtoint ptr %platform118.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 2, ptr %platform118.i, align 1
  br label %sw.epilog145.i

sw.bb119.i:                                       ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #9
  %platform120.i = getelementptr inbounds %struct.nv_device_info_v0, ptr %data, i32 0, i32 1
  %59 = ptrtoint ptr %platform120.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 3, ptr %platform120.i, align 1
  br label %sw.epilog145.i

sw.bb121.i:                                       ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #9
  %platform122.i = getelementptr inbounds %struct.nv_device_info_v0, ptr %data, i32 0, i32 1
  %60 = ptrtoint ptr %platform122.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 4, ptr %platform122.i, align 1
  br label %sw.epilog145.i

do.end131.i:                                      ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 129, i32 noundef 9, ptr noundef null) #7
  br label %sw.epilog145.i

sw.epilog145.i:                                   ; preds = %do.end131.i, %sw.bb121.i, %sw.bb119.i, %sw.bb117.i, %sw.bb115.i, %sw.bb.i
  %card_type.i = getelementptr inbounds %struct.nvkm_device, ptr %10, i32 0, i32 15
  %61 = ptrtoint ptr %card_type.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %card_type.i, align 8
  %63 = zext i32 %62 to i64
  call void @__sanitizer_cov_trace_switch(i64 %63, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %62, label %sw.default171.i [
    i32 4, label %sw.epilog145.i.sw.epilog173.i_crit_edge
    i32 16, label %sw.epilog145.i.sw.bb147.i_crit_edge
    i32 17, label %sw.epilog145.i.sw.bb147.i_crit_edge35
    i32 32, label %sw.bb149.i
    i32 48, label %sw.bb151.i
    i32 64, label %sw.bb153.i
    i32 80, label %sw.bb155.i
    i32 192, label %sw.bb157.i
    i32 224, label %sw.bb159.i
    i32 272, label %sw.bb161.i
    i32 304, label %sw.bb163.i
    i32 320, label %sw.bb165.i
    i32 352, label %sw.bb167.i
    i32 368, label %sw.bb169.i
  ]

sw.epilog145.i.sw.bb147.i_crit_edge35:            ; preds = %sw.epilog145.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb147.i

sw.epilog145.i.sw.bb147.i_crit_edge:              ; preds = %sw.epilog145.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb147.i

sw.epilog145.i.sw.epilog173.i_crit_edge:          ; preds = %sw.epilog145.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog173.i

sw.bb147.i:                                       ; preds = %sw.epilog145.i.sw.bb147.i_crit_edge, %sw.epilog145.i.sw.bb147.i_crit_edge35
  br label %sw.epilog173.i

sw.bb149.i:                                       ; preds = %sw.epilog145.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog173.i

sw.bb151.i:                                       ; preds = %sw.epilog145.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog173.i

sw.bb153.i:                                       ; preds = %sw.epilog145.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog173.i

sw.bb155.i:                                       ; preds = %sw.epilog145.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog173.i

sw.bb157.i:                                       ; preds = %sw.epilog145.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog173.i

sw.bb159.i:                                       ; preds = %sw.epilog145.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog173.i

sw.bb161.i:                                       ; preds = %sw.epilog145.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog173.i

sw.bb163.i:                                       ; preds = %sw.epilog145.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog173.i

sw.bb165.i:                                       ; preds = %sw.epilog145.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog173.i

sw.bb167.i:                                       ; preds = %sw.epilog145.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog173.i

sw.bb169.i:                                       ; preds = %sw.epilog145.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog173.i

sw.default171.i:                                  ; preds = %sw.epilog145.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog173.i

sw.epilog173.i:                                   ; preds = %sw.default171.i, %sw.bb169.i, %sw.bb167.i, %sw.bb165.i, %sw.bb163.i, %sw.bb161.i, %sw.bb159.i, %sw.bb157.i, %sw.bb155.i, %sw.bb153.i, %sw.bb151.i, %sw.bb149.i, %sw.bb147.i, %sw.epilog145.i.sw.epilog173.i_crit_edge
  %.sink.i = phi i8 [ 0, %sw.default171.i ], [ 13, %sw.bb169.i ], [ 12, %sw.bb167.i ], [ 11, %sw.bb165.i ], [ 10, %sw.bb163.i ], [ 9, %sw.bb161.i ], [ 8, %sw.bb159.i ], [ 7, %sw.bb157.i ], [ 6, %sw.bb155.i ], [ 5, %sw.bb153.i ], [ 4, %sw.bb151.i ], [ 3, %sw.bb149.i ], [ 2, %sw.bb147.i ], [ 1, %sw.epilog145.i.sw.epilog173.i_crit_edge ]
  %family172.i = getelementptr inbounds %struct.nv_device_info_v0, ptr %data, i32 0, i32 4
  %64 = ptrtoint ptr %family172.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %.sink.i, ptr %family172.i, align 1
  %65 = ptrtoint ptr %chipset.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %chipset.i, align 4
  %conv175.i = trunc i32 %66 to i16
  %chipset176.i = getelementptr inbounds %struct.nv_device_info_v0, ptr %data, i32 0, i32 2
  %67 = ptrtoint ptr %chipset176.i to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %conv175.i, ptr %chipset176.i, align 2
  %chiprev.i = getelementptr inbounds %struct.nvkm_device, ptr %10, i32 0, i32 17
  %68 = ptrtoint ptr %chiprev.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %chiprev.i, align 8
  %revision.i = getelementptr inbounds %struct.nv_device_info_v0, ptr %data, i32 0, i32 3
  %70 = ptrtoint ptr %revision.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %69, ptr %revision.i, align 4
  %tobool177.not.i = icmp eq ptr %12, null
  br i1 %tobool177.not.i, label %sw.epilog173.i.if.else183.i_crit_edge, label %land.lhs.true178.i

sw.epilog173.i.if.else183.i_crit_edge:            ; preds = %sw.epilog173.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else183.i

land.lhs.true178.i:                               ; preds = %sw.epilog173.i
  %ram.i = getelementptr inbounds %struct.nvkm_fb, ptr %12, i32 0, i32 3
  %71 = ptrtoint ptr %ram.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ram.i, align 4
  %tobool179.not.i = icmp eq ptr %72, null
  br i1 %tobool179.not.i, label %land.lhs.true178.i.if.else183.i_crit_edge, label %if.then180.i

land.lhs.true178.i.if.else183.i_crit_edge:        ; preds = %land.lhs.true178.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else183.i

if.then180.i:                                     ; preds = %land.lhs.true178.i
  call void @__sanitizer_cov_trace_pc() #9
  %size182.i = getelementptr inbounds %struct.nvkm_ram, ptr %72, i32 0, i32 3
  %73 = ptrtoint ptr %size182.i to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %size182.i, align 8
  %ram_user.i = getelementptr inbounds %struct.nv_device_info_v0, ptr %data, i32 0, i32 7
  %75 = ptrtoint ptr %ram_user.i to i32
  call void @__asan_store8_noabort(i32 %75)
  store i64 %74, ptr %ram_user.i, align 8
  %ram_size.i = getelementptr inbounds %struct.nv_device_info_v0, ptr %data, i32 0, i32 6
  %76 = ptrtoint ptr %ram_size.i to i32
  call void @__asan_store8_noabort(i32 %76)
  store i64 %74, ptr %ram_size.i, align 8
  br label %if.end186.i

if.else183.i:                                     ; preds = %land.lhs.true178.i.if.else183.i_crit_edge, %sw.epilog173.i.if.else183.i_crit_edge
  %ram_size185.i = getelementptr inbounds %struct.nv_device_info_v0, ptr %data, i32 0, i32 6
  %77 = call ptr @memset(ptr %ram_size185.i, i32 0, i32 16)
  br label %if.end186.i

if.end186.i:                                      ; preds = %if.else183.i, %if.then180.i
  %tobool187.not.i = icmp eq ptr %14, null
  br i1 %tobool187.not.i, label %if.end186.i.if.end197.i_crit_edge, label %land.lhs.true188.i

if.end186.i.if.end197.i_crit_edge:                ; preds = %if.end186.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end197.i

land.lhs.true188.i:                               ; preds = %if.end186.i
  %ram_size189.i = getelementptr inbounds %struct.nv_device_info_v0, ptr %data, i32 0, i32 6
  %78 = ptrtoint ptr %ram_size189.i to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %ram_size189.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %79)
  %cmp190.not.i = icmp eq i64 %79, 0
  br i1 %cmp190.not.i, label %land.lhs.true188.i.if.end197.i_crit_edge, label %if.then192.i

land.lhs.true188.i.if.end197.i_crit_edge:         ; preds = %land.lhs.true188.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end197.i

if.then192.i:                                     ; preds = %land.lhs.true188.i
  call void @__sanitizer_cov_trace_pc() #9
  %ram_user193.i = getelementptr inbounds %struct.nv_device_info_v0, ptr %data, i32 0, i32 7
  %80 = ptrtoint ptr %ram_user193.i to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %ram_user193.i, align 8
  %reserved.i = getelementptr inbounds %struct.nvkm_instmem, ptr %14, i32 0, i32 5
  %82 = ptrtoint ptr %reserved.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %reserved.i, align 4
  %conv194.i = zext i32 %83 to i64
  %sub195.i = sub i64 %81, %conv194.i
  store i64 %sub195.i, ptr %ram_user193.i, align 8
  br label %if.end197.i

if.end197.i:                                      ; preds = %if.then192.i, %land.lhs.true188.i.if.end197.i_crit_edge, %if.end186.i.if.end197.i_crit_edge
  %chip.i = getelementptr inbounds %struct.nv_device_info_v0, ptr %data, i32 0, i32 8
  %chip199.i = getelementptr inbounds %struct.nvkm_device, ptr %10, i32 0, i32 14
  %84 = ptrtoint ptr %chip199.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %chip199.i, align 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %85, align 4
  %call201.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %chip.i, i32 noundef 16, ptr noundef nonnull @.str.16, ptr noundef %87) #7
  %name202.i = getelementptr inbounds %struct.nv_device_info_v0, ptr %data, i32 0, i32 9
  %name204.i = getelementptr inbounds %struct.nvkm_device, ptr %10, i32 0, i32 5
  %88 = ptrtoint ptr %name204.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %name204.i, align 8
  %call205.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name202.i, i32 noundef 64, ptr noundef nonnull @.str.16, ptr noundef %89) #7
  br label %cleanup

sw.bb6:                                           ; preds = %if.end
  %device2.i16 = getelementptr inbounds %struct.nvkm_udevice, ptr %object, i32 0, i32 1
  %90 = ptrtoint ptr %device2.i16 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %device2.i16, align 8
  %92 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %client, align 4
  %debug.i18 = getelementptr inbounds %struct.nvkm_client, ptr %93, i32 0, i32 3
  %94 = ptrtoint ptr %debug.i18 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %debug.i18, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %95)
  %cmp.i19 = icmp ugt i32 %95, 4
  br i1 %cmp.i19, label %do.end.i24, label %sw.bb6.land.lhs.true.i25_crit_edge

sw.bb6.land.lhs.true.i25_crit_edge:               ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.i25

do.end.i24:                                       ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #9
  %name.i20 = getelementptr inbounds %struct.nvkm_client, ptr %93, i32 0, i32 1
  %handle.i21 = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 4
  %96 = ptrtoint ptr %handle.i21 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %handle.i21, align 8
  %oclass.i22 = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 3
  %98 = ptrtoint ptr %oclass.i22 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %oclass.i22, align 4
  %call.i23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name.i20, i32 noundef %97, i32 noundef %99, i32 noundef %size) #10
  br label %land.lhs.true.i25

land.lhs.true.i25:                                ; preds = %do.end.i24, %sw.bb6.land.lhs.true.i25_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %size)
  %cmp7.i = icmp ugt i32 %size, 15
  br i1 %cmp7.i, label %land.lhs.true11.i, label %land.lhs.true.i25.cleanup_crit_edge

land.lhs.true.i25.cleanup_crit_edge:              ; preds = %land.lhs.true.i25
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true11.i:                                ; preds = %land.lhs.true.i25
  %100 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %data, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %cmp14.i = icmp eq i8 %101, 0
  br i1 %cmp14.i, label %if.then16.i, label %land.lhs.true11.i.cleanup_crit_edge

land.lhs.true11.i.cleanup_crit_edge:              ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then16.i:                                      ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %size)
  %tobool.not.i = icmp eq i32 %size, 16
  br i1 %tobool.not.i, label %do.body23.i, label %if.then16.i.cleanup_crit_edge

if.then16.i.cleanup_crit_edge:                    ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body23.i:                                      ; preds = %if.then16.i
  %102 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %client, align 4
  %debug27.i = getelementptr inbounds %struct.nvkm_client, ptr %103, i32 0, i32 3
  %104 = ptrtoint ptr %debug27.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %debug27.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %105)
  %cmp28.i = icmp ugt i32 %105, 4
  br i1 %cmp28.i, label %do.end33.i, label %do.body23.i.if.end42.i_crit_edge

do.body23.i.if.end42.i_crit_edge:                 ; preds = %do.body23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42.i

do.end33.i:                                       ; preds = %do.body23.i
  call void @__sanitizer_cov_trace_pc() #9
  %name35.i = getelementptr inbounds %struct.nvkm_client, ptr %103, i32 0, i32 1
  %handle37.i = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 4
  %106 = ptrtoint ptr %handle37.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %handle37.i, align 8
  %oclass38.i = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 3
  %108 = ptrtoint ptr %oclass38.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %oclass38.i, align 4
  %call41.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %name35.i, i32 noundef %107, i32 noundef %109, i32 noundef 0) #10
  br label %if.end42.i

if.end42.i:                                       ; preds = %do.end33.i, %do.body23.i.if.end42.i_crit_edge
  %timer.i = getelementptr inbounds %struct.nvkm_device, ptr %91, i32 0, i32 31
  %110 = ptrtoint ptr %timer.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %timer.i, align 8
  %call45.i = tail call i64 @nvkm_timer_read(ptr noundef %111) #7
  %time.i = getelementptr inbounds %struct.nv_device_time_v0, ptr %data, i32 0, i32 2
  %112 = ptrtoint ptr %time.i to i32
  call void @__asan_store8_noabort(i32 %112)
  store i64 %call45.i, ptr %time.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end42.i, %if.then16.i.cleanup_crit_edge, %land.lhs.true11.i.cleanup_crit_edge, %land.lhs.true.i25.cleanup_crit_edge, %if.end197.i, %if.then79.i.cleanup_crit_edge, %land.lhs.true66.i.cleanup_crit_edge, %nvkm_udevice_info_v1.exit.i.cleanup_crit_edge, %for.cond.preheader.i.cleanup_crit_edge, %if.end45.i.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.end197.i ], [ -22, %if.end45.i.cleanup_crit_edge ], [ -38, %land.lhs.true66.i.cleanup_crit_edge ], [ -7, %if.then79.i.cleanup_crit_edge ], [ -38, %land.lhs.true.i.cleanup_crit_edge ], [ 0, %for.cond.preheader.i.cleanup_crit_edge ], [ 0, %if.end42.i ], [ -38, %land.lhs.true.i25.cleanup_crit_edge ], [ -38, %land.lhs.true11.i.cleanup_crit_edge ], [ -7, %if.then16.i.cleanup_crit_edge ], [ 0, %nvkm_udevice_info_v1.exit.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_udevice_map(ptr nocapture noundef readonly %object, ptr nocapture noundef readnone %argv, i32 noundef %argc, ptr nocapture noundef writeonly %type, ptr nocapture noundef writeonly %addr, ptr nocapture noundef writeonly %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.nvkm_udevice, ptr %object, i32 0, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 8
  %2 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %type, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 8
  %resource_addr = getelementptr inbounds %struct.nvkm_device_func, ptr %4, i32 0, i32 6
  %5 = ptrtoint ptr %resource_addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %resource_addr, align 4
  %call = tail call i32 %6(ptr noundef %1, i32 noundef 0) #7
  %conv = zext i32 %call to i64
  %7 = ptrtoint ptr %addr to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %conv, ptr %addr, align 8
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %resource_size = getelementptr inbounds %struct.nvkm_device_func, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %resource_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %resource_size, align 4
  %call3 = tail call i32 %11(ptr noundef %1, i32 noundef 0) #7
  %conv4 = zext i32 %call3 to i64
  %12 = ptrtoint ptr %size to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %conv4, ptr %size, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_udevice_rd08(ptr nocapture noundef readonly %object, i64 noundef %addr, ptr nocapture noundef writeonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.nvkm_udevice, ptr %object, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 8
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %idx.ext = trunc i64 %addr to i32
  %add.ptr1 = getelementptr i8, ptr %3, i32 %idx.ext
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr1) #7, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !55
  %5 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %data, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_udevice_rd16(ptr nocapture noundef readonly %object, i64 noundef %addr, ptr nocapture noundef writeonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.nvkm_udevice, ptr %object, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 8
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %idx.ext = trunc i64 %addr to i32
  %add.ptr1 = getelementptr i8, ptr %3, i32 %idx.ext
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr1) #7, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !57
  %5 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %data, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_udevice_rd32(ptr nocapture noundef readonly %object, i64 noundef %addr, ptr nocapture noundef writeonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.nvkm_udevice, ptr %object, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 8
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %idx.ext = trunc i64 %addr to i32
  %add.ptr1 = getelementptr i8, ptr %3, i32 %idx.ext
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #7, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  %5 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %data, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_udevice_wr08(ptr nocapture noundef readonly %object, i64 noundef %addr, i8 noundef zeroext %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.nvkm_udevice, ptr %object, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 8
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %idx.ext = trunc i64 %addr to i32
  %add.ptr1 = getelementptr i8, ptr %3, i32 %idx.ext
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1, i8 %data) #7, !srcloc !61
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_udevice_wr16(ptr nocapture noundef readonly %object, i64 noundef %addr, i16 noundef zeroext %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !62
  tail call void @arm_heavy_mb() #7
  %device = getelementptr inbounds %struct.nvkm_udevice, ptr %object, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 8
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %idx.ext = trunc i64 %addr to i32
  %add.ptr1 = getelementptr i8, ptr %3, i32 %idx.ext
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr1, i16 %data) #7, !srcloc !63
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_udevice_wr32(ptr nocapture noundef readonly %object, i64 noundef %addr, i32 noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  tail call void @arm_heavy_mb() #7
  %device = getelementptr inbounds %struct.nvkm_udevice, ptr %object, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 8
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %idx.ext = trunc i64 %addr to i32
  %add.ptr1 = getelementptr i8, ptr %3, i32 %idx.ext
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 %data) #7, !srcloc !65
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_udevice_child_get(ptr nocapture noundef readonly %object, i32 noundef %index, ptr noundef %oclass) #0 align 64 {
entry:
  %sclass = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.nvkm_udevice, ptr %object, i32 0, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sclass) #7
  %2 = ptrtoint ptr %sclass to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %sclass, align 4
  %engine7 = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 10
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %index.addr.0 = phi i32 [ %index, %entry ], [ %index.addr.1, %for.inc ]
  %mask.0 = phi i64 [ 35191888281600, %entry ], [ %and, %for.inc ]
  %conv.i = trunc i64 %mask.0 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i)
  %cmp.i = icmp eq i32 %conv.i, 0
  br i1 %cmp.i, label %__ffs64.exit, label %__ffs64.exit.thread

__ffs64.exit.thread:                              ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  %3 = call i32 @llvm.cttz.i32(i32 %conv.i, i1 true) #7, !range !66
  br label %land.rhs

__ffs64.exit:                                     ; preds = %for.cond
  %shr.i = lshr i64 %mask.0, 32
  %conv2.i = trunc i64 %shr.i to i32
  %4 = call i32 @llvm.cttz.i32(i32 %conv2.i, i1 false) #7, !range !66
  %add.i = add nuw nsw i32 %4, 32
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %mask.0)
  %tobool.not = icmp eq i64 %mask.0, 0
  br i1 %tobool.not, label %for.end, label %__ffs64.exit.land.rhs_crit_edge

__ffs64.exit.land.rhs_crit_edge:                  ; preds = %__ffs64.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs

land.rhs:                                         ; preds = %__ffs64.exit.land.rhs_crit_edge, %__ffs64.exit.thread
  %retval.0.i60 = phi i32 [ %3, %__ffs64.exit.thread ], [ %add.i, %__ffs64.exit.land.rhs_crit_edge ]
  %5 = ptrtoint ptr %sclass to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sclass, align 4
  %tobool2.not = icmp eq ptr %6, null
  br i1 %tobool2.not, label %for.body, label %land.rhs.if.end34_crit_edge

land.rhs.if.end34_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

for.body:                                         ; preds = %land.rhs
  %call3 = call ptr @nvkm_device_engine(ptr noundef %1, i32 noundef %retval.0.i60, i32 noundef 0) #7
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %for.body.for.inc_crit_edge, label %lor.lhs.false

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

lor.lhs.false:                                    ; preds = %for.body
  %7 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %call3, align 4
  %base = getelementptr inbounds %struct.nvkm_engine_func, ptr %8, i32 0, i32 9
  %9 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base, align 4
  %tobool6.not = icmp eq ptr %10, null
  br i1 %tobool6.not, label %lor.lhs.false.for.inc_crit_edge, label %if.end

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %engine7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call3, ptr %engine7, align 8
  %12 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %call3, align 4
  %base9 = getelementptr inbounds %struct.nvkm_engine_func, ptr %13, i32 0, i32 9
  %14 = ptrtoint ptr %base9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base9, align 4
  %call11 = call i32 %15(ptr noundef %oclass, i32 noundef %index.addr.0, ptr noundef nonnull %sclass) #7
  %sub = sub i32 %index.addr.0, %call11
  br label %for.inc

for.inc:                                          ; preds = %if.end, %lor.lhs.false.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %index.addr.1 = phi i32 [ %sub, %if.end ], [ %index.addr.0, %lor.lhs.false.for.inc_crit_edge ], [ %index.addr.0, %for.body.for.inc_crit_edge ]
  %sh_prom = zext i32 %retval.0.i60 to i64
  %shl = shl nuw i64 1, %sh_prom
  %neg = xor i64 %shl, -1
  %and = and i64 %mask.0, %neg
  br label %for.cond

for.end:                                          ; preds = %__ffs64.exit
  %16 = ptrtoint ptr %sclass to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pr = load ptr, ptr %sclass, align 4
  %tobool12.not = icmp eq ptr %.pr, null
  br i1 %tobool12.not, label %if.then13, label %for.end.if.end34_crit_edge

for.end.if.end34_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

if.then13:                                        ; preds = %for.end
  %dec = add i32 %index.addr.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %index.addr.0)
  %cmp = icmp eq i32 %index.addr.0, 0
  br i1 %cmp, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %sclass to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @nvkm_control_oclass, ptr %sclass, align 4
  br label %if.end31

if.else:                                          ; preds = %if.then13
  %mmu = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 35
  %18 = ptrtoint ptr %mmu to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mmu, align 8
  %tobool15.not = icmp eq ptr %19, null
  br i1 %tobool15.not, label %if.else.if.else20_crit_edge, label %land.lhs.true

if.else.if.else20_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else20

land.lhs.true:                                    ; preds = %if.else
  %dec16 = add i32 %index.addr.0, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp17 = icmp eq i32 %dec, 0
  br i1 %cmp17, label %if.then18, label %land.lhs.true.if.else20_crit_edge

land.lhs.true.if.else20_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else20

if.then18:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %user = getelementptr inbounds %struct.nvkm_mmu, ptr %19, i32 0, i32 11
  %20 = ptrtoint ptr %sclass to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %user, ptr %sclass, align 4
  br label %if.end31

if.else20:                                        ; preds = %land.lhs.true.if.else20_crit_edge, %if.else.if.else20_crit_edge
  %index.addr.2 = phi i32 [ %dec16, %land.lhs.true.if.else20_crit_edge ], [ %dec, %if.else.if.else20_crit_edge ]
  %fault = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 37
  %21 = ptrtoint ptr %fault to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %fault, align 8
  %tobool21.not = icmp ne ptr %22, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %index.addr.2)
  %cmp24 = icmp eq i32 %index.addr.2, 0
  %or.cond = select i1 %tobool21.not, i1 %cmp24, i1 false
  br i1 %or.cond, label %if.then25, label %if.else20.cleanup_crit_edge

if.else20.cleanup_crit_edge:                      ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then25:                                        ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #9
  %user27 = getelementptr inbounds %struct.nvkm_fault, ptr %22, i32 0, i32 6
  %23 = ptrtoint ptr %sclass to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %user27, ptr %sclass, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then25, %if.then18, %if.then14
  %base32 = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 1
  %24 = ptrtoint ptr %sclass to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sclass, align 4
  %base33 = getelementptr inbounds %struct.nvkm_device_oclass, ptr %25, i32 0, i32 1
  %26 = call ptr @memcpy(ptr %base32, ptr %base33, i32 20)
  br label %if.end34

if.end34:                                         ; preds = %if.end31, %for.end.if.end34_crit_edge, %land.rhs.if.end34_crit_edge
  %27 = ptrtoint ptr %oclass to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @nvkm_udevice_child_new, ptr %oclass, align 8
  %28 = ptrtoint ptr %sclass to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sclass, align 4
  %priv = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 2
  %30 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %priv, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %if.else20.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end34 ], [ -22, %if.else20.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sclass) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_device_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_device_fini(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_device_subdev(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_subdev_info(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nvkm_timer_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_device_engine(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_udevice_child_new(ptr noundef %oclass, ptr noundef %data, i32 noundef %size, ptr noundef %pobject) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 9
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 4
  %priv = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 2
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %device = getelementptr inbounds %struct.nvkm_udevice, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device, align 8
  %call = tail call i32 %5(ptr noundef %7, ptr noundef %oclass, ptr noundef %data, i32 noundef %size, ptr noundef %pobject) #7
  ret i32 %call
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !14, !16, !17, !18, !19, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !36, !37, !38, !39, !41, !42, !43}
!llvm.module.flags = !{!45, !46, !47, !48, !49, !50, !51, !52}
!llvm.ident = !{!53}

!0 = !{ptr @nvkm_udevice_sclass, !1, !"nvkm_udevice_sclass", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/user.c", i32 422, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/user.c", i32 392, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @nvkm_udevice_new._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @nvkm_udevice_new._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/user.c", i32 394, i32 3}
!10 = !{ptr @nvkm_udevice_new._entry.3, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @nvkm_udevice_new._entry_ptr.5, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @nvkm_udevice_super, !13, !"nvkm_udevice_super", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/user.c", i32 357, i32 1}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/user.c", i32 192, i32 2}
!16 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @nvkm_udevice_mthd._entry, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @nvkm_udevice_mthd._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/user.c", i32 85, i32 2}
!21 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @nvkm_udevice_info._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @nvkm_udevice_info._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/user.c", i32 87, i32 3}
!26 = !{ptr @nvkm_udevice_info._entry.10, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @nvkm_udevice_info._entry_ptr.12, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/user.c", i32 97, i32 3}
!30 = !{ptr @nvkm_udevice_info._entry.13, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @nvkm_udevice_info._entry_ptr.15, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/user.c", i32 164, i32 49}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/user.c", i32 179, i32 2}
!36 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @nvkm_udevice_time._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @nvkm_udevice_time._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.20, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/user.c", i32 181, i32 3}
!41 = !{ptr @nvkm_udevice_time._entry.19, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @nvkm_udevice_time._entry_ptr.21, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @nvkm_udevice, !44, !"nvkm_udevice", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/user.c", i32 372, i32 1}
!45 = !{i32 1, !"wchar_size", i32 2}
!46 = !{i32 1, !"min_enum_size", i32 4}
!47 = !{i32 8, !"branch-target-enforcement", i32 0}
!48 = !{i32 8, !"sign-return-address", i32 0}
!49 = !{i32 8, !"sign-return-address-all", i32 0}
!50 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!51 = !{i32 7, !"uwtable", i32 1}
!52 = !{i32 7, !"frame-pointer", i32 2}
!53 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!54 = !{i64 5390369}
!55 = !{i64 2152929714}
!56 = !{i64 5389751}
!57 = !{i64 2156377950}
!58 = !{i64 5390589}
!59 = !{i64 2156379648}
!60 = !{i64 2152931319}
!61 = !{i64 5389974}
!62 = !{i64 2156382658}
!63 = !{i64 5389551}
!64 = !{i64 2156384364}
!65 = !{i64 5390171}
!66 = !{i32 0, i32 33}
