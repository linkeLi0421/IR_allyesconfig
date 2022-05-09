; ModuleID = '/llk/IR_all_yes/sound/usb/caiaq/control.c_pt.bc'
source_filename = "../sound/usb/caiaq/control.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.caiaq_controller = type { ptr, i32 }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.82, i32 }
%union.anon.82 = type { ptr }
%struct.snd_usb_audio = type { i32, ptr, ptr, [16 x ptr], i32, i16, %struct.mutex, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.wait_queue_head, i32, i8, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.list_head, %struct.list_head, i32, i8, i8, i8, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.77, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.77 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.snd_ctl_elem_info = type { %struct.snd_ctl_elem_id, i32, i32, i32, i32, %union.anon.68, [64 x i8] }
%union.anon.68 = type { %struct.anon.71, [40 x i8] }
%struct.anon.71 = type { i32, i32, [64 x i8], i64, i32 }
%struct.snd_usb_caiaqdev = type { %struct.snd_usb_audio, %struct.urb, %struct.urb, ptr, ptr, ptr, [64 x i8], [64 x i8], [64 x i8], %struct.caiaq_device_spec, %struct.spinlock, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i32, [255 x i8], [255 x i8], i32, i32, i32, i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, ptr, ptr, i32, i32, i32, [32 x ptr], [32 x ptr], [256 x i8], [2 x i8], ptr, [64 x i8], [128 x i16], ptr, [512 x i8], ptr, %struct.snd_pcm_hardware, ptr, ptr, ptr }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.caiaq_device_spec = type { i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.72, [128 x i8] }
%union.anon.72 = type { %union.anon.74 }
%union.anon.74 = type { [64 x i64] }

@rk2_controller = internal constant { [23 x %struct.caiaq_controller], [40 x i8] } { [23 x %struct.caiaq_controller] [%struct.caiaq_controller { ptr @.str.4, i32 5 }, %struct.caiaq_controller { ptr @.str.5, i32 4 }, %struct.caiaq_controller { ptr @.str.6, i32 3 }, %struct.caiaq_controller { ptr @.str.7, i32 2 }, %struct.caiaq_controller { ptr @.str.8, i32 1 }, %struct.caiaq_controller { ptr @.str.9, i32 0 }, %struct.caiaq_controller { ptr @.str.10, i32 6 }, %struct.caiaq_controller { ptr @.str.11, i32 8 }, %struct.caiaq_controller { ptr @.str.12, i32 9 }, %struct.caiaq_controller { ptr @.str.13, i32 10 }, %struct.caiaq_controller { ptr @.str.14, i32 11 }, %struct.caiaq_controller { ptr @.str.15, i32 12 }, %struct.caiaq_controller { ptr @.str.16, i32 13 }, %struct.caiaq_controller { ptr @.str.17, i32 14 }, %struct.caiaq_controller { ptr @.str.18, i32 15 }, %struct.caiaq_controller { ptr @.str.19, i32 16 }, %struct.caiaq_controller { ptr @.str.20, i32 17 }, %struct.caiaq_controller { ptr @.str.21, i32 18 }, %struct.caiaq_controller { ptr @.str.22, i32 19 }, %struct.caiaq_controller { ptr @.str.23, i32 20 }, %struct.caiaq_controller { ptr @.str.24, i32 21 }, %struct.caiaq_controller { ptr @.str.25, i32 22 }, %struct.caiaq_controller { ptr @.str.26, i32 23 }], [40 x i8] zeroinitializer }, align 32
@rk3_controller = internal constant { [41 x %struct.caiaq_controller], [88 x i8] } { [41 x %struct.caiaq_controller] [%struct.caiaq_controller { ptr @.str.27, i32 0 }, %struct.caiaq_controller { ptr @.str.11, i32 1 }, %struct.caiaq_controller { ptr @.str.12, i32 2 }, %struct.caiaq_controller { ptr @.str.28, i32 3 }, %struct.caiaq_controller { ptr @.str.29, i32 4 }, %struct.caiaq_controller { ptr @.str.30, i32 5 }, %struct.caiaq_controller { ptr @.str.31, i32 6 }, %struct.caiaq_controller { ptr @.str.32, i32 7 }, %struct.caiaq_controller { ptr @.str.13, i32 8 }, %struct.caiaq_controller { ptr @.str.14, i32 9 }, %struct.caiaq_controller { ptr @.str.15, i32 10 }, %struct.caiaq_controller { ptr @.str.16, i32 11 }, %struct.caiaq_controller { ptr @.str.17, i32 12 }, %struct.caiaq_controller { ptr @.str.18, i32 13 }, %struct.caiaq_controller { ptr @.str.19, i32 14 }, %struct.caiaq_controller { ptr @.str.33, i32 15 }, %struct.caiaq_controller { ptr @.str.20, i32 16 }, %struct.caiaq_controller { ptr @.str.21, i32 17 }, %struct.caiaq_controller { ptr @.str.22, i32 18 }, %struct.caiaq_controller { ptr @.str.23, i32 19 }, %struct.caiaq_controller { ptr @.str.24, i32 20 }, %struct.caiaq_controller { ptr @.str.25, i32 21 }, %struct.caiaq_controller { ptr @.str.26, i32 22 }, %struct.caiaq_controller { ptr @.str.34, i32 23 }, %struct.caiaq_controller { ptr @.str.35, i32 24 }, %struct.caiaq_controller { ptr @.str.36, i32 25 }, %struct.caiaq_controller { ptr @.str.37, i32 26 }, %struct.caiaq_controller { ptr @.str.38, i32 27 }, %struct.caiaq_controller { ptr @.str.39, i32 28 }, %struct.caiaq_controller { ptr @.str.40, i32 29 }, %struct.caiaq_controller { ptr @.str.41, i32 30 }, %struct.caiaq_controller { ptr @.str.42, i32 31 }, %struct.caiaq_controller { ptr @.str.4, i32 32 }, %struct.caiaq_controller { ptr @.str.5, i32 33 }, %struct.caiaq_controller { ptr @.str.6, i32 34 }, %struct.caiaq_controller { ptr @.str.7, i32 35 }, %struct.caiaq_controller { ptr @.str.8, i32 36 }, %struct.caiaq_controller { ptr @.str.9, i32 37 }, %struct.caiaq_controller { ptr @.str.43, i32 38 }, %struct.caiaq_controller { ptr @.str.44, i32 39 }, %struct.caiaq_controller { ptr @.str.10, i32 40 }], [88 x i8] zeroinitializer }, align 32
@kore_controller = internal constant { [31 x %struct.caiaq_controller], [40 x i8] } { [31 x %struct.caiaq_controller] [%struct.caiaq_controller { ptr @.str.45, i32 65544 }, %struct.caiaq_controller { ptr @.str.46, i32 65548 }, %struct.caiaq_controller { ptr @.str.47, i32 65536 }, %struct.caiaq_controller { ptr @.str.48, i32 65540 }, %struct.caiaq_controller { ptr @.str.49, i32 65547 }, %struct.caiaq_controller { ptr @.str.50, i32 65551 }, %struct.caiaq_controller { ptr @.str.51, i32 65539 }, %struct.caiaq_controller { ptr @.str.52, i32 65543 }, %struct.caiaq_controller { ptr @.str.53, i32 65546 }, %struct.caiaq_controller { ptr @.str.54, i32 65550 }, %struct.caiaq_controller { ptr @.str.55, i32 65538 }, %struct.caiaq_controller { ptr @.str.56, i32 65542 }, %struct.caiaq_controller { ptr @.str.57, i32 65545 }, %struct.caiaq_controller { ptr @.str.58, i32 65549 }, %struct.caiaq_controller { ptr @.str.59, i32 65537 }, %struct.caiaq_controller { ptr @.str.60, i32 65541 }, %struct.caiaq_controller { ptr @.str, i32 65554 }, %struct.caiaq_controller { ptr @.str.2, i32 65558 }, %struct.caiaq_controller { ptr @.str.61, i32 65552 }, %struct.caiaq_controller { ptr @.str.62, i32 65556 }, %struct.caiaq_controller { ptr @.str.63, i32 65559 }, %struct.caiaq_controller { ptr @.str.64, i32 65557 }, %struct.caiaq_controller { ptr @.str.65, i32 65555 }, %struct.caiaq_controller { ptr @.str.66, i32 65553 }, %struct.caiaq_controller { ptr @.str.67, i32 65566 }, %struct.caiaq_controller { ptr @.str.68, i32 65564 }, %struct.caiaq_controller { ptr @.str.69, i32 65567 }, %struct.caiaq_controller { ptr @.str.70, i32 65565 }, %struct.caiaq_controller { ptr @.str.71, i32 65563 }, %struct.caiaq_controller { ptr @.str.72, i32 65560 }, %struct.caiaq_controller { ptr @.str.73, i32 65562 }], [40 x i8] zeroinitializer }, align 32
@kontrolx1_controller = internal constant { [31 x %struct.caiaq_controller], [40 x i8] } { [31 x %struct.caiaq_controller] [%struct.caiaq_controller { ptr @.str.79, i32 65543 }, %struct.caiaq_controller { ptr @.str.80, i32 65542 }, %struct.caiaq_controller { ptr @.str.81, i32 65541 }, %struct.caiaq_controller { ptr @.str.82, i32 65540 }, %struct.caiaq_controller { ptr @.str.83, i32 65539 }, %struct.caiaq_controller { ptr @.str.84, i32 65538 }, %struct.caiaq_controller { ptr @.str.85, i32 65537 }, %struct.caiaq_controller { ptr @.str.86, i32 65536 }, %struct.caiaq_controller { ptr @.str.87, i32 65564 }, %struct.caiaq_controller { ptr @.str.88, i32 65565 }, %struct.caiaq_controller { ptr @.str.89, i32 65566 }, %struct.caiaq_controller { ptr @.str.90, i32 65560 }, %struct.caiaq_controller { ptr @.str.91, i32 65561 }, %struct.caiaq_controller { ptr @.str.92, i32 65553 }, %struct.caiaq_controller { ptr @.str.93, i32 65552 }, %struct.caiaq_controller { ptr @.str.94, i32 65555 }, %struct.caiaq_controller { ptr @.str.95, i32 65554 }, %struct.caiaq_controller { ptr @.str.96, i32 65557 }, %struct.caiaq_controller { ptr @.str.97, i32 65556 }, %struct.caiaq_controller { ptr @.str.98, i32 65559 }, %struct.caiaq_controller { ptr @.str.99, i32 65558 }, %struct.caiaq_controller { ptr @.str.100, i32 65562 }, %struct.caiaq_controller { ptr @.str.101, i32 65563 }, %struct.caiaq_controller { ptr @.str.102, i32 65551 }, %struct.caiaq_controller { ptr @.str.103, i32 65550 }, %struct.caiaq_controller { ptr @.str.104, i32 65549 }, %struct.caiaq_controller { ptr @.str.105, i32 65548 }, %struct.caiaq_controller { ptr @.str.106, i32 65547 }, %struct.caiaq_controller { ptr @.str.107, i32 65546 }, %struct.caiaq_controller { ptr @.str.108, i32 65545 }, %struct.caiaq_controller { ptr @.str.109, i32 65544 }], [40 x i8] zeroinitializer }, align 32
@kontrols4_controller = internal constant { [163 x %struct.caiaq_controller], [328 x i8] } { [163 x %struct.caiaq_controller] [%struct.caiaq_controller { ptr @.str.110, i32 65546 }, %struct.caiaq_controller { ptr @.str.111, i32 65547 }, %struct.caiaq_controller { ptr @.str.112, i32 65548 }, %struct.caiaq_controller { ptr @.str.113, i32 65550 }, %struct.caiaq_controller { ptr @.str.114, i32 65551 }, %struct.caiaq_controller { ptr @.str.115, i32 65648 }, %struct.caiaq_controller { ptr @.str.116, i32 65649 }, %struct.caiaq_controller { ptr @.str.117, i32 65654 }, %struct.caiaq_controller { ptr @.str.118, i32 65655 }, %struct.caiaq_controller { ptr @.str.119, i32 65656 }, %struct.caiaq_controller { ptr @.str.120, i32 65657 }, %struct.caiaq_controller { ptr @.str.121, i32 65662 }, %struct.caiaq_controller { ptr @.str.122, i32 65663 }, %struct.caiaq_controller { ptr @.str.123, i32 65540 }, %struct.caiaq_controller { ptr @.str.124, i32 65541 }, %struct.caiaq_controller { ptr @.str.125, i32 65633 }, %struct.caiaq_controller { ptr @.str.126, i32 65634 }, %struct.caiaq_controller { ptr @.str.127, i32 65635 }, %struct.caiaq_controller { ptr @.str.128, i32 65636 }, %struct.caiaq_controller { ptr @.str.129, i32 65637 }, %struct.caiaq_controller { ptr @.str.130, i32 65638 }, %struct.caiaq_controller { ptr @.str.131, i32 65639 }, %struct.caiaq_controller { ptr @.str.132, i32 65650 }, %struct.caiaq_controller { ptr @.str.133, i32 65652 }, %struct.caiaq_controller { ptr @.str.134, i32 65685 }, %struct.caiaq_controller { ptr @.str.135, i32 65684 }, %struct.caiaq_controller { ptr @.str.136, i32 65538 }, %struct.caiaq_controller { ptr @.str.137, i32 65539 }, %struct.caiaq_controller { ptr @.str.138, i32 65625 }, %struct.caiaq_controller { ptr @.str.139, i32 65626 }, %struct.caiaq_controller { ptr @.str.140, i32 65627 }, %struct.caiaq_controller { ptr @.str.141, i32 65628 }, %struct.caiaq_controller { ptr @.str.142, i32 65629 }, %struct.caiaq_controller { ptr @.str.143, i32 65630 }, %struct.caiaq_controller { ptr @.str.144, i32 65631 }, %struct.caiaq_controller { ptr @.str.145, i32 65658 }, %struct.caiaq_controller { ptr @.str.146, i32 65661 }, %struct.caiaq_controller { ptr @.str.147, i32 65683 }, %struct.caiaq_controller { ptr @.str.148, i32 65682 }, %struct.caiaq_controller { ptr @.str.149, i32 65542 }, %struct.caiaq_controller { ptr @.str.150, i32 65543 }, %struct.caiaq_controller { ptr @.str.151, i32 65641 }, %struct.caiaq_controller { ptr @.str.152, i32 65642 }, %struct.caiaq_controller { ptr @.str.153, i32 65643 }, %struct.caiaq_controller { ptr @.str.154, i32 65644 }, %struct.caiaq_controller { ptr @.str.155, i32 65645 }, %struct.caiaq_controller { ptr @.str.156, i32 65646 }, %struct.caiaq_controller { ptr @.str.157, i32 65647 }, %struct.caiaq_controller { ptr @.str.158, i32 65651 }, %struct.caiaq_controller { ptr @.str.159, i32 65653 }, %struct.caiaq_controller { ptr @.str.160, i32 65687 }, %struct.caiaq_controller { ptr @.str.161, i32 65686 }, %struct.caiaq_controller { ptr @.str.162, i32 65536 }, %struct.caiaq_controller { ptr @.str.163, i32 65537 }, %struct.caiaq_controller { ptr @.str.164, i32 65617 }, %struct.caiaq_controller { ptr @.str.165, i32 65618 }, %struct.caiaq_controller { ptr @.str.166, i32 65619 }, %struct.caiaq_controller { ptr @.str.167, i32 65620 }, %struct.caiaq_controller { ptr @.str.168, i32 65621 }, %struct.caiaq_controller { ptr @.str.169, i32 65622 }, %struct.caiaq_controller { ptr @.str.170, i32 65623 }, %struct.caiaq_controller { ptr @.str.171, i32 65659 }, %struct.caiaq_controller { ptr @.str.172, i32 65660 }, %struct.caiaq_controller { ptr @.str.173, i32 65681 }, %struct.caiaq_controller { ptr @.str.174, i32 65680 }, %struct.caiaq_controller { ptr @.str.175, i32 65558 }, %struct.caiaq_controller { ptr @.str.176, i32 65559 }, %struct.caiaq_controller { ptr @.str.177, i32 65556 }, %struct.caiaq_controller { ptr @.str.178, i32 65557 }, %struct.caiaq_controller { ptr @.str.179, i32 65554 }, %struct.caiaq_controller { ptr @.str.180, i32 65555 }, %struct.caiaq_controller { ptr @.str.181, i32 65552 }, %struct.caiaq_controller { ptr @.str.182, i32 65553 }, %struct.caiaq_controller { ptr @.str.183, i32 65580 }, %struct.caiaq_controller { ptr @.str.184, i32 65581 }, %struct.caiaq_controller { ptr @.str.185, i32 65583 }, %struct.caiaq_controller { ptr @.str.186, i32 65582 }, %struct.caiaq_controller { ptr @.str.187, i32 65560 }, %struct.caiaq_controller { ptr @.str.188, i32 65563 }, %struct.caiaq_controller { ptr @.str.189, i32 65562 }, %struct.caiaq_controller { ptr @.str.190, i32 65561 }, %struct.caiaq_controller { ptr @.str.191, i32 65569 }, %struct.caiaq_controller { ptr @.str.192, i32 65568 }, %struct.caiaq_controller { ptr @.str.193, i32 65570 }, %struct.caiaq_controller { ptr @.str.194, i32 65571 }, %struct.caiaq_controller { ptr @.str.195, i32 65573 }, %struct.caiaq_controller { ptr @.str.196, i32 65572 }, %struct.caiaq_controller { ptr @.str.197, i32 65574 }, %struct.caiaq_controller { ptr @.str.198, i32 65575 }, %struct.caiaq_controller { ptr @.str.199, i32 65567 }, %struct.caiaq_controller { ptr @.str.200, i32 65566 }, %struct.caiaq_controller { ptr @.str.201, i32 65565 }, %struct.caiaq_controller { ptr @.str.202, i32 65564 }, %struct.caiaq_controller { ptr @.str.203, i32 65591 }, %struct.caiaq_controller { ptr @.str.204, i32 65590 }, %struct.caiaq_controller { ptr @.str.205, i32 65589 }, %struct.caiaq_controller { ptr @.str.206, i32 65588 }, %struct.caiaq_controller { ptr @.str.207, i32 65587 }, %struct.caiaq_controller { ptr @.str.208, i32 65586 }, %struct.caiaq_controller { ptr @.str.209, i32 65585 }, %struct.caiaq_controller { ptr @.str.210, i32 65584 }, %struct.caiaq_controller { ptr @.str.211, i32 65599 }, %struct.caiaq_controller { ptr @.str.212, i32 65598 }, %struct.caiaq_controller { ptr @.str.213, i32 65597 }, %struct.caiaq_controller { ptr @.str.214, i32 65596 }, %struct.caiaq_controller { ptr @.str.215, i32 65595 }, %struct.caiaq_controller { ptr @.str.216, i32 65594 }, %struct.caiaq_controller { ptr @.str.217, i32 65593 }, %struct.caiaq_controller { ptr @.str.218, i32 65592 }, %struct.caiaq_controller { ptr @.str.219, i32 65614 }, %struct.caiaq_controller { ptr @.str.220, i32 65615 }, %struct.caiaq_controller { ptr @.str.221, i32 65612 }, %struct.caiaq_controller { ptr @.str.222, i32 65613 }, %struct.caiaq_controller { ptr @.str.223, i32 65610 }, %struct.caiaq_controller { ptr @.str.224, i32 65611 }, %struct.caiaq_controller { ptr @.str.225, i32 65608 }, %struct.caiaq_controller { ptr @.str.226, i32 65609 }, %struct.caiaq_controller { ptr @.str.227, i32 65716 }, %struct.caiaq_controller { ptr @.str.228, i32 65717 }, %struct.caiaq_controller { ptr @.str.229, i32 65719 }, %struct.caiaq_controller { ptr @.str.230, i32 65718 }, %struct.caiaq_controller { ptr @.str.231, i32 65600 }, %struct.caiaq_controller { ptr @.str.232, i32 65603 }, %struct.caiaq_controller { ptr @.str.233, i32 65602 }, %struct.caiaq_controller { ptr @.str.234, i32 65601 }, %struct.caiaq_controller { ptr @.str.235, i32 65721 }, %struct.caiaq_controller { ptr @.str.236, i32 65720 }, %struct.caiaq_controller { ptr @.str.237, i32 65722 }, %struct.caiaq_controller { ptr @.str.238, i32 65723 }, %struct.caiaq_controller { ptr @.str.239, i32 65725 }, %struct.caiaq_controller { ptr @.str.240, i32 65724 }, %struct.caiaq_controller { ptr @.str.241, i32 65726 }, %struct.caiaq_controller { ptr @.str.242, i32 65727 }, %struct.caiaq_controller { ptr @.str.243, i32 65607 }, %struct.caiaq_controller { ptr @.str.244, i32 65606 }, %struct.caiaq_controller { ptr @.str.245, i32 65605 }, %struct.caiaq_controller { ptr @.str.246, i32 65604 }, %struct.caiaq_controller { ptr @.str.247, i32 65711 }, %struct.caiaq_controller { ptr @.str.248, i32 65710 }, %struct.caiaq_controller { ptr @.str.249, i32 65709 }, %struct.caiaq_controller { ptr @.str.250, i32 65708 }, %struct.caiaq_controller { ptr @.str.251, i32 65707 }, %struct.caiaq_controller { ptr @.str.252, i32 65706 }, %struct.caiaq_controller { ptr @.str.253, i32 65705 }, %struct.caiaq_controller { ptr @.str.254, i32 65704 }, %struct.caiaq_controller { ptr @.str.255, i32 65703 }, %struct.caiaq_controller { ptr @.str.256, i32 65702 }, %struct.caiaq_controller { ptr @.str.257, i32 65701 }, %struct.caiaq_controller { ptr @.str.258, i32 65700 }, %struct.caiaq_controller { ptr @.str.259, i32 65699 }, %struct.caiaq_controller { ptr @.str.260, i32 65698 }, %struct.caiaq_controller { ptr @.str.261, i32 65697 }, %struct.caiaq_controller { ptr @.str.262, i32 65696 }, %struct.caiaq_controller { ptr @.str.263, i32 65689 }, %struct.caiaq_controller { ptr @.str.264, i32 65690 }, %struct.caiaq_controller { ptr @.str.265, i32 65691 }, %struct.caiaq_controller { ptr @.str.266, i32 65692 }, %struct.caiaq_controller { ptr @.str.267, i32 65693 }, %struct.caiaq_controller { ptr @.str.268, i32 65665 }, %struct.caiaq_controller { ptr @.str.269, i32 65666 }, %struct.caiaq_controller { ptr @.str.270, i32 65667 }, %struct.caiaq_controller { ptr @.str.271, i32 65668 }, %struct.caiaq_controller { ptr @.str.272, i32 65669 }], [328 x i8] zeroinitializer }, align 32
@maschine_controller = internal constant { [58 x %struct.caiaq_controller], [112 x i8] } { [58 x %struct.caiaq_controller] [%struct.caiaq_controller { ptr @.str.273, i32 65539 }, %struct.caiaq_controller { ptr @.str.274, i32 65538 }, %struct.caiaq_controller { ptr @.str.275, i32 65537 }, %struct.caiaq_controller { ptr @.str.276, i32 65536 }, %struct.caiaq_controller { ptr @.str.277, i32 65543 }, %struct.caiaq_controller { ptr @.str.278, i32 65542 }, %struct.caiaq_controller { ptr @.str.279, i32 65541 }, %struct.caiaq_controller { ptr @.str.280, i32 65540 }, %struct.caiaq_controller { ptr @.str.281, i32 65547 }, %struct.caiaq_controller { ptr @.str.282, i32 65546 }, %struct.caiaq_controller { ptr @.str.283, i32 65545 }, %struct.caiaq_controller { ptr @.str.284, i32 65544 }, %struct.caiaq_controller { ptr @.str.285, i32 65551 }, %struct.caiaq_controller { ptr @.str.286, i32 65550 }, %struct.caiaq_controller { ptr @.str.287, i32 65549 }, %struct.caiaq_controller { ptr @.str.288, i32 65548 }, %struct.caiaq_controller { ptr @.str.289, i32 65552 }, %struct.caiaq_controller { ptr @.str.290, i32 65553 }, %struct.caiaq_controller { ptr @.str.291, i32 65554 }, %struct.caiaq_controller { ptr @.str.292, i32 65555 }, %struct.caiaq_controller { ptr @.str.293, i32 65556 }, %struct.caiaq_controller { ptr @.str.294, i32 65557 }, %struct.caiaq_controller { ptr @.str.295, i32 65558 }, %struct.caiaq_controller { ptr @.str.296, i32 65559 }, %struct.caiaq_controller { ptr @.str.297, i32 65560 }, %struct.caiaq_controller { ptr @.str.298, i32 65561 }, %struct.caiaq_controller { ptr @.str.299, i32 65562 }, %struct.caiaq_controller { ptr @.str.300, i32 65563 }, %struct.caiaq_controller { ptr @.str.301, i32 65564 }, %struct.caiaq_controller { ptr @.str.302, i32 65565 }, %struct.caiaq_controller { ptr @.str.303, i32 65568 }, %struct.caiaq_controller { ptr @.str.304, i32 65569 }, %struct.caiaq_controller { ptr @.str.305, i32 65577 }, %struct.caiaq_controller { ptr @.str.306, i32 65576 }, %struct.caiaq_controller { ptr @.str.307, i32 65573 }, %struct.caiaq_controller { ptr @.str.308, i32 65572 }, %struct.caiaq_controller { ptr @.str.309, i32 65575 }, %struct.caiaq_controller { ptr @.str.310, i32 65574 }, %struct.caiaq_controller { ptr @.str.311, i32 65571 }, %struct.caiaq_controller { ptr @.str.312, i32 65570 }, %struct.caiaq_controller { ptr @.str.313, i32 65578 }, %struct.caiaq_controller { ptr @.str.314, i32 65579 }, %struct.caiaq_controller { ptr @.str.315, i32 65580 }, %struct.caiaq_controller { ptr @.str.316, i32 65581 }, %struct.caiaq_controller { ptr @.str.317, i32 65582 }, %struct.caiaq_controller { ptr @.str.318, i32 65583 }, %struct.caiaq_controller { ptr @.str.319, i32 65584 }, %struct.caiaq_controller { ptr @.str.320, i32 65585 }, %struct.caiaq_controller { ptr @.str.321, i32 65593 }, %struct.caiaq_controller { ptr @.str.322, i32 65592 }, %struct.caiaq_controller { ptr @.str.323, i32 65591 }, %struct.caiaq_controller { ptr @.str.324, i32 65590 }, %struct.caiaq_controller { ptr @.str.325, i32 65589 }, %struct.caiaq_controller { ptr @.str.326, i32 65588 }, %struct.caiaq_controller { ptr @.str.327, i32 65587 }, %struct.caiaq_controller { ptr @.str.328, i32 65586 }, %struct.caiaq_controller { ptr @.str.329, i32 65594 }, %struct.caiaq_controller { ptr @.str.330, i32 65595 }], [112 x i8] zeroinitializer }, align 32
@kcontrol_template = internal global { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 1, i32 0, i32 0, ptr null, i32 0, i32 3, i32 0, ptr @control_info, ptr @control_get, ptr @control_put, %union.anon.82 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"LED left\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"LED middle\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"LED right\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"LED ring\00", [23 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LED 1\00", [26 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LED 2\00", [26 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LED 3\00", [26 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LED 4\00", [26 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LED 5\00", [26 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LED 6\00", [26 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"LED pedal\00", [22 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"LED 7seg_1b\00", [20 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"LED 7seg_1c\00", [20 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"LED 7seg_2a\00", [20 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"LED 7seg_2b\00", [20 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"LED 7seg_2c\00", [20 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"LED 7seg_2d\00", [20 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"LED 7seg_2e\00", [20 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"LED 7seg_2f\00", [20 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"LED 7seg_2g\00", [20 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"LED 7seg_3a\00", [20 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"LED 7seg_3b\00", [20 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"LED 7seg_3c\00", [20 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"LED 7seg_3d\00", [20 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"LED 7seg_3e\00", [20 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"LED 7seg_3f\00", [20 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"LED 7seg_3g\00", [20 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"LED 7seg_1a\00", [20 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"LED 7seg_1d\00", [20 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"LED 7seg_1e\00", [20 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"LED 7seg_1f\00", [20 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"LED 7seg_1g\00", [20 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"LED 7seg_1p\00", [20 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"LED 7seg_2p\00", [20 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"LED 7seg_3p\00", [20 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"LED 7seg_4a\00", [20 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"LED 7seg_4b\00", [20 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"LED 7seg_4c\00", [20 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"LED 7seg_4d\00", [20 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"LED 7seg_4e\00", [20 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"LED 7seg_4f\00", [20 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"LED 7seg_4g\00", [20 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"LED 7seg_4p\00", [20 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LED 7\00", [26 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LED 8\00", [26 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"LED F1\00", [25 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"LED F2\00", [25 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"LED F3\00", [25 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"LED F4\00", [25 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"LED F5\00", [25 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"LED F6\00", [25 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"LED F7\00", [25 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"LED F8\00", [25 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"LED touch1\00", [21 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"LED touch2\00", [21 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"LED touch3\00", [21 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"LED touch4\00", [21 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"LED touch5\00", [21 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"LED touch6\00", [21 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"LED touch7\00", [21 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"LED touch8\00", [21 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"LED up\00", [25 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"LED down\00", [23 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"LED stop\00", [23 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"LED play\00", [23 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"LED record\00", [21 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"LED listen\00", [21 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LED lcd\00", [24 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"LED menu\00", [23 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"LED sound\00", [22 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LED esc\00", [24 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"LED view\00", [23 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"LED enter\00", [22 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"LED control\00", [20 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Current input mode\00", [45 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"GND lift for TC Vinyl mode\00", [37 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"GND lift for TC CD/Line mode\00", [35 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"GND lift for phono mode\00", [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Software lock\00", [18 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"LED FX A: ON\00", [19 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"LED FX A: 1\00", [20 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"LED FX A: 2\00", [20 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"LED FX A: 3\00", [20 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"LED FX B: ON\00", [19 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"LED FX B: 1\00", [20 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"LED FX B: 2\00", [20 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"LED FX B: 3\00", [20 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"LED Hotcue\00", [21 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"LED Shift (white)\00", [46 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"LED Shift (green)\00", [46 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"LED Deck A: FX1\00", [16 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"LED Deck A: FX2\00", [16 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"LED Deck A: IN\00", [17 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"LED Deck A: OUT\00", [16 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"LED Deck A: < BEAT\00", [45 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"LED Deck A: BEAT >\00", [45 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"LED Deck A: CUE/ABS\00", [44 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"LED Deck A: CUP/REL\00", [44 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"LED Deck A: PLAY\00", [47 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"LED Deck A: SYNC\00", [47 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"LED Deck B: FX1\00", [16 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"LED Deck B: FX2\00", [16 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"LED Deck B: IN\00", [17 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"LED Deck B: OUT\00", [16 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"LED Deck B: < BEAT\00", [45 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"LED Deck B: BEAT >\00", [45 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"LED Deck B: CUE/ABS\00", [44 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"LED Deck B: CUP/REL\00", [44 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"LED Deck B: PLAY\00", [47 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"LED Deck B: SYNC\00", [47 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"LED: Master: Quant\00", [45 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"LED: Master: Headphone\00", [41 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"LED: Master: Master\00", [44 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"LED: Master: Snap\00", [46 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"LED: Master: Warning\00", [43 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"LED: Master: Master button\00", [37 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"LED: Master: Snap button\00", [39 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"LED: Master: Rec\00", [47 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"LED: Master: Size\00", [46 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"LED: Master: Quant button\00", [38 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"LED: Master: Browser button\00", [36 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"LED: Master: Play button\00", [39 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"LED: Master: Undo button\00", [39 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"LED: Channel A: >\00", [46 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"LED: Channel A: <\00", [46 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"LED: Channel A: Meter 1\00", [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"LED: Channel A: Meter 2\00", [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"LED: Channel A: Meter 3\00", [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"LED: Channel A: Meter 4\00", [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"LED: Channel A: Meter 5\00", [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"LED: Channel A: Meter 6\00", [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"LED: Channel A: Meter clip\00", [37 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"LED: Channel A: Active\00", [41 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"LED: Channel A: Cue\00", [44 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"LED: Channel A: FX1\00", [44 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"LED: Channel A: FX2\00", [44 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"LED: Channel B: >\00", [46 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"LED: Channel B: <\00", [46 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"LED: Channel B: Meter 1\00", [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"LED: Channel B: Meter 2\00", [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"LED: Channel B: Meter 3\00", [40 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"LED: Channel B: Meter 4\00", [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"LED: Channel B: Meter 5\00", [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"LED: Channel B: Meter 6\00", [40 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"LED: Channel B: Meter clip\00", [37 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"LED: Channel B: Active\00", [41 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"LED: Channel B: Cue\00", [44 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"LED: Channel B: FX1\00", [44 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"LED: Channel B: FX2\00", [44 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"LED: Channel C: >\00", [46 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"LED: Channel C: <\00", [46 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"LED: Channel C: Meter 1\00", [40 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"LED: Channel C: Meter 2\00", [40 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"LED: Channel C: Meter 3\00", [40 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"LED: Channel C: Meter 4\00", [40 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"LED: Channel C: Meter 5\00", [40 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"LED: Channel C: Meter 6\00", [40 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"LED: Channel C: Meter clip\00", [37 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"LED: Channel C: Active\00", [41 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"LED: Channel C: Cue\00", [44 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"LED: Channel C: FX1\00", [44 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"LED: Channel C: FX2\00", [44 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"LED: Channel D: >\00", [46 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"LED: Channel D: <\00", [46 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"LED: Channel D: Meter 1\00", [40 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"LED: Channel D: Meter 2\00", [40 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"LED: Channel D: Meter 3\00", [40 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"LED: Channel D: Meter 4\00", [40 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"LED: Channel D: Meter 5\00", [40 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"LED: Channel D: Meter 6\00", [40 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"LED: Channel D: Meter clip\00", [37 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"LED: Channel D: Active\00", [41 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"LED: Channel D: Cue\00", [44 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"LED: Channel D: FX1\00", [44 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"LED: Channel D: FX2\00", [44 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"LED: Deck A: 1 (blue)\00", [42 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"LED: Deck A: 1 (green)\00", [41 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"LED: Deck A: 2 (blue)\00", [42 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"LED: Deck A: 2 (green)\00", [41 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"LED: Deck A: 3 (blue)\00", [42 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"LED: Deck A: 3 (green)\00", [41 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"LED: Deck A: 4 (blue)\00", [42 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"LED: Deck A: 4 (green)\00", [41 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"LED: Deck A: Load\00", [46 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"LED: Deck A: Deck C button\00", [37 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"LED: Deck A: In\00", [16 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"LED: Deck A: Out\00", [47 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"LED: Deck A: Shift\00", [45 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"LED: Deck A: Sync\00", [46 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"LED: Deck A: Cue\00", [47 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"LED: Deck A: Play\00", [46 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"LED: Deck A: Tempo up\00", [42 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"LED: Deck A: Tempo down\00", [40 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"LED: Deck A: Master\00", [44 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"LED: Deck A: Keylock\00", [43 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"LED: Deck A: Deck A\00", [44 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"LED: Deck A: Deck C\00", [44 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"LED: Deck A: Samples\00", [43 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"LED: Deck A: On Air\00", [44 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"LED: Deck A: Sample 1\00", [42 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"LED: Deck A: Sample 2\00", [42 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"LED: Deck A: Sample 3\00", [42 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"LED: Deck A: Sample 4\00", [42 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"LED: Deck A: Digit 1 - A\00", [39 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"LED: Deck A: Digit 1 - B\00", [39 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"LED: Deck A: Digit 1 - C\00", [39 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"LED: Deck A: Digit 1 - D\00", [39 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"LED: Deck A: Digit 1 - E\00", [39 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"LED: Deck A: Digit 1 - F\00", [39 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"LED: Deck A: Digit 1 - G\00", [39 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"LED: Deck A: Digit 1 - dot\00", [37 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"LED: Deck A: Digit 2 - A\00", [39 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"LED: Deck A: Digit 2 - B\00", [39 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"LED: Deck A: Digit 2 - C\00", [39 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"LED: Deck A: Digit 2 - D\00", [39 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"LED: Deck A: Digit 2 - E\00", [39 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"LED: Deck A: Digit 2 - F\00", [39 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"LED: Deck A: Digit 2 - G\00", [39 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"LED: Deck A: Digit 2 - dot\00", [37 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"LED: Deck B: 1 (blue)\00", [42 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"LED: Deck B: 1 (green)\00", [41 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"LED: Deck B: 2 (blue)\00", [42 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"LED: Deck B: 2 (green)\00", [41 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"LED: Deck B: 3 (blue)\00", [42 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"LED: Deck B: 3 (green)\00", [41 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"LED: Deck B: 4 (blue)\00", [42 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"LED: Deck B: 4 (green)\00", [41 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"LED: Deck B: Load\00", [46 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"LED: Deck B: Deck D button\00", [37 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"LED: Deck B: In\00", [16 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"LED: Deck B: Out\00", [47 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"LED: Deck B: Shift\00", [45 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"LED: Deck B: Sync\00", [46 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"LED: Deck B: Cue\00", [47 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"LED: Deck B: Play\00", [46 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"LED: Deck B: Tempo up\00", [42 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"LED: Deck B: Tempo down\00", [40 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"LED: Deck B: Master\00", [44 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"LED: Deck B: Keylock\00", [43 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"LED: Deck B: Deck B\00", [44 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"LED: Deck B: Deck D\00", [44 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"LED: Deck B: Samples\00", [43 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"LED: Deck B: On Air\00", [44 x i8] zeroinitializer }, align 32
@.str.243 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"LED: Deck B: Sample 1\00", [42 x i8] zeroinitializer }, align 32
@.str.244 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"LED: Deck B: Sample 2\00", [42 x i8] zeroinitializer }, align 32
@.str.245 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"LED: Deck B: Sample 3\00", [42 x i8] zeroinitializer }, align 32
@.str.246 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"LED: Deck B: Sample 4\00", [42 x i8] zeroinitializer }, align 32
@.str.247 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"LED: Deck B: Digit 1 - A\00", [39 x i8] zeroinitializer }, align 32
@.str.248 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"LED: Deck B: Digit 1 - B\00", [39 x i8] zeroinitializer }, align 32
@.str.249 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"LED: Deck B: Digit 1 - C\00", [39 x i8] zeroinitializer }, align 32
@.str.250 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"LED: Deck B: Digit 1 - D\00", [39 x i8] zeroinitializer }, align 32
@.str.251 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"LED: Deck B: Digit 1 - E\00", [39 x i8] zeroinitializer }, align 32
@.str.252 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"LED: Deck B: Digit 1 - F\00", [39 x i8] zeroinitializer }, align 32
@.str.253 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"LED: Deck B: Digit 1 - G\00", [39 x i8] zeroinitializer }, align 32
@.str.254 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"LED: Deck B: Digit 1 - dot\00", [37 x i8] zeroinitializer }, align 32
@.str.255 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"LED: Deck B: Digit 2 - A\00", [39 x i8] zeroinitializer }, align 32
@.str.256 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"LED: Deck B: Digit 2 - B\00", [39 x i8] zeroinitializer }, align 32
@.str.257 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"LED: Deck B: Digit 2 - C\00", [39 x i8] zeroinitializer }, align 32
@.str.258 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"LED: Deck B: Digit 2 - D\00", [39 x i8] zeroinitializer }, align 32
@.str.259 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"LED: Deck B: Digit 2 - E\00", [39 x i8] zeroinitializer }, align 32
@.str.260 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"LED: Deck B: Digit 2 - F\00", [39 x i8] zeroinitializer }, align 32
@.str.261 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"LED: Deck B: Digit 2 - G\00", [39 x i8] zeroinitializer }, align 32
@.str.262 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"LED: Deck B: Digit 2 - dot\00", [37 x i8] zeroinitializer }, align 32
@.str.263 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"LED: FX1: dry/wet\00", [46 x i8] zeroinitializer }, align 32
@.str.264 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"LED: FX1: 1\00", [20 x i8] zeroinitializer }, align 32
@.str.265 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"LED: FX1: 2\00", [20 x i8] zeroinitializer }, align 32
@.str.266 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"LED: FX1: 3\00", [20 x i8] zeroinitializer }, align 32
@.str.267 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"LED: FX1: Mode\00", [17 x i8] zeroinitializer }, align 32
@.str.268 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"LED: FX2: dry/wet\00", [46 x i8] zeroinitializer }, align 32
@.str.269 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"LED: FX2: 1\00", [20 x i8] zeroinitializer }, align 32
@.str.270 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"LED: FX2: 2\00", [20 x i8] zeroinitializer }, align 32
@.str.271 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"LED: FX2: 3\00", [20 x i8] zeroinitializer }, align 32
@.str.272 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"LED: FX2: Mode\00", [17 x i8] zeroinitializer }, align 32
@.str.273 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"LED: Pad 1\00", [21 x i8] zeroinitializer }, align 32
@.str.274 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"LED: Pad 2\00", [21 x i8] zeroinitializer }, align 32
@.str.275 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"LED: Pad 3\00", [21 x i8] zeroinitializer }, align 32
@.str.276 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"LED: Pad 4\00", [21 x i8] zeroinitializer }, align 32
@.str.277 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"LED: Pad 5\00", [21 x i8] zeroinitializer }, align 32
@.str.278 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"LED: Pad 6\00", [21 x i8] zeroinitializer }, align 32
@.str.279 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"LED: Pad 7\00", [21 x i8] zeroinitializer }, align 32
@.str.280 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"LED: Pad 8\00", [21 x i8] zeroinitializer }, align 32
@.str.281 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"LED: Pad 9\00", [21 x i8] zeroinitializer }, align 32
@.str.282 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"LED: Pad 10\00", [20 x i8] zeroinitializer }, align 32
@.str.283 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"LED: Pad 11\00", [20 x i8] zeroinitializer }, align 32
@.str.284 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"LED: Pad 12\00", [20 x i8] zeroinitializer }, align 32
@.str.285 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"LED: Pad 13\00", [20 x i8] zeroinitializer }, align 32
@.str.286 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"LED: Pad 14\00", [20 x i8] zeroinitializer }, align 32
@.str.287 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"LED: Pad 15\00", [20 x i8] zeroinitializer }, align 32
@.str.288 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"LED: Pad 16\00", [20 x i8] zeroinitializer }, align 32
@.str.289 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"LED: Mute\00", [22 x i8] zeroinitializer }, align 32
@.str.290 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"LED: Solo\00", [22 x i8] zeroinitializer }, align 32
@.str.291 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"LED: Select\00", [20 x i8] zeroinitializer }, align 32
@.str.292 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"LED: Duplicate\00", [17 x i8] zeroinitializer }, align 32
@.str.293 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"LED: Navigate\00", [18 x i8] zeroinitializer }, align 32
@.str.294 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"LED: Pad Mode\00", [18 x i8] zeroinitializer }, align 32
@.str.295 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"LED: Pattern\00", [19 x i8] zeroinitializer }, align 32
@.str.296 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"LED: Scene\00", [21 x i8] zeroinitializer }, align 32
@.str.297 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"LED: Shift\00", [21 x i8] zeroinitializer }, align 32
@.str.298 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"LED: Erase\00", [21 x i8] zeroinitializer }, align 32
@.str.299 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"LED: Grid\00", [22 x i8] zeroinitializer }, align 32
@.str.300 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"LED: Right Bottom\00", [46 x i8] zeroinitializer }, align 32
@.str.301 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"LED: Rec\00", [23 x i8] zeroinitializer }, align 32
@.str.302 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"LED: Play\00", [22 x i8] zeroinitializer }, align 32
@.str.303 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"LED: Left Bottom\00", [47 x i8] zeroinitializer }, align 32
@.str.304 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"LED: Restart\00", [19 x i8] zeroinitializer }, align 32
@.str.305 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"LED: Group A\00", [19 x i8] zeroinitializer }, align 32
@.str.306 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"LED: Group B\00", [19 x i8] zeroinitializer }, align 32
@.str.307 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"LED: Group C\00", [19 x i8] zeroinitializer }, align 32
@.str.308 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"LED: Group D\00", [19 x i8] zeroinitializer }, align 32
@.str.309 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"LED: Group E\00", [19 x i8] zeroinitializer }, align 32
@.str.310 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"LED: Group F\00", [19 x i8] zeroinitializer }, align 32
@.str.311 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"LED: Group G\00", [19 x i8] zeroinitializer }, align 32
@.str.312 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"LED: Group H\00", [19 x i8] zeroinitializer }, align 32
@.str.313 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"LED: Auto Write\00", [16 x i8] zeroinitializer }, align 32
@.str.314 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"LED: Snap\00", [22 x i8] zeroinitializer }, align 32
@.str.315 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"LED: Right Top\00", [17 x i8] zeroinitializer }, align 32
@.str.316 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"LED: Left Top\00", [18 x i8] zeroinitializer }, align 32
@.str.317 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"LED: Sampling\00", [18 x i8] zeroinitializer }, align 32
@.str.318 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"LED: Browse\00", [20 x i8] zeroinitializer }, align 32
@.str.319 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"LED: Step\00", [22 x i8] zeroinitializer }, align 32
@.str.320 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"LED: Control\00", [19 x i8] zeroinitializer }, align 32
@.str.321 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"LED: Top Button 1\00", [46 x i8] zeroinitializer }, align 32
@.str.322 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"LED: Top Button 2\00", [46 x i8] zeroinitializer }, align 32
@.str.323 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"LED: Top Button 3\00", [46 x i8] zeroinitializer }, align 32
@.str.324 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"LED: Top Button 4\00", [46 x i8] zeroinitializer }, align 32
@.str.325 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"LED: Top Button 5\00", [46 x i8] zeroinitializer }, align 32
@.str.326 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"LED: Top Button 6\00", [46 x i8] zeroinitializer }, align 32
@.str.327 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"LED: Top Button 7\00", [46 x i8] zeroinitializer }, align 32
@.str.328 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"LED: Top Button 8\00", [46 x i8] zeroinitializer }, align 32
@.str.329 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"LED: Note Repeat\00", [47 x i8] zeroinitializer }, align 32
@.str.330 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Backlight Display\00", [46 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [12 x i64] [i64 10, i64 32, i64 399247368, i64 399247381, i64 399247417, i64 399251776, i64 399251817, i64 399251832, i64 399254277, i64 399263505, i64 399263506, i64 399293183]
@__sancov_gen_cov_switch_values.331 = internal global [6 x i64] [i64 4, i64 32, i64 399247417, i64 399251832, i64 399254277, i64 399293183]
@__sancov_gen_cov_switch_values.332 = internal global [6 x i64] [i64 4, i64 32, i64 399247368, i64 399254277, i64 399263505, i64 399263506]
@__sancov_gen_cov_switch_values.333 = internal global [4 x i64] [i64 2, i64 32, i64 399247368, i64 399293183]
@___asan_gen_.334 = private unnamed_addr constant [15 x i8] c"rk2_controller\00", align 1
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 173, i32 38 }
@___asan_gen_.337 = private unnamed_addr constant [15 x i8] c"rk3_controller\00", align 1
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 199, i32 38 }
@___asan_gen_.340 = private unnamed_addr constant [16 x i8] c"kore_controller\00", align 1
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 247, i32 38 }
@___asan_gen_.343 = private unnamed_addr constant [21 x i8] c"kontrolx1_controller\00", align 1
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 293, i32 38 }
@___asan_gen_.346 = private unnamed_addr constant [21 x i8] c"kontrols4_controller\00", align 1
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 330, i32 38 }
@___asan_gen_.349 = private unnamed_addr constant [20 x i8] c"maschine_controller\00", align 1
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 503, i32 38 }
@___asan_gen_.352 = private unnamed_addr constant [18 x i8] c"kcontrol_template\00", align 1
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 151, i32 32 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 167, i32 4 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 168, i32 4 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 169, i32 4 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 170, i32 4 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 174, i32 4 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 175, i32 4 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 176, i32 4 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 177, i32 4 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 178, i32 4 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 179, i32 4 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 180, i32 4 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 181, i32 4 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 182, i32 4 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 183, i32 4 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 184, i32 4 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 185, i32 4 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 186, i32 4 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 187, i32 4 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 188, i32 4 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 189, i32 4 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 190, i32 4 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 191, i32 4 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 192, i32 4 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 193, i32 4 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 194, i32 4 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 195, i32 4 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 196, i32 4 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 200, i32 4 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 203, i32 4 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 204, i32 4 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 205, i32 4 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 206, i32 4 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 207, i32 4 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 216, i32 4 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 225, i32 4 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 227, i32 4 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 228, i32 4 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 229, i32 4 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 230, i32 4 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 231, i32 4 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 232, i32 4 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 233, i32 4 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 234, i32 4 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 242, i32 4 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 243, i32 4 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 248, i32 4 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 249, i32 4 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 250, i32 4 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 251, i32 4 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 252, i32 4 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 253, i32 4 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 254, i32 4 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 255, i32 4 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 256, i32 4 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 257, i32 4 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 258, i32 4 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 259, i32 4 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 260, i32 4 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 261, i32 4 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 262, i32 4 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 263, i32 4 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 266, i32 4 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 267, i32 4 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 268, i32 4 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 269, i32 4 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 270, i32 4 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 271, i32 4 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 272, i32 4 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 273, i32 4 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 274, i32 4 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 275, i32 4 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 276, i32 4 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 277, i32 4 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 278, i32 4 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 282, i32 4 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 283, i32 4 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 284, i32 4 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 285, i32 4 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 286, i32 4 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 294, i32 4 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 295, i32 4 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 296, i32 4 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 297, i32 4 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 298, i32 4 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 299, i32 4 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 300, i32 4 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 301, i32 4 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 303, i32 4 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 304, i32 4 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 305, i32 4 }
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 307, i32 4 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 308, i32 4 }
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 309, i32 4 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 310, i32 4 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 311, i32 4 }
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 312, i32 4 }
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 313, i32 4 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 314, i32 4 }
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 315, i32 4 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 316, i32 4 }
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 318, i32 4 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 319, i32 4 }
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 320, i32 4 }
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 321, i32 4 }
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 322, i32 4 }
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 323, i32 4 }
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 324, i32 4 }
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 325, i32 4 }
@___asan_gen_.681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 326, i32 4 }
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 327, i32 4 }
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 331, i32 4 }
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 332, i32 4 }
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 333, i32 4 }
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 334, i32 4 }
@___asan_gen_.699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 335, i32 4 }
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 336, i32 4 }
@___asan_gen_.705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 337, i32 4 }
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 338, i32 4 }
@___asan_gen_.711 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 339, i32 4 }
@___asan_gen_.714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 340, i32 4 }
@___asan_gen_.717 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 341, i32 4 }
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 342, i32 4 }
@___asan_gen_.723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 343, i32 4 }
@___asan_gen_.726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 345, i32 4 }
@___asan_gen_.729 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 346, i32 4 }
@___asan_gen_.732 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 347, i32 4 }
@___asan_gen_.735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 348, i32 4 }
@___asan_gen_.738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 349, i32 4 }
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 350, i32 4 }
@___asan_gen_.744 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 351, i32 4 }
@___asan_gen_.747 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 352, i32 4 }
@___asan_gen_.750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 353, i32 4 }
@___asan_gen_.753 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 354, i32 4 }
@___asan_gen_.756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 355, i32 4 }
@___asan_gen_.759 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 356, i32 4 }
@___asan_gen_.762 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 357, i32 4 }
@___asan_gen_.765 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 359, i32 4 }
@___asan_gen_.768 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 360, i32 4 }
@___asan_gen_.771 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 361, i32 4 }
@___asan_gen_.774 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 362, i32 4 }
@___asan_gen_.777 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 363, i32 4 }
@___asan_gen_.780 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 364, i32 4 }
@___asan_gen_.783 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 365, i32 4 }
@___asan_gen_.786 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 366, i32 4 }
@___asan_gen_.789 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 367, i32 4 }
@___asan_gen_.792 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 368, i32 4 }
@___asan_gen_.795 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 369, i32 4 }
@___asan_gen_.798 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 370, i32 4 }
@___asan_gen_.801 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 371, i32 4 }
@___asan_gen_.804 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 373, i32 4 }
@___asan_gen_.807 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 374, i32 4 }
@___asan_gen_.810 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 375, i32 4 }
@___asan_gen_.813 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 376, i32 4 }
@___asan_gen_.816 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 377, i32 4 }
@___asan_gen_.819 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 378, i32 4 }
@___asan_gen_.822 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 379, i32 4 }
@___asan_gen_.825 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 380, i32 4 }
@___asan_gen_.828 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 381, i32 4 }
@___asan_gen_.831 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 382, i32 4 }
@___asan_gen_.834 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 383, i32 4 }
@___asan_gen_.837 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 384, i32 4 }
@___asan_gen_.840 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 385, i32 4 }
@___asan_gen_.843 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 387, i32 4 }
@___asan_gen_.846 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 388, i32 4 }
@___asan_gen_.849 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 389, i32 4 }
@___asan_gen_.852 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 390, i32 4 }
@___asan_gen_.855 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 391, i32 4 }
@___asan_gen_.858 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 392, i32 4 }
@___asan_gen_.861 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 393, i32 4 }
@___asan_gen_.864 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 394, i32 4 }
@___asan_gen_.867 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 395, i32 4 }
@___asan_gen_.870 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 396, i32 4 }
@___asan_gen_.873 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 397, i32 4 }
@___asan_gen_.876 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 398, i32 4 }
@___asan_gen_.879 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 399, i32 4 }
@___asan_gen_.882 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 401, i32 4 }
@___asan_gen_.885 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 402, i32 4 }
@___asan_gen_.888 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 403, i32 4 }
@___asan_gen_.891 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 404, i32 4 }
@___asan_gen_.894 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 405, i32 4 }
@___asan_gen_.897 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 406, i32 4 }
@___asan_gen_.900 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 407, i32 4 }
@___asan_gen_.903 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 408, i32 4 }
@___asan_gen_.906 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 409, i32 4 }
@___asan_gen_.909 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 410, i32 4 }
@___asan_gen_.912 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 411, i32 4 }
@___asan_gen_.915 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 412, i32 4 }
@___asan_gen_.918 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 413, i32 4 }
@___asan_gen_.921 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 414, i32 4 }
@___asan_gen_.924 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 415, i32 4 }
@___asan_gen_.927 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 416, i32 4 }
@___asan_gen_.930 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 417, i32 4 }
@___asan_gen_.933 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 418, i32 4 }
@___asan_gen_.936 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 419, i32 4 }
@___asan_gen_.939 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 420, i32 4 }
@___asan_gen_.942 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 421, i32 4 }
@___asan_gen_.945 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 422, i32 4 }
@___asan_gen_.948 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 423, i32 4 }
@___asan_gen_.951 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 424, i32 4 }
@___asan_gen_.954 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 425, i32 4 }
@___asan_gen_.957 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 426, i32 4 }
@___asan_gen_.960 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 427, i32 4 }
@___asan_gen_.963 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 428, i32 4 }
@___asan_gen_.966 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 429, i32 4 }
@___asan_gen_.969 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 430, i32 4 }
@___asan_gen_.972 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 431, i32 4 }
@___asan_gen_.975 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 432, i32 4 }
@___asan_gen_.978 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 433, i32 4 }
@___asan_gen_.981 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 434, i32 4 }
@___asan_gen_.984 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 435, i32 4 }
@___asan_gen_.987 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 436, i32 4 }
@___asan_gen_.990 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 437, i32 4 }
@___asan_gen_.993 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 438, i32 4 }
@___asan_gen_.996 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 439, i32 4 }
@___asan_gen_.999 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 440, i32 4 }
@___asan_gen_.1002 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 441, i32 4 }
@___asan_gen_.1005 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 442, i32 4 }
@___asan_gen_.1008 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 443, i32 4 }
@___asan_gen_.1011 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 444, i32 4 }
@___asan_gen_.1014 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 446, i32 4 }
@___asan_gen_.1017 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 447, i32 4 }
@___asan_gen_.1020 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 448, i32 4 }
@___asan_gen_.1023 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 449, i32 4 }
@___asan_gen_.1026 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 450, i32 4 }
@___asan_gen_.1029 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 451, i32 4 }
@___asan_gen_.1032 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 452, i32 4 }
@___asan_gen_.1035 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 453, i32 4 }
@___asan_gen_.1038 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 454, i32 4 }
@___asan_gen_.1041 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 455, i32 4 }
@___asan_gen_.1044 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 456, i32 4 }
@___asan_gen_.1047 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 457, i32 4 }
@___asan_gen_.1050 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 458, i32 4 }
@___asan_gen_.1053 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 459, i32 4 }
@___asan_gen_.1056 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 460, i32 4 }
@___asan_gen_.1059 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 461, i32 4 }
@___asan_gen_.1062 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 462, i32 4 }
@___asan_gen_.1065 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 463, i32 4 }
@___asan_gen_.1068 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 464, i32 4 }
@___asan_gen_.1071 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 465, i32 4 }
@___asan_gen_.1074 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 466, i32 4 }
@___asan_gen_.1077 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 467, i32 4 }
@___asan_gen_.1080 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 468, i32 4 }
@___asan_gen_.1083 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 469, i32 4 }
@___asan_gen_.1086 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 470, i32 4 }
@___asan_gen_.1089 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 471, i32 4 }
@___asan_gen_.1092 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 472, i32 4 }
@___asan_gen_.1095 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 473, i32 4 }
@___asan_gen_.1098 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 474, i32 4 }
@___asan_gen_.1101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 475, i32 4 }
@___asan_gen_.1104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 476, i32 4 }
@___asan_gen_.1107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 477, i32 4 }
@___asan_gen_.1110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 478, i32 4 }
@___asan_gen_.1113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 479, i32 4 }
@___asan_gen_.1116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 480, i32 4 }
@___asan_gen_.1119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 481, i32 4 }
@___asan_gen_.1122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 482, i32 4 }
@___asan_gen_.1125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 483, i32 4 }
@___asan_gen_.1128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 484, i32 4 }
@___asan_gen_.1131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 485, i32 4 }
@___asan_gen_.1134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 486, i32 4 }
@___asan_gen_.1137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 487, i32 4 }
@___asan_gen_.1140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 488, i32 4 }
@___asan_gen_.1143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 489, i32 4 }
@___asan_gen_.1146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 491, i32 4 }
@___asan_gen_.1149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 492, i32 4 }
@___asan_gen_.1152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 493, i32 4 }
@___asan_gen_.1155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 494, i32 4 }
@___asan_gen_.1158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 495, i32 4 }
@___asan_gen_.1161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 496, i32 4 }
@___asan_gen_.1164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 497, i32 4 }
@___asan_gen_.1167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 498, i32 4 }
@___asan_gen_.1170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 499, i32 4 }
@___asan_gen_.1173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 500, i32 4 }
@___asan_gen_.1176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 504, i32 4 }
@___asan_gen_.1179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 505, i32 4 }
@___asan_gen_.1182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 506, i32 4 }
@___asan_gen_.1185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 507, i32 4 }
@___asan_gen_.1188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 508, i32 4 }
@___asan_gen_.1191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 509, i32 4 }
@___asan_gen_.1194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 510, i32 4 }
@___asan_gen_.1197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 511, i32 4 }
@___asan_gen_.1200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 512, i32 4 }
@___asan_gen_.1203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 513, i32 4 }
@___asan_gen_.1206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 514, i32 4 }
@___asan_gen_.1209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 515, i32 4 }
@___asan_gen_.1212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 516, i32 4 }
@___asan_gen_.1215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 517, i32 4 }
@___asan_gen_.1218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 518, i32 4 }
@___asan_gen_.1221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 519, i32 4 }
@___asan_gen_.1224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 521, i32 4 }
@___asan_gen_.1227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 522, i32 4 }
@___asan_gen_.1230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 523, i32 4 }
@___asan_gen_.1233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 524, i32 4 }
@___asan_gen_.1236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 525, i32 4 }
@___asan_gen_.1239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 526, i32 4 }
@___asan_gen_.1242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 527, i32 4 }
@___asan_gen_.1245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 528, i32 4 }
@___asan_gen_.1248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 530, i32 4 }
@___asan_gen_.1251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 531, i32 4 }
@___asan_gen_.1254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 532, i32 4 }
@___asan_gen_.1257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 533, i32 4 }
@___asan_gen_.1260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 534, i32 4 }
@___asan_gen_.1263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 535, i32 4 }
@___asan_gen_.1266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 536, i32 4 }
@___asan_gen_.1269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 537, i32 4 }
@___asan_gen_.1272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 539, i32 4 }
@___asan_gen_.1275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 540, i32 4 }
@___asan_gen_.1278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 541, i32 4 }
@___asan_gen_.1281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 542, i32 4 }
@___asan_gen_.1284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 543, i32 4 }
@___asan_gen_.1287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 544, i32 4 }
@___asan_gen_.1290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 545, i32 4 }
@___asan_gen_.1293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 546, i32 4 }
@___asan_gen_.1296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 548, i32 4 }
@___asan_gen_.1299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 549, i32 4 }
@___asan_gen_.1302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 550, i32 4 }
@___asan_gen_.1305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 551, i32 4 }
@___asan_gen_.1308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 552, i32 4 }
@___asan_gen_.1311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 553, i32 4 }
@___asan_gen_.1314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 554, i32 4 }
@___asan_gen_.1317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 555, i32 4 }
@___asan_gen_.1320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 557, i32 4 }
@___asan_gen_.1323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 558, i32 4 }
@___asan_gen_.1326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 559, i32 4 }
@___asan_gen_.1329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 560, i32 4 }
@___asan_gen_.1332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 561, i32 4 }
@___asan_gen_.1335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 562, i32 4 }
@___asan_gen_.1338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 563, i32 4 }
@___asan_gen_.1341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 564, i32 4 }
@___asan_gen_.1344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 566, i32 4 }
@___asan_gen_.1345 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1346 = private constant [29 x i8] c"../sound/usb/caiaq/control.c\00", align 1
@___asan_gen_.1347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1346, i32 568, i32 4 }
@llvm.compiler.used = appending global [338 x ptr] [ptr @rk2_controller, ptr @rk3_controller, ptr @kore_controller, ptr @kontrolx1_controller, ptr @kontrols4_controller, ptr @maschine_controller, ptr @kcontrol_template, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @.str.221, ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @.str.226, ptr @.str.227, ptr @.str.228, ptr @.str.229, ptr @.str.230, ptr @.str.231, ptr @.str.232, ptr @.str.233, ptr @.str.234, ptr @.str.235, ptr @.str.236, ptr @.str.237, ptr @.str.238, ptr @.str.239, ptr @.str.240, ptr @.str.241, ptr @.str.242, ptr @.str.243, ptr @.str.244, ptr @.str.245, ptr @.str.246, ptr @.str.247, ptr @.str.248, ptr @.str.249, ptr @.str.250, ptr @.str.251, ptr @.str.252, ptr @.str.253, ptr @.str.254, ptr @.str.255, ptr @.str.256, ptr @.str.257, ptr @.str.258, ptr @.str.259, ptr @.str.260, ptr @.str.261, ptr @.str.262, ptr @.str.263, ptr @.str.264, ptr @.str.265, ptr @.str.266, ptr @.str.267, ptr @.str.268, ptr @.str.269, ptr @.str.270, ptr @.str.271, ptr @.str.272, ptr @.str.273, ptr @.str.274, ptr @.str.275, ptr @.str.276, ptr @.str.277, ptr @.str.278, ptr @.str.279, ptr @.str.280, ptr @.str.281, ptr @.str.282, ptr @.str.283, ptr @.str.284, ptr @.str.285, ptr @.str.286, ptr @.str.287, ptr @.str.288, ptr @.str.289, ptr @.str.290, ptr @.str.291, ptr @.str.292, ptr @.str.293, ptr @.str.294, ptr @.str.295, ptr @.str.296, ptr @.str.297, ptr @.str.298, ptr @.str.299, ptr @.str.300, ptr @.str.301, ptr @.str.302, ptr @.str.303, ptr @.str.304, ptr @.str.305, ptr @.str.306, ptr @.str.307, ptr @.str.308, ptr @.str.309, ptr @.str.310, ptr @.str.311, ptr @.str.312, ptr @.str.313, ptr @.str.314, ptr @.str.315, ptr @.str.316, ptr @.str.317, ptr @.str.318, ptr @.str.319, ptr @.str.320, ptr @.str.321, ptr @.str.322, ptr @.str.323, ptr @.str.324, ptr @.str.325, ptr @.str.326, ptr @.str.327, ptr @.str.328, ptr @.str.329, ptr @.str.330], section "llvm.metadata"
@0 = internal global [338 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk2_controller to i32), i32 184, i32 224, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3_controller to i32), i32 328, i32 416, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kore_controller to i32), i32 248, i32 288, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kontrolx1_controller to i32), i32 248, i32 288, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kontrols4_controller to i32), i32 1304, i32 1632, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @maschine_controller to i32), i32 464, i32 576, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kcontrol_template to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.864 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.915 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1035 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1050 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1062 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.245 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.246 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1095 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.247 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.248 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.249 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.251 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.252 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.253 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.254 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.255 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.256 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.257 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.258 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.259 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.260 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.261 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.262 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.263 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.264 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.265 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.266 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.267 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.268 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.269 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.270 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.271 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.272 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.273 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.274 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.275 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.276 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.277 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.278 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.279 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.280 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.281 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.282 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.283 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.284 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.285 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.286 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.287 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.288 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.289 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.290 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.291 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.292 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.293 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.294 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.295 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.296 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.297 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.298 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.299 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.300 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.301 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.302 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.303 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.304 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.305 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.306 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.307 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.308 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.309 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.310 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.311 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.312 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.313 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.314 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.315 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.316 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.317 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.318 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.319 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.320 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.321 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.322 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.323 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.324 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.325 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.326 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.327 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.328 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.329 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.330 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1347 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_usb_caiaq_control_init(ptr noundef %cdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_id = getelementptr inbounds %struct.snd_usb_audio, ptr %cdev, i32 0, i32 4
  %0 = ptrtoint ptr %usb_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usb_id, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 399247381, label %sw.bb
    i32 399251817, label %sw.bb1
    i32 399251776, label %sw.bb3
    i32 399263505, label %entry.sw.bb5_crit_edge
    i32 399263506, label %entry.sw.bb5_crit_edge202
    i32 399251832, label %sw.bb7
    i32 399247417, label %sw.bb9
    i32 399254277, label %sw.bb11
    i32 399293183, label %sw.bb13
    i32 399247368, label %sw.bb15
  ]

entry.sw.bb5_crit_edge202:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb5

entry.sw.bb5_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb5

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %card.i = getelementptr inbounds %struct.snd_usb_audio, ptr %cdev, i32 0, i32 2
  store ptr @.str, ptr getelementptr inbounds (%struct.snd_kcontrol_new, ptr @kcontrol_template, i32 0, i32 3), align 4
  store i32 2, ptr getelementptr inbounds (%struct.snd_kcontrol_new, ptr @kcontrol_template, i32 0, i32 11), align 4
  %call.i = tail call ptr @snd_ctl_new1(ptr noundef nonnull @kcontrol_template, ptr noundef %cdev) #5
  %3 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %card.i, align 8
  %call1.i = tail call i32 @snd_ctl_add(ptr noundef %4, ptr noundef %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp2.i = icmp slt i32 %call1.i, 0
  br i1 %cmp2.i, label %sw.bb.sw.epilog_crit_edge, label %for.inc.i

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

for.inc.i:                                        ; preds = %sw.bb
  store ptr @.str.1, ptr getelementptr inbounds (%struct.snd_kcontrol_new, ptr @kcontrol_template, i32 0, i32 3), align 4
  store i32 1, ptr getelementptr inbounds (%struct.snd_kcontrol_new, ptr @kcontrol_template, i32 0, i32 11), align 4
  %call.i.1 = tail call ptr @snd_ctl_new1(ptr noundef nonnull @kcontrol_template, ptr noundef %cdev) #5
  %5 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %card.i, align 8
  %call1.i.1 = tail call i32 @snd_ctl_add(ptr noundef %6, ptr noundef %call.i.1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.1)
  %cmp2.i.1 = icmp slt i32 %call1.i.1, 0
  br i1 %cmp2.i.1, label %for.inc.i.sw.epilog_crit_edge, label %for.inc.i.1

for.inc.i.sw.epilog_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

for.inc.i.1:                                      ; preds = %for.inc.i
  store ptr @.str.2, ptr getelementptr inbounds (%struct.snd_kcontrol_new, ptr @kcontrol_template, i32 0, i32 3), align 4
  store i32 0, ptr getelementptr inbounds (%struct.snd_kcontrol_new, ptr @kcontrol_template, i32 0, i32 11), align 4
  %call.i.2 = tail call ptr @snd_ctl_new1(ptr noundef nonnull @kcontrol_template, ptr noundef %cdev) #5
  %7 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %card.i, align 8
  %call1.i.2 = tail call i32 @snd_ctl_add(ptr noundef %8, ptr noundef %call.i.2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.2)
  %cmp2.i.2 = icmp slt i32 %call1.i.2, 0
  br i1 %cmp2.i.2, label %for.inc.i.1.sw.epilog_crit_edge, label %for.inc.i.1.sw.epilog.sink.split_crit_edge

for.inc.i.1.sw.epilog.sink.split_crit_edge:       ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

for.inc.i.1.sw.epilog_crit_edge:                  ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %card.i26 = getelementptr inbounds %struct.snd_usb_audio, ptr %cdev, i32 0, i32 2
  br label %for.body.i33

for.body.i33:                                     ; preds = %for.inc.i37.for.body.i33_crit_edge, %sw.bb1
  %i.012.i27 = phi i32 [ 0, %sw.bb1 ], [ %inc.i34, %for.inc.i37.for.body.i33_crit_edge ]
  %c.addr.011.i28 = phi ptr [ @rk2_controller, %sw.bb1 ], [ %incdec.ptr.i35, %for.inc.i37.for.body.i33_crit_edge ]
  %9 = ptrtoint ptr %c.addr.011.i28 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %c.addr.011.i28, align 4
  store ptr %10, ptr getelementptr inbounds (%struct.snd_kcontrol_new, ptr @kcontrol_template, i32 0, i32 3), align 4
  %index.i29 = getelementptr inbounds %struct.caiaq_controller, ptr %c.addr.011.i28, i32 0, i32 1
  %11 = ptrtoint ptr %index.i29 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %index.i29, align 4
  store i32 %12, ptr getelementptr inbounds (%struct.snd_kcontrol_new, ptr @kcontrol_template, i32 0, i32 11), align 4
  %call.i30 = tail call ptr @snd_ctl_new1(ptr noundef nonnull @kcontrol_template, ptr noundef %cdev) #5
  %13 = ptrtoint ptr %card.i26 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %card.i26, align 8
  %call1.i31 = tail call i32 @snd_ctl_add(ptr noundef %14, ptr noundef %call.i30) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i31)
  %cmp2.i32 = icmp slt i32 %call1.i31, 0
  br i1 %cmp2.i32, label %for.body.i33.sw.epilog_crit_edge, label %for.inc.i37

for.body.i33.sw.epilog_crit_edge:                 ; preds = %for.body.i33
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

for.inc.i37:                                      ; preds = %for.body.i33
  %inc.i34 = add nuw nsw i32 %i.012.i27, 1
  %incdec.ptr.i35 = getelementptr %struct.caiaq_controller, ptr %c.addr.011.i28, i32 1
  %exitcond.not.i36 = icmp eq i32 %inc.i34, 23
  br i1 %exitcond.not.i36, label %for.inc.i37.sw.epilog_crit_edge, label %for.inc.i37.for.body.i33_crit_edge

for.inc.i37.for.body.i33_crit_edge:               ; preds = %for.inc.i37
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i33

for.inc.i37.sw.epilog_crit_edge:                  ; preds = %for.inc.i37
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %card.i40 = getelementptr inbounds %struct.snd_usb_audio, ptr %cdev, i32 0, i32 2
  br label %for.body.i47

for.body.i47:                                     ; preds = %for.inc.i51.for.body.i47_crit_edge, %sw.bb3
  %i.012.i41 = phi i32 [ 0, %sw.bb3 ], [ %inc.i48, %for.inc.i51.for.body.i47_crit_edge ]
  %c.addr.011.i42 = phi ptr [ @rk3_controller, %sw.bb3 ], [ %incdec.ptr.i49, %for.inc.i51.for.body.i47_crit_edge ]
  %15 = ptrtoint ptr %c.addr.011.i42 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %c.addr.011.i42, align 4
  store ptr %16, ptr getelementptr inbounds (%struct.snd_kcontrol_new, ptr @kcontrol_template, i32 0, i32 3), align 4
  %index.i43 = getelementptr inbounds %struct.caiaq_controller, ptr %c.addr.011.i42, i32 0, i32 1
  %17 = ptrtoint ptr %index.i43 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %index.i43, align 4
  store i32 %18, ptr getelementptr inbounds (%struct.snd_kcontrol_new, ptr @kcontrol_template, i32 0, i32 11), align 4
  %call.i44 = tail call ptr @snd_ctl_new1(ptr noundef nonnull @kcontrol_template, ptr noundef %cdev) #5
  %19 = ptrtoint ptr %card.i40 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %card.i40, align 8
  %call1.i45 = tail call i32 @snd_ctl_add(ptr noundef %20, ptr noundef %call.i44) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i45)
  %cmp2.i46 = icmp slt i32 %call1.i45, 0
  br i1 %cmp2.i46, label %for.body.i47.sw.epilog_crit_edge, label %for.inc.i51

for.body.i47.sw.epilog_crit_edge:                 ; preds = %for.body.i47
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

for.inc.i51:                                      ; preds = %for.body.i47
  %inc.i48 = add nuw nsw i32 %i.012.i41, 1
  %incdec.ptr.i49 = getelementptr %struct.caiaq_controller, ptr %c.addr.011.i42, i32 1
  %exitcond.not.i50 = icmp eq i32 %inc.i48, 41
  br i1 %exitcond.not.i50, label %for.inc.i51.sw.epilog_crit_edge, label %for.inc.i51.for.body.i47_crit_edge

for.inc.i51.for.body.i47_crit_edge:               ; preds = %for.inc.i51
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i47

for.inc.i51.sw.epilog_crit_edge:                  ; preds = %for.inc.i51
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry.sw.bb5_crit_edge, %entry.sw.bb5_crit_edge202
  %card.i54 = getelementptr inbounds %struct.snd_usb_audio, ptr %cdev, i32 0, i32 2
  br label %for.body.i61

for.body.i61:                                     ; preds = %for.inc.i65.for.body.i61_crit_edge, %sw.bb5
  %i.012.i55 = phi i32 [ 0, %sw.bb5 ], [ %inc.i62, %for.inc.i65.for.body.i61_crit_edge ]
  %c.addr.011.i56 = phi ptr [ @kore_controller, %sw.bb5 ], [ %incdec.ptr.i63, %for.inc.i65.for.body.i61_crit_edge ]
  %21 = ptrtoint ptr %c.addr.011.i56 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %c.addr.011.i56, align 4
  store ptr %22, ptr getelementptr inbounds (%struct.snd_kcontrol_new, ptr @kcontrol_template, i32 0, i32 3), align 4
  %index.i57 = getelementptr inbounds %struct.caiaq_controller, ptr %c.addr.011.i56, i32 0, i32 1
  %23 = ptrtoint ptr %index.i57 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %index.i57, align 4
  store i32 %24, ptr getelementptr inbounds (%struct.snd_kcontrol_new, ptr @kcontrol_template, i32 0, i32 11), align 4
  %call.i58 = tail call ptr @snd_ctl_new1(ptr noundef nonnull @kcontrol_template, ptr noundef %cdev) #5
  %25 = ptrtoint ptr %card.i54 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %card.i54, align 8
  %call1.i59 = tail call i32 @snd_ctl_add(ptr noundef %26, ptr noundef %call.i58) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i59)
  %cmp2.i60 = icmp slt i32 %call1.i59, 0
  br i1 %cmp2.i60, label %for.body.i61.sw.epilog_crit_edge, label %for.inc.i65

for.body.i61.sw.epilog_crit_edge:                 ; preds = %for.body.i61
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

for.inc.i65:                                      ; preds = %for.body.i61
  %inc.i62 = add nuw nsw i32 %i.012.i55, 1
  %incdec.ptr.i63 = getelementptr %struct.caiaq_controller, ptr %c.addr.011.i56, i32 1
  %exitcond.not.i64 = icmp eq i32 %inc.i62, 31
  br i1 %exitcond.not.i64, label %for.inc.i65.sw.epilog_crit_edge, label %for.inc.i65.for.body.i61_crit_edge

for.inc.i65.for.body.i61_crit_edge:               ; preds = %for.inc.i65
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i61

for.inc.i65.sw.epilog_crit_edge:                  ; preds = %for.inc.i65
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  %card.i68 = getelementptr inbounds %struct.snd_usb_audio, ptr %cdev, i32 0, i32 2
  store ptr @.str.74, ptr getelementptr inbounds (%struct.snd_kcontrol_new, ptr @kcontrol_template, i32 0, i32 3), align 4
  store i32 65536, ptr getelementptr inbounds (%struct.snd_kcontrol_new, ptr @kcontrol_template, i32 0, i32 11), align 4
  %call.i72 = tail call ptr @snd_ctl_new1(ptr noundef nonnull @kcontrol_template, ptr noundef %cdev) #5
  %27 = ptrtoint ptr %card.i68 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %card.i68, align 8
  %call1.i73 = tail call i32 @snd_ctl_add(ptr noundef %28, ptr noundef %call.i72) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i73)
  %cmp2.i74 = icmp slt i32 %call1.i73, 0
  br i1 %cmp2.i74, label %sw.bb7.sw.epilog_crit_edge, label %for.inc.i79

sw.bb7.sw.epilog_crit_edge:                       ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

for.inc.i79:                                      ; preds = %sw.bb7
  store ptr @.str.75, ptr getelementptr inbounds (%struct.snd_kcontrol_new, ptr @kcontrol_template, i32 0, i32 3), align 4
  store i32 24, ptr getelementptr inbounds (%struct.snd_kcontrol_new, ptr @kcontrol_template, i32 0, i32 11), align 4
  %call.i72.1 = tail call ptr @snd_ctl_new1(ptr noundef nonnull @kcontrol_template, ptr noundef %cdev) #5
  %29 = ptrtoint ptr %card.i68 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %card.i68, align 8
  %call1.i73.1 = tail call i32 @snd_ctl_add(ptr noundef %30, ptr noundef %call.i72.1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i73.1)
  %cmp2.i74.1 = icmp slt i32 %call1.i73.1, 0
  br i1 %cmp2.i74.1, label %for.inc.i79.sw.epilog_crit_edge, label %for.inc.i79.1

for.inc.i79.sw.epilog_crit_edge:                  ; preds = %for.inc.i79
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

for.inc.i79.1:                                    ; preds = %for.inc.i79
  store ptr @.str.76, ptr getelementptr inbounds (%struct.snd_kcontrol_new, ptr @kcontrol_template, i32 0, i32 3), align 4
  store i32 25, ptr getelementptr inbounds (%struct.snd_kcontrol_new, ptr @kcontrol_template, i32 0, i32 11), align 4
  %call.i72.2 = tail call ptr @snd_ctl_new1(ptr noundef nonnull @kcontrol_template, ptr noundef %cdev) #5
  %31 = ptrtoint ptr %card.i68 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %card.i68, align 8
  %call1.i73.2 = tail call i32 @snd_ctl_add(ptr noundef %32, ptr noundef %call.i72.2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i73.2)
  %cmp2.i74.2 = icmp slt i32 %call1.i73.2, 0
  br i1 %cmp2.i74.2, label %for.inc.i79.1.sw.epilog_crit_edge, label %for.inc.i79.2

for.inc.i79.1.sw.epilog_crit_edge:                ; preds = %for.inc.i79.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

for.inc.i79.2:                                    ; preds = %for.inc.i79.1
  store ptr @.str.77, ptr getelementptr inbounds (%struct.snd_kcontrol_new, ptr @kcontrol_template, i32 0, i32 3), align 4
  store i32 26, ptr getelementptr inbounds (%struct.snd_kcontrol_new, ptr @kcontrol_template, i32 0, i32 11), align 4
  %call.i72.3 = tail call ptr @snd_ctl_new1(ptr noundef nonnull @kcontrol_template, ptr noundef %cdev) #5
  %33 = ptrtoint ptr %card.i68 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %card.i68, align 8
  %call1.i73.3 = tail call i32 @snd_ctl_add(ptr noundef %34, ptr noundef %call.i72.3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i73.3)
  %cmp2.i74.3 = icmp slt i32 %call1.i73.3, 0
  br i1 %cmp2.i74.3, label %for.inc.i79.2.sw.epilog_crit_edge, label %for.inc.i79.2.sw.epilog.sink.split_crit_edge

for.inc.i79.2.sw.epilog.sink.split_crit_edge:     ; preds = %for.inc.i79.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

for.inc.i79.2.sw.epilog_crit_edge:                ; preds = %for.inc.i79.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %card.i82 = getelementptr inbounds %struct.snd_usb_audio, ptr %cdev, i32 0, i32 2
  br label %sw.epilog.sink.split

sw.bb11:                                          ; preds = %entry
  %card.i96 = getelementptr inbounds %struct.snd_usb_audio, ptr %cdev, i32 0, i32 2
  br label %for.body.i103

for.body.i103:                                    ; preds = %for.inc.i107.for.body.i103_crit_edge, %sw.bb11
  %i.012.i97 = phi i32 [ 0, %sw.bb11 ], [ %inc.i104, %for.inc.i107.for.body.i103_crit_edge ]
  %c.addr.011.i98 = phi ptr [ @kontrolx1_controller, %sw.bb11 ], [ %incdec.ptr.i105, %for.inc.i107.for.body.i103_crit_edge ]
  %35 = ptrtoint ptr %c.addr.011.i98 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %c.addr.011.i98, align 4
  store ptr %36, ptr getelementptr inbounds (%struct.snd_kcontrol_new, ptr @kcontrol_template, i32 0, i32 3), align 4
  %index.i99 = getelementptr inbounds %struct.caiaq_controller, ptr %c.addr.011.i98, i32 0, i32 1
  %37 = ptrtoint ptr %index.i99 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %index.i99, align 4
  store i32 %38, ptr getelementptr inbounds (%struct.snd_kcontrol_new, ptr @kcontrol_template, i32 0, i32 11), align 4
  %call.i100 = tail call ptr @snd_ctl_new1(ptr noundef nonnull @kcontrol_template, ptr noundef %cdev) #5
  %39 = ptrtoint ptr %card.i96 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %card.i96, align 8
  %call1.i101 = tail call i32 @snd_ctl_add(ptr noundef %40, ptr noundef %call.i100) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i101)
  %cmp2.i102 = icmp slt i32 %call1.i101, 0
  br i1 %cmp2.i102, label %for.body.i103.sw.epilog_crit_edge, label %for.inc.i107

for.body.i103.sw.epilog_crit_edge:                ; preds = %for.body.i103
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

for.inc.i107:                                     ; preds = %for.body.i103
  %inc.i104 = add nuw nsw i32 %i.012.i97, 1
  %incdec.ptr.i105 = getelementptr %struct.caiaq_controller, ptr %c.addr.011.i98, i32 1
  %exitcond.not.i106 = icmp eq i32 %inc.i104, 31
  br i1 %exitcond.not.i106, label %for.inc.i107.sw.epilog_crit_edge, label %for.inc.i107.for.body.i103_crit_edge

for.inc.i107.for.body.i103_crit_edge:             ; preds = %for.inc.i107
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i103

for.inc.i107.sw.epilog_crit_edge:                 ; preds = %for.inc.i107
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry
  %card.i110 = getelementptr inbounds %struct.snd_usb_audio, ptr %cdev, i32 0, i32 2
  br label %for.body.i117

for.body.i117:                                    ; preds = %for.inc.i121.for.body.i117_crit_edge, %sw.bb13
  %i.012.i111 = phi i32 [ 0, %sw.bb13 ], [ %inc.i118, %for.inc.i121.for.body.i117_crit_edge ]
  %c.addr.011.i112 = phi ptr [ @kontrols4_controller, %sw.bb13 ], [ %incdec.ptr.i119, %for.inc.i121.for.body.i117_crit_edge ]
  %41 = ptrtoint ptr %c.addr.011.i112 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %c.addr.011.i112, align 4
  store ptr %42, ptr getelementptr inbounds (%struct.snd_kcontrol_new, ptr @kcontrol_template, i32 0, i32 3), align 4
  %index.i113 = getelementptr inbounds %struct.caiaq_controller, ptr %c.addr.011.i112, i32 0, i32 1
  %43 = ptrtoint ptr %index.i113 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %index.i113, align 4
  store i32 %44, ptr getelementptr inbounds (%struct.snd_kcontrol_new, ptr @kcontrol_template, i32 0, i32 11), align 4
  %call.i114 = tail call ptr @snd_ctl_new1(ptr noundef nonnull @kcontrol_template, ptr noundef %cdev) #5
  %45 = ptrtoint ptr %card.i110 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %card.i110, align 8
  %call1.i115 = tail call i32 @snd_ctl_add(ptr noundef %46, ptr noundef %call.i114) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i115)
  %cmp2.i116 = icmp slt i32 %call1.i115, 0
  br i1 %cmp2.i116, label %for.body.i117.sw.epilog_crit_edge, label %for.inc.i121

for.body.i117.sw.epilog_crit_edge:                ; preds = %for.body.i117
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

for.inc.i121:                                     ; preds = %for.body.i117
  %inc.i118 = add nuw nsw i32 %i.012.i111, 1
  %incdec.ptr.i119 = getelementptr %struct.caiaq_controller, ptr %c.addr.011.i112, i32 1
  %exitcond.not.i120 = icmp eq i32 %inc.i118, 163
  br i1 %exitcond.not.i120, label %for.inc.i121.sw.epilog_crit_edge, label %for.inc.i121.for.body.i117_crit_edge

for.inc.i121.for.body.i117_crit_edge:             ; preds = %for.inc.i121
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i117

for.inc.i121.sw.epilog_crit_edge:                 ; preds = %for.inc.i121
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  %card.i124 = getelementptr inbounds %struct.snd_usb_audio, ptr %cdev, i32 0, i32 2
  br label %for.body.i131

for.body.i131:                                    ; preds = %for.inc.i135.for.body.i131_crit_edge, %sw.bb15
  %i.012.i125 = phi i32 [ 0, %sw.bb15 ], [ %inc.i132, %for.inc.i135.for.body.i131_crit_edge ]
  %c.addr.011.i126 = phi ptr [ @maschine_controller, %sw.bb15 ], [ %incdec.ptr.i133, %for.inc.i135.for.body.i131_crit_edge ]
  %47 = ptrtoint ptr %c.addr.011.i126 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %c.addr.011.i126, align 4
  store ptr %48, ptr getelementptr inbounds (%struct.snd_kcontrol_new, ptr @kcontrol_template, i32 0, i32 3), align 4
  %index.i127 = getelementptr inbounds %struct.caiaq_controller, ptr %c.addr.011.i126, i32 0, i32 1
  %49 = ptrtoint ptr %index.i127 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %index.i127, align 4
  store i32 %50, ptr getelementptr inbounds (%struct.snd_kcontrol_new, ptr @kcontrol_template, i32 0, i32 11), align 4
  %call.i128 = tail call ptr @snd_ctl_new1(ptr noundef nonnull @kcontrol_template, ptr noundef %cdev) #5
  %51 = ptrtoint ptr %card.i124 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %card.i124, align 8
  %call1.i129 = tail call i32 @snd_ctl_add(ptr noundef %52, ptr noundef %call.i128) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i129)
  %cmp2.i130 = icmp slt i32 %call1.i129, 0
  br i1 %cmp2.i130, label %for.body.i131.sw.epilog_crit_edge, label %for.inc.i135

for.body.i131.sw.epilog_crit_edge:                ; preds = %for.body.i131
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

for.inc.i135:                                     ; preds = %for.body.i131
  %inc.i132 = add nuw nsw i32 %i.012.i125, 1
  %incdec.ptr.i133 = getelementptr %struct.caiaq_controller, ptr %c.addr.011.i126, i32 1
  %exitcond.not.i134 = icmp eq i32 %inc.i132, 58
  br i1 %exitcond.not.i134, label %for.inc.i135.sw.epilog_crit_edge, label %for.inc.i135.for.body.i131_crit_edge

for.inc.i135.for.body.i131_crit_edge:             ; preds = %for.inc.i135
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i131

for.inc.i135.sw.epilog_crit_edge:                 ; preds = %for.inc.i135
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.epilog.sink.split:                             ; preds = %sw.bb9, %for.inc.i79.2.sw.epilog.sink.split_crit_edge, %for.inc.i.1.sw.epilog.sink.split_crit_edge
  %.str.74.sink = phi ptr [ @.str.74, %sw.bb9 ], [ @.str.3, %for.inc.i.1.sw.epilog.sink.split_crit_edge ], [ @.str.78, %for.inc.i79.2.sw.epilog.sink.split_crit_edge ]
  %.sink = phi i32 [ 65536, %sw.bb9 ], [ 3, %for.inc.i.1.sw.epilog.sink.split_crit_edge ], [ 40, %for.inc.i79.2.sw.epilog.sink.split_crit_edge ]
  %card.i82.sink = phi ptr [ %card.i82, %sw.bb9 ], [ %card.i, %for.inc.i.1.sw.epilog.sink.split_crit_edge ], [ %card.i68, %for.inc.i79.2.sw.epilog.sink.split_crit_edge ]
  store ptr %.str.74.sink, ptr getelementptr inbounds (%struct.snd_kcontrol_new, ptr @kcontrol_template, i32 0, i32 3), align 4
  store i32 %.sink, ptr getelementptr inbounds (%struct.snd_kcontrol_new, ptr @kcontrol_template, i32 0, i32 11), align 4
  %call.i86 = tail call ptr @snd_ctl_new1(ptr noundef nonnull @kcontrol_template, ptr noundef %cdev) #5
  %53 = ptrtoint ptr %card.i82.sink to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %card.i82.sink, align 8
  %call1.i87 = tail call i32 @snd_ctl_add(ptr noundef %54, ptr noundef %call.i86) #5
  %55 = call i32 @llvm.smin.i32(i32 %call1.i87, i32 0)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %for.inc.i135.sw.epilog_crit_edge, %for.body.i131.sw.epilog_crit_edge, %for.inc.i121.sw.epilog_crit_edge, %for.body.i117.sw.epilog_crit_edge, %for.inc.i107.sw.epilog_crit_edge, %for.body.i103.sw.epilog_crit_edge, %for.inc.i79.2.sw.epilog_crit_edge, %for.inc.i79.1.sw.epilog_crit_edge, %for.inc.i79.sw.epilog_crit_edge, %sw.bb7.sw.epilog_crit_edge, %for.inc.i65.sw.epilog_crit_edge, %for.body.i61.sw.epilog_crit_edge, %for.inc.i51.sw.epilog_crit_edge, %for.body.i47.sw.epilog_crit_edge, %for.inc.i37.sw.epilog_crit_edge, %for.body.i33.sw.epilog_crit_edge, %for.inc.i.1.sw.epilog_crit_edge, %for.inc.i.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ %call1.i, %sw.bb.sw.epilog_crit_edge ], [ %call1.i.1, %for.inc.i.sw.epilog_crit_edge ], [ %call1.i.2, %for.inc.i.1.sw.epilog_crit_edge ], [ %call1.i73, %sw.bb7.sw.epilog_crit_edge ], [ %call1.i73.1, %for.inc.i79.sw.epilog_crit_edge ], [ %call1.i73.2, %for.inc.i79.1.sw.epilog_crit_edge ], [ %call1.i73.3, %for.inc.i79.2.sw.epilog_crit_edge ], [ %55, %sw.epilog.sink.split ], [ %call1.i31, %for.body.i33.sw.epilog_crit_edge ], [ 0, %for.inc.i37.sw.epilog_crit_edge ], [ %call1.i45, %for.body.i47.sw.epilog_crit_edge ], [ 0, %for.inc.i51.sw.epilog_crit_edge ], [ %call1.i59, %for.body.i61.sw.epilog_crit_edge ], [ 0, %for.inc.i65.sw.epilog_crit_edge ], [ %call1.i101, %for.body.i103.sw.epilog_crit_edge ], [ 0, %for.inc.i107.sw.epilog_crit_edge ], [ %call1.i115, %for.body.i117.sw.epilog_crit_edge ], [ 0, %for.inc.i121.sw.epilog_crit_edge ], [ %call1.i129, %for.body.i131.sw.epilog_crit_edge ], [ 0, %for.inc.i135.sw.epilog_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_ctl_new1(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @control_info(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %uinfo) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %card = getelementptr inbounds %struct.snd_usb_audio, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card, align 4
  %private_data1 = getelementptr inbounds %struct.snd_card, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %private_data1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data1, align 8
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %6 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %private_value, align 4
  %and = and i32 %7, 65536
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %8 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %count, align 8
  %usb_id = getelementptr inbounds %struct.snd_usb_audio, ptr %5, i32 0, i32 4
  %9 = ptrtoint ptr %usb_id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %usb_id, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.331)
  switch i32 %10, label %entry.sw.epilog_crit_edge [
    i32 399251832, label %entry.sw.bb_crit_edge
    i32 399247417, label %entry.sw.bb_crit_edge35
    i32 399254277, label %sw.bb5
    i32 399293183, label %sw.bb6
  ]

entry.sw.bb_crit_edge35:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge35
  %and2 = and i32 %7, -65537
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %cmp = icmp eq i32 %and2, 0
  br i1 %cmp, label %if.then, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %12 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2, ptr %type, align 8
  br label %cleanup

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb6, %sw.bb5, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %maxval.0 = phi i32 [ 63, %entry.sw.epilog_crit_edge ], [ 31, %sw.bb6 ], [ 127, %sw.bb5 ], [ 63, %sw.bb.sw.epilog_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %type13 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  br i1 %tobool.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %type13 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2, ptr %type13, align 8
  br label %cleanup

if.else:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %type13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %type13, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then7, %if.then
  %maxval.0.sink = phi i32 [ %maxval.0, %if.then7 ], [ 1, %if.else ], [ 2, %if.then ]
  %value9 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5
  %15 = ptrtoint ptr %value9 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %value9, align 8
  %max12 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 1
  %16 = ptrtoint ptr %max12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %maxval.0.sink, ptr %max12, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @control_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %card = getelementptr inbounds %struct.snd_usb_audio, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card, align 4
  %private_data1 = getelementptr inbounds %struct.snd_card, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %private_data1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data1, align 8
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %6 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %private_value, align 4
  %and = and i32 %7, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %and2 = and i32 %7, -65537
  %arrayidx = getelementptr %struct.snd_usb_caiaqdev, ptr %5, i32 0, i32 38, i32 %and2
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %9 to i32
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %div = sdiv i32 %7, 8
  %arrayidx5 = getelementptr %struct.snd_usb_caiaqdev, ptr %5, i32 0, i32 38, i32 %div
  %10 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx5, align 1
  %conv6 = zext i8 %11 to i32
  %rem18 = and i32 %7, 7
  %12 = lshr i32 %conv6, %rem18
  %13 = and i32 %12, 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %conv.sink = phi i32 [ %13, %if.else ], [ %conv, %if.then ]
  %14 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv.sink, ptr %14, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @control_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  %actual_len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %card = getelementptr inbounds %struct.snd_usb_audio, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card, align 4
  %private_data1 = getelementptr inbounds %struct.snd_card, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %private_data1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data1, align 8
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %6 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %private_value, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %value, align 8
  %usb_id = getelementptr inbounds %struct.snd_usb_audio, ptr %5, i32 0, i32 4
  %10 = ptrtoint ptr %usb_id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %usb_id, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.332)
  switch i32 %11, label %sw.default [
    i32 399247368, label %entry.sw.epilog_crit_edge
    i32 399254277, label %entry.sw.epilog_crit_edge90
    i32 399263506, label %entry.sw.epilog_crit_edge91
    i32 399263505, label %entry.sw.epilog_crit_edge92
  ]

entry.sw.epilog_crit_edge92:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

entry.sw.epilog_crit_edge91:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

entry.sw.epilog_crit_edge90:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge90, %entry.sw.epilog_crit_edge91, %entry.sw.epilog_crit_edge92
  %cmd.0 = phi i8 [ 5, %sw.default ], [ 12, %entry.sw.epilog_crit_edge ], [ 12, %entry.sw.epilog_crit_edge90 ], [ 12, %entry.sw.epilog_crit_edge91 ], [ 12, %entry.sw.epilog_crit_edge92 ]
  %and = and i32 %7, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else37, label %if.then

if.then:                                          ; preds = %sw.epilog
  %and3 = and i32 %7, -65537
  %conv = trunc i32 %9 to i8
  %control_state = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %5, i32 0, i32 38
  %arrayidx4 = getelementptr %struct.snd_usb_caiaqdev, ptr %5, i32 0, i32 38, i32 %and3
  %13 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv, ptr %arrayidx4, align 1
  %14 = ptrtoint ptr %usb_id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %usb_id, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.333)
  switch i32 %15, label %if.else31 [
    i32 399293183, label %if.then8
    i32 399247368, label %if.then23
  ]

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %actual_len) #5
  %17 = ptrtoint ptr %actual_len to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %actual_len, align 4, !annotation !691
  %conv9 = trunc i32 %7 to i8
  %ep8_out_buf = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %5, i32 0, i32 39
  %18 = ptrtoint ptr %ep8_out_buf to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv9, ptr %ep8_out_buf, align 8
  %arrayidx13 = getelementptr %struct.snd_usb_caiaqdev, ptr %5, i32 0, i32 39, i32 1
  %19 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv, ptr %arrayidx13, align 1
  %dev = getelementptr inbounds %struct.snd_usb_audio, ptr %5, i32 0, i32 1
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 8
  %shl.i = shl i32 %23, 8
  %or = or i32 %shl.i, -1073479680
  %call18 = call i32 @usb_bulk_msg(ptr noundef %21, i32 noundef %or, ptr noundef %ep8_out_buf, i32 noundef 2, ptr noundef nonnull %actual_len, i32 noundef 200) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual_len) #5
  br label %if.end58

if.then23:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %and3)
  %cmp24 = icmp sgt i32 %and3, 31
  %spec.select = select i1 %cmp24, i8 30, i8 0
  %spec.select89 = select i1 %cmp24, i32 32, i32 0
  %add.ptr = getelementptr i8, ptr %control_state, i32 %spec.select89
  %call30 = tail call i32 @snd_usb_caiaq_send_command_bank(ptr noundef %5, i8 noundef zeroext %cmd.0, i8 noundef zeroext %spec.select, ptr noundef %add.ptr, i32 noundef 32) #5
  br label %if.end58

if.else31:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %call34 = tail call i32 @snd_usb_caiaq_send_command(ptr noundef %5, i8 noundef zeroext %cmd.0, ptr noundef %control_state, i32 noundef 256) #5
  br label %if.end58

if.else37:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool38.not = icmp eq i32 %9, 0
  %rem4687 = and i32 %7, 7
  %shl47 = shl nuw nsw i32 1, %rem4687
  %div49 = sdiv i32 %7, 8
  %arrayidx50 = getelementptr %struct.snd_usb_caiaqdev, ptr %5, i32 0, i32 38, i32 %div49
  %24 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx50, align 1
  %26 = trunc i32 %shl47 to i8
  %27 = xor i8 %26, -1
  %conv53 = and i8 %25, %27
  %conv44 = or i8 %25, %26
  %conv53.sink = select i1 %tobool38.not, i8 %conv53, i8 %conv44
  store i8 %conv53.sink, ptr %arrayidx50, align 1
  %control_state55 = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %5, i32 0, i32 38
  %call57 = tail call i32 @snd_usb_caiaq_send_command(ptr noundef %5, i8 noundef zeroext %cmd.0, ptr noundef %control_state55, i32 noundef 256) #5
  br label %if.end58

if.end58:                                         ; preds = %if.else37, %if.else31, %if.then23, %if.then8
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_bulk_msg(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_caiaq_send_command_bank(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_caiaq_send_command(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 338)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 338)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !314, !316, !318, !320, !322, !324, !326, !328, !330, !332, !334, !336, !338, !340, !342, !344, !346, !348, !350, !352, !354, !356, !358, !360, !362, !364, !366, !368, !370, !372, !374, !376, !378, !380, !382, !384, !386, !388, !390, !392, !394, !396, !398, !400, !402, !404, !406, !408, !410, !412, !414, !416, !418, !420, !422, !424, !426, !428, !430, !432, !434, !436, !438, !440, !442, !444, !446, !448, !450, !452, !454, !456, !458, !460, !462, !464, !466, !468, !470, !472, !474, !476, !478, !480, !482, !484, !486, !488, !490, !492, !494, !496, !498, !500, !502, !504, !506, !508, !510, !512, !514, !516, !518, !520, !522, !524, !526, !528, !530, !532, !534, !536, !538, !540, !542, !544, !546, !548, !550, !552, !554, !556, !558, !560, !562, !564, !566, !568, !570, !572, !574, !576, !578, !580, !582, !584, !586, !588, !590, !592, !594, !596, !598, !600, !602, !604, !606, !608, !610, !612, !614, !616, !618, !620, !622, !624, !626, !628, !630, !632, !634, !636, !638, !640, !642, !644, !646, !648, !650, !652, !654, !656, !658, !660, !662, !664, !666, !668, !670, !672, !674, !676, !678, !680}
!llvm.module.flags = !{!682, !683, !684, !685, !686, !687, !688, !689}
!llvm.ident = !{!690}

!0 = !{ptr @kcontrol_template, !1, !"kcontrol_template", i1 false, i1 false}
!1 = !{!"../sound/usb/caiaq/control.c", i32 151, i32 32}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../sound/usb/caiaq/control.c", i32 167, i32 4}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../sound/usb/caiaq/control.c", i32 168, i32 4}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../sound/usb/caiaq/control.c", i32 169, i32 4}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/usb/caiaq/control.c", i32 170, i32 4}
!10 = distinct !{null, !11, !"ak1_controller", i1 false, i1 false}
!11 = !{!"../sound/usb/caiaq/control.c", i32 166, i32 38}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/usb/caiaq/control.c", i32 174, i32 4}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/usb/caiaq/control.c", i32 175, i32 4}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/usb/caiaq/control.c", i32 176, i32 4}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/usb/caiaq/control.c", i32 177, i32 4}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/usb/caiaq/control.c", i32 178, i32 4}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/usb/caiaq/control.c", i32 179, i32 4}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/usb/caiaq/control.c", i32 180, i32 4}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/usb/caiaq/control.c", i32 181, i32 4}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/usb/caiaq/control.c", i32 182, i32 4}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/usb/caiaq/control.c", i32 183, i32 4}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../sound/usb/caiaq/control.c", i32 184, i32 4}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../sound/usb/caiaq/control.c", i32 185, i32 4}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../sound/usb/caiaq/control.c", i32 186, i32 4}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../sound/usb/caiaq/control.c", i32 187, i32 4}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/usb/caiaq/control.c", i32 188, i32 4}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../sound/usb/caiaq/control.c", i32 189, i32 4}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/usb/caiaq/control.c", i32 190, i32 4}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/usb/caiaq/control.c", i32 191, i32 4}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/usb/caiaq/control.c", i32 192, i32 4}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/usb/caiaq/control.c", i32 193, i32 4}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/usb/caiaq/control.c", i32 194, i32 4}
!54 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/usb/caiaq/control.c", i32 195, i32 4}
!56 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/usb/caiaq/control.c", i32 196, i32 4}
!58 = !{ptr @rk2_controller, !59, !"rk2_controller", i1 false, i1 false}
!59 = !{!"../sound/usb/caiaq/control.c", i32 173, i32 38}
!60 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/usb/caiaq/control.c", i32 200, i32 4}
!62 = !{ptr @.str.28, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../sound/usb/caiaq/control.c", i32 203, i32 4}
!64 = !{ptr @.str.29, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/usb/caiaq/control.c", i32 204, i32 4}
!66 = !{ptr @.str.30, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../sound/usb/caiaq/control.c", i32 205, i32 4}
!68 = !{ptr @.str.31, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../sound/usb/caiaq/control.c", i32 206, i32 4}
!70 = !{ptr @.str.32, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../sound/usb/caiaq/control.c", i32 207, i32 4}
!72 = !{ptr @.str.33, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../sound/usb/caiaq/control.c", i32 216, i32 4}
!74 = !{ptr @.str.34, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../sound/usb/caiaq/control.c", i32 225, i32 4}
!76 = !{ptr @.str.35, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../sound/usb/caiaq/control.c", i32 227, i32 4}
!78 = !{ptr @.str.36, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../sound/usb/caiaq/control.c", i32 228, i32 4}
!80 = !{ptr @.str.37, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../sound/usb/caiaq/control.c", i32 229, i32 4}
!82 = !{ptr @.str.38, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../sound/usb/caiaq/control.c", i32 230, i32 4}
!84 = !{ptr @.str.39, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../sound/usb/caiaq/control.c", i32 231, i32 4}
!86 = !{ptr @.str.40, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../sound/usb/caiaq/control.c", i32 232, i32 4}
!88 = !{ptr @.str.41, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../sound/usb/caiaq/control.c", i32 233, i32 4}
!90 = !{ptr @.str.42, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../sound/usb/caiaq/control.c", i32 234, i32 4}
!92 = !{ptr @.str.43, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../sound/usb/caiaq/control.c", i32 242, i32 4}
!94 = !{ptr @.str.44, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../sound/usb/caiaq/control.c", i32 243, i32 4}
!96 = !{ptr @rk3_controller, !97, !"rk3_controller", i1 false, i1 false}
!97 = !{!"../sound/usb/caiaq/control.c", i32 199, i32 38}
!98 = !{ptr @.str.45, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../sound/usb/caiaq/control.c", i32 248, i32 4}
!100 = !{ptr @.str.46, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../sound/usb/caiaq/control.c", i32 249, i32 4}
!102 = !{ptr @.str.47, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../sound/usb/caiaq/control.c", i32 250, i32 4}
!104 = !{ptr @.str.48, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../sound/usb/caiaq/control.c", i32 251, i32 4}
!106 = !{ptr @.str.49, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../sound/usb/caiaq/control.c", i32 252, i32 4}
!108 = !{ptr @.str.50, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../sound/usb/caiaq/control.c", i32 253, i32 4}
!110 = !{ptr @.str.51, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../sound/usb/caiaq/control.c", i32 254, i32 4}
!112 = !{ptr @.str.52, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../sound/usb/caiaq/control.c", i32 255, i32 4}
!114 = !{ptr @.str.53, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../sound/usb/caiaq/control.c", i32 256, i32 4}
!116 = !{ptr @.str.54, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../sound/usb/caiaq/control.c", i32 257, i32 4}
!118 = !{ptr @.str.55, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../sound/usb/caiaq/control.c", i32 258, i32 4}
!120 = !{ptr @.str.56, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../sound/usb/caiaq/control.c", i32 259, i32 4}
!122 = !{ptr @.str.57, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../sound/usb/caiaq/control.c", i32 260, i32 4}
!124 = !{ptr @.str.58, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../sound/usb/caiaq/control.c", i32 261, i32 4}
!126 = !{ptr @.str.59, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../sound/usb/caiaq/control.c", i32 262, i32 4}
!128 = !{ptr @.str.60, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../sound/usb/caiaq/control.c", i32 263, i32 4}
!130 = !{ptr @.str.61, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../sound/usb/caiaq/control.c", i32 266, i32 4}
!132 = !{ptr @.str.62, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../sound/usb/caiaq/control.c", i32 267, i32 4}
!134 = !{ptr @.str.63, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../sound/usb/caiaq/control.c", i32 268, i32 4}
!136 = !{ptr @.str.64, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../sound/usb/caiaq/control.c", i32 269, i32 4}
!138 = !{ptr @.str.65, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../sound/usb/caiaq/control.c", i32 270, i32 4}
!140 = !{ptr @.str.66, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../sound/usb/caiaq/control.c", i32 271, i32 4}
!142 = !{ptr @.str.67, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../sound/usb/caiaq/control.c", i32 272, i32 4}
!144 = !{ptr @.str.68, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../sound/usb/caiaq/control.c", i32 273, i32 4}
!146 = !{ptr @.str.69, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../sound/usb/caiaq/control.c", i32 274, i32 4}
!148 = !{ptr @.str.70, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../sound/usb/caiaq/control.c", i32 275, i32 4}
!150 = !{ptr @.str.71, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../sound/usb/caiaq/control.c", i32 276, i32 4}
!152 = !{ptr @.str.72, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../sound/usb/caiaq/control.c", i32 277, i32 4}
!154 = !{ptr @.str.73, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../sound/usb/caiaq/control.c", i32 278, i32 4}
!156 = !{ptr @kore_controller, !157, !"kore_controller", i1 false, i1 false}
!157 = !{!"../sound/usb/caiaq/control.c", i32 247, i32 38}
!158 = !{ptr @.str.74, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../sound/usb/caiaq/control.c", i32 282, i32 4}
!160 = !{ptr @.str.75, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../sound/usb/caiaq/control.c", i32 283, i32 4}
!162 = !{ptr @.str.76, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../sound/usb/caiaq/control.c", i32 284, i32 4}
!164 = !{ptr @.str.77, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../sound/usb/caiaq/control.c", i32 285, i32 4}
!166 = !{ptr @.str.78, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../sound/usb/caiaq/control.c", i32 286, i32 4}
!168 = distinct !{null, !169, !"a8dj_controller", i1 false, i1 false}
!169 = !{!"../sound/usb/caiaq/control.c", i32 281, i32 38}
!170 = distinct !{null, !171, !"a4dj_controller", i1 false, i1 false}
!171 = !{!"../sound/usb/caiaq/control.c", i32 289, i32 38}
!172 = !{ptr @.str.79, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../sound/usb/caiaq/control.c", i32 294, i32 4}
!174 = !{ptr @.str.80, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../sound/usb/caiaq/control.c", i32 295, i32 4}
!176 = !{ptr @.str.81, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../sound/usb/caiaq/control.c", i32 296, i32 4}
!178 = !{ptr @.str.82, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../sound/usb/caiaq/control.c", i32 297, i32 4}
!180 = !{ptr @.str.83, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../sound/usb/caiaq/control.c", i32 298, i32 4}
!182 = !{ptr @.str.84, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../sound/usb/caiaq/control.c", i32 299, i32 4}
!184 = !{ptr @.str.85, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../sound/usb/caiaq/control.c", i32 300, i32 4}
!186 = !{ptr @.str.86, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../sound/usb/caiaq/control.c", i32 301, i32 4}
!188 = !{ptr @.str.87, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../sound/usb/caiaq/control.c", i32 303, i32 4}
!190 = !{ptr @.str.88, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../sound/usb/caiaq/control.c", i32 304, i32 4}
!192 = !{ptr @.str.89, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../sound/usb/caiaq/control.c", i32 305, i32 4}
!194 = !{ptr @.str.90, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../sound/usb/caiaq/control.c", i32 307, i32 4}
!196 = !{ptr @.str.91, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../sound/usb/caiaq/control.c", i32 308, i32 4}
!198 = !{ptr @.str.92, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../sound/usb/caiaq/control.c", i32 309, i32 4}
!200 = !{ptr @.str.93, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../sound/usb/caiaq/control.c", i32 310, i32 4}
!202 = !{ptr @.str.94, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../sound/usb/caiaq/control.c", i32 311, i32 4}
!204 = !{ptr @.str.95, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../sound/usb/caiaq/control.c", i32 312, i32 4}
!206 = !{ptr @.str.96, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../sound/usb/caiaq/control.c", i32 313, i32 4}
!208 = !{ptr @.str.97, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../sound/usb/caiaq/control.c", i32 314, i32 4}
!210 = !{ptr @.str.98, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../sound/usb/caiaq/control.c", i32 315, i32 4}
!212 = !{ptr @.str.99, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../sound/usb/caiaq/control.c", i32 316, i32 4}
!214 = !{ptr @.str.100, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../sound/usb/caiaq/control.c", i32 318, i32 4}
!216 = !{ptr @.str.101, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../sound/usb/caiaq/control.c", i32 319, i32 4}
!218 = !{ptr @.str.102, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../sound/usb/caiaq/control.c", i32 320, i32 4}
!220 = !{ptr @.str.103, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../sound/usb/caiaq/control.c", i32 321, i32 4}
!222 = !{ptr @.str.104, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../sound/usb/caiaq/control.c", i32 322, i32 4}
!224 = !{ptr @.str.105, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../sound/usb/caiaq/control.c", i32 323, i32 4}
!226 = !{ptr @.str.106, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../sound/usb/caiaq/control.c", i32 324, i32 4}
!228 = !{ptr @.str.107, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../sound/usb/caiaq/control.c", i32 325, i32 4}
!230 = !{ptr @.str.108, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../sound/usb/caiaq/control.c", i32 326, i32 4}
!232 = !{ptr @.str.109, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../sound/usb/caiaq/control.c", i32 327, i32 4}
!234 = !{ptr @kontrolx1_controller, !235, !"kontrolx1_controller", i1 false, i1 false}
!235 = !{!"../sound/usb/caiaq/control.c", i32 293, i32 38}
!236 = !{ptr @.str.110, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../sound/usb/caiaq/control.c", i32 331, i32 4}
!238 = !{ptr @.str.111, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../sound/usb/caiaq/control.c", i32 332, i32 4}
!240 = !{ptr @.str.112, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../sound/usb/caiaq/control.c", i32 333, i32 4}
!242 = !{ptr @.str.113, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../sound/usb/caiaq/control.c", i32 334, i32 4}
!244 = !{ptr @.str.114, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../sound/usb/caiaq/control.c", i32 335, i32 4}
!246 = !{ptr @.str.115, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../sound/usb/caiaq/control.c", i32 336, i32 4}
!248 = !{ptr @.str.116, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../sound/usb/caiaq/control.c", i32 337, i32 4}
!250 = !{ptr @.str.117, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../sound/usb/caiaq/control.c", i32 338, i32 4}
!252 = !{ptr @.str.118, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../sound/usb/caiaq/control.c", i32 339, i32 4}
!254 = !{ptr @.str.119, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../sound/usb/caiaq/control.c", i32 340, i32 4}
!256 = !{ptr @.str.120, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../sound/usb/caiaq/control.c", i32 341, i32 4}
!258 = !{ptr @.str.121, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../sound/usb/caiaq/control.c", i32 342, i32 4}
!260 = !{ptr @.str.122, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../sound/usb/caiaq/control.c", i32 343, i32 4}
!262 = !{ptr @.str.123, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../sound/usb/caiaq/control.c", i32 345, i32 4}
!264 = !{ptr @.str.124, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../sound/usb/caiaq/control.c", i32 346, i32 4}
!266 = !{ptr @.str.125, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../sound/usb/caiaq/control.c", i32 347, i32 4}
!268 = !{ptr @.str.126, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../sound/usb/caiaq/control.c", i32 348, i32 4}
!270 = !{ptr @.str.127, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../sound/usb/caiaq/control.c", i32 349, i32 4}
!272 = !{ptr @.str.128, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../sound/usb/caiaq/control.c", i32 350, i32 4}
!274 = !{ptr @.str.129, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../sound/usb/caiaq/control.c", i32 351, i32 4}
!276 = !{ptr @.str.130, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../sound/usb/caiaq/control.c", i32 352, i32 4}
!278 = !{ptr @.str.131, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../sound/usb/caiaq/control.c", i32 353, i32 4}
!280 = !{ptr @.str.132, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../sound/usb/caiaq/control.c", i32 354, i32 4}
!282 = !{ptr @.str.133, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../sound/usb/caiaq/control.c", i32 355, i32 4}
!284 = !{ptr @.str.134, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../sound/usb/caiaq/control.c", i32 356, i32 4}
!286 = !{ptr @.str.135, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../sound/usb/caiaq/control.c", i32 357, i32 4}
!288 = !{ptr @.str.136, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../sound/usb/caiaq/control.c", i32 359, i32 4}
!290 = !{ptr @.str.137, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../sound/usb/caiaq/control.c", i32 360, i32 4}
!292 = !{ptr @.str.138, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../sound/usb/caiaq/control.c", i32 361, i32 4}
!294 = !{ptr @.str.139, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../sound/usb/caiaq/control.c", i32 362, i32 4}
!296 = !{ptr @.str.140, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../sound/usb/caiaq/control.c", i32 363, i32 4}
!298 = !{ptr @.str.141, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../sound/usb/caiaq/control.c", i32 364, i32 4}
!300 = !{ptr @.str.142, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../sound/usb/caiaq/control.c", i32 365, i32 4}
!302 = !{ptr @.str.143, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../sound/usb/caiaq/control.c", i32 366, i32 4}
!304 = !{ptr @.str.144, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../sound/usb/caiaq/control.c", i32 367, i32 4}
!306 = !{ptr @.str.145, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../sound/usb/caiaq/control.c", i32 368, i32 4}
!308 = !{ptr @.str.146, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../sound/usb/caiaq/control.c", i32 369, i32 4}
!310 = !{ptr @.str.147, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../sound/usb/caiaq/control.c", i32 370, i32 4}
!312 = !{ptr @.str.148, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../sound/usb/caiaq/control.c", i32 371, i32 4}
!314 = !{ptr @.str.149, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../sound/usb/caiaq/control.c", i32 373, i32 4}
!316 = !{ptr @.str.150, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../sound/usb/caiaq/control.c", i32 374, i32 4}
!318 = !{ptr @.str.151, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../sound/usb/caiaq/control.c", i32 375, i32 4}
!320 = !{ptr @.str.152, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../sound/usb/caiaq/control.c", i32 376, i32 4}
!322 = !{ptr @.str.153, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../sound/usb/caiaq/control.c", i32 377, i32 4}
!324 = !{ptr @.str.154, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../sound/usb/caiaq/control.c", i32 378, i32 4}
!326 = !{ptr @.str.155, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../sound/usb/caiaq/control.c", i32 379, i32 4}
!328 = !{ptr @.str.156, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../sound/usb/caiaq/control.c", i32 380, i32 4}
!330 = !{ptr @.str.157, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../sound/usb/caiaq/control.c", i32 381, i32 4}
!332 = !{ptr @.str.158, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../sound/usb/caiaq/control.c", i32 382, i32 4}
!334 = !{ptr @.str.159, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../sound/usb/caiaq/control.c", i32 383, i32 4}
!336 = !{ptr @.str.160, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../sound/usb/caiaq/control.c", i32 384, i32 4}
!338 = !{ptr @.str.161, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../sound/usb/caiaq/control.c", i32 385, i32 4}
!340 = !{ptr @.str.162, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../sound/usb/caiaq/control.c", i32 387, i32 4}
!342 = !{ptr @.str.163, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../sound/usb/caiaq/control.c", i32 388, i32 4}
!344 = !{ptr @.str.164, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../sound/usb/caiaq/control.c", i32 389, i32 4}
!346 = !{ptr @.str.165, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../sound/usb/caiaq/control.c", i32 390, i32 4}
!348 = !{ptr @.str.166, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../sound/usb/caiaq/control.c", i32 391, i32 4}
!350 = !{ptr @.str.167, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../sound/usb/caiaq/control.c", i32 392, i32 4}
!352 = !{ptr @.str.168, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../sound/usb/caiaq/control.c", i32 393, i32 4}
!354 = !{ptr @.str.169, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../sound/usb/caiaq/control.c", i32 394, i32 4}
!356 = !{ptr @.str.170, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../sound/usb/caiaq/control.c", i32 395, i32 4}
!358 = !{ptr @.str.171, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../sound/usb/caiaq/control.c", i32 396, i32 4}
!360 = !{ptr @.str.172, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../sound/usb/caiaq/control.c", i32 397, i32 4}
!362 = !{ptr @.str.173, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../sound/usb/caiaq/control.c", i32 398, i32 4}
!364 = !{ptr @.str.174, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../sound/usb/caiaq/control.c", i32 399, i32 4}
!366 = !{ptr @.str.175, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../sound/usb/caiaq/control.c", i32 401, i32 4}
!368 = !{ptr @.str.176, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../sound/usb/caiaq/control.c", i32 402, i32 4}
!370 = !{ptr @.str.177, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../sound/usb/caiaq/control.c", i32 403, i32 4}
!372 = !{ptr @.str.178, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../sound/usb/caiaq/control.c", i32 404, i32 4}
!374 = !{ptr @.str.179, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../sound/usb/caiaq/control.c", i32 405, i32 4}
!376 = !{ptr @.str.180, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../sound/usb/caiaq/control.c", i32 406, i32 4}
!378 = !{ptr @.str.181, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../sound/usb/caiaq/control.c", i32 407, i32 4}
!380 = !{ptr @.str.182, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../sound/usb/caiaq/control.c", i32 408, i32 4}
!382 = !{ptr @.str.183, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../sound/usb/caiaq/control.c", i32 409, i32 4}
!384 = !{ptr @.str.184, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../sound/usb/caiaq/control.c", i32 410, i32 4}
!386 = !{ptr @.str.185, !387, !"<string literal>", i1 false, i1 false}
!387 = !{!"../sound/usb/caiaq/control.c", i32 411, i32 4}
!388 = !{ptr @.str.186, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../sound/usb/caiaq/control.c", i32 412, i32 4}
!390 = !{ptr @.str.187, !391, !"<string literal>", i1 false, i1 false}
!391 = !{!"../sound/usb/caiaq/control.c", i32 413, i32 4}
!392 = !{ptr @.str.188, !393, !"<string literal>", i1 false, i1 false}
!393 = !{!"../sound/usb/caiaq/control.c", i32 414, i32 4}
!394 = !{ptr @.str.189, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../sound/usb/caiaq/control.c", i32 415, i32 4}
!396 = !{ptr @.str.190, !397, !"<string literal>", i1 false, i1 false}
!397 = !{!"../sound/usb/caiaq/control.c", i32 416, i32 4}
!398 = !{ptr @.str.191, !399, !"<string literal>", i1 false, i1 false}
!399 = !{!"../sound/usb/caiaq/control.c", i32 417, i32 4}
!400 = !{ptr @.str.192, !401, !"<string literal>", i1 false, i1 false}
!401 = !{!"../sound/usb/caiaq/control.c", i32 418, i32 4}
!402 = !{ptr @.str.193, !403, !"<string literal>", i1 false, i1 false}
!403 = !{!"../sound/usb/caiaq/control.c", i32 419, i32 4}
!404 = !{ptr @.str.194, !405, !"<string literal>", i1 false, i1 false}
!405 = !{!"../sound/usb/caiaq/control.c", i32 420, i32 4}
!406 = !{ptr @.str.195, !407, !"<string literal>", i1 false, i1 false}
!407 = !{!"../sound/usb/caiaq/control.c", i32 421, i32 4}
!408 = !{ptr @.str.196, !409, !"<string literal>", i1 false, i1 false}
!409 = !{!"../sound/usb/caiaq/control.c", i32 422, i32 4}
!410 = !{ptr @.str.197, !411, !"<string literal>", i1 false, i1 false}
!411 = !{!"../sound/usb/caiaq/control.c", i32 423, i32 4}
!412 = !{ptr @.str.198, !413, !"<string literal>", i1 false, i1 false}
!413 = !{!"../sound/usb/caiaq/control.c", i32 424, i32 4}
!414 = !{ptr @.str.199, !415, !"<string literal>", i1 false, i1 false}
!415 = !{!"../sound/usb/caiaq/control.c", i32 425, i32 4}
!416 = !{ptr @.str.200, !417, !"<string literal>", i1 false, i1 false}
!417 = !{!"../sound/usb/caiaq/control.c", i32 426, i32 4}
!418 = !{ptr @.str.201, !419, !"<string literal>", i1 false, i1 false}
!419 = !{!"../sound/usb/caiaq/control.c", i32 427, i32 4}
!420 = !{ptr @.str.202, !421, !"<string literal>", i1 false, i1 false}
!421 = !{!"../sound/usb/caiaq/control.c", i32 428, i32 4}
!422 = !{ptr @.str.203, !423, !"<string literal>", i1 false, i1 false}
!423 = !{!"../sound/usb/caiaq/control.c", i32 429, i32 4}
!424 = !{ptr @.str.204, !425, !"<string literal>", i1 false, i1 false}
!425 = !{!"../sound/usb/caiaq/control.c", i32 430, i32 4}
!426 = !{ptr @.str.205, !427, !"<string literal>", i1 false, i1 false}
!427 = !{!"../sound/usb/caiaq/control.c", i32 431, i32 4}
!428 = !{ptr @.str.206, !429, !"<string literal>", i1 false, i1 false}
!429 = !{!"../sound/usb/caiaq/control.c", i32 432, i32 4}
!430 = !{ptr @.str.207, !431, !"<string literal>", i1 false, i1 false}
!431 = !{!"../sound/usb/caiaq/control.c", i32 433, i32 4}
!432 = !{ptr @.str.208, !433, !"<string literal>", i1 false, i1 false}
!433 = !{!"../sound/usb/caiaq/control.c", i32 434, i32 4}
!434 = !{ptr @.str.209, !435, !"<string literal>", i1 false, i1 false}
!435 = !{!"../sound/usb/caiaq/control.c", i32 435, i32 4}
!436 = !{ptr @.str.210, !437, !"<string literal>", i1 false, i1 false}
!437 = !{!"../sound/usb/caiaq/control.c", i32 436, i32 4}
!438 = !{ptr @.str.211, !439, !"<string literal>", i1 false, i1 false}
!439 = !{!"../sound/usb/caiaq/control.c", i32 437, i32 4}
!440 = !{ptr @.str.212, !441, !"<string literal>", i1 false, i1 false}
!441 = !{!"../sound/usb/caiaq/control.c", i32 438, i32 4}
!442 = !{ptr @.str.213, !443, !"<string literal>", i1 false, i1 false}
!443 = !{!"../sound/usb/caiaq/control.c", i32 439, i32 4}
!444 = !{ptr @.str.214, !445, !"<string literal>", i1 false, i1 false}
!445 = !{!"../sound/usb/caiaq/control.c", i32 440, i32 4}
!446 = !{ptr @.str.215, !447, !"<string literal>", i1 false, i1 false}
!447 = !{!"../sound/usb/caiaq/control.c", i32 441, i32 4}
!448 = !{ptr @.str.216, !449, !"<string literal>", i1 false, i1 false}
!449 = !{!"../sound/usb/caiaq/control.c", i32 442, i32 4}
!450 = !{ptr @.str.217, !451, !"<string literal>", i1 false, i1 false}
!451 = !{!"../sound/usb/caiaq/control.c", i32 443, i32 4}
!452 = !{ptr @.str.218, !453, !"<string literal>", i1 false, i1 false}
!453 = !{!"../sound/usb/caiaq/control.c", i32 444, i32 4}
!454 = !{ptr @.str.219, !455, !"<string literal>", i1 false, i1 false}
!455 = !{!"../sound/usb/caiaq/control.c", i32 446, i32 4}
!456 = !{ptr @.str.220, !457, !"<string literal>", i1 false, i1 false}
!457 = !{!"../sound/usb/caiaq/control.c", i32 447, i32 4}
!458 = !{ptr @.str.221, !459, !"<string literal>", i1 false, i1 false}
!459 = !{!"../sound/usb/caiaq/control.c", i32 448, i32 4}
!460 = !{ptr @.str.222, !461, !"<string literal>", i1 false, i1 false}
!461 = !{!"../sound/usb/caiaq/control.c", i32 449, i32 4}
!462 = !{ptr @.str.223, !463, !"<string literal>", i1 false, i1 false}
!463 = !{!"../sound/usb/caiaq/control.c", i32 450, i32 4}
!464 = !{ptr @.str.224, !465, !"<string literal>", i1 false, i1 false}
!465 = !{!"../sound/usb/caiaq/control.c", i32 451, i32 4}
!466 = !{ptr @.str.225, !467, !"<string literal>", i1 false, i1 false}
!467 = !{!"../sound/usb/caiaq/control.c", i32 452, i32 4}
!468 = !{ptr @.str.226, !469, !"<string literal>", i1 false, i1 false}
!469 = !{!"../sound/usb/caiaq/control.c", i32 453, i32 4}
!470 = !{ptr @.str.227, !471, !"<string literal>", i1 false, i1 false}
!471 = !{!"../sound/usb/caiaq/control.c", i32 454, i32 4}
!472 = !{ptr @.str.228, !473, !"<string literal>", i1 false, i1 false}
!473 = !{!"../sound/usb/caiaq/control.c", i32 455, i32 4}
!474 = !{ptr @.str.229, !475, !"<string literal>", i1 false, i1 false}
!475 = !{!"../sound/usb/caiaq/control.c", i32 456, i32 4}
!476 = !{ptr @.str.230, !477, !"<string literal>", i1 false, i1 false}
!477 = !{!"../sound/usb/caiaq/control.c", i32 457, i32 4}
!478 = !{ptr @.str.231, !479, !"<string literal>", i1 false, i1 false}
!479 = !{!"../sound/usb/caiaq/control.c", i32 458, i32 4}
!480 = !{ptr @.str.232, !481, !"<string literal>", i1 false, i1 false}
!481 = !{!"../sound/usb/caiaq/control.c", i32 459, i32 4}
!482 = !{ptr @.str.233, !483, !"<string literal>", i1 false, i1 false}
!483 = !{!"../sound/usb/caiaq/control.c", i32 460, i32 4}
!484 = !{ptr @.str.234, !485, !"<string literal>", i1 false, i1 false}
!485 = !{!"../sound/usb/caiaq/control.c", i32 461, i32 4}
!486 = !{ptr @.str.235, !487, !"<string literal>", i1 false, i1 false}
!487 = !{!"../sound/usb/caiaq/control.c", i32 462, i32 4}
!488 = !{ptr @.str.236, !489, !"<string literal>", i1 false, i1 false}
!489 = !{!"../sound/usb/caiaq/control.c", i32 463, i32 4}
!490 = !{ptr @.str.237, !491, !"<string literal>", i1 false, i1 false}
!491 = !{!"../sound/usb/caiaq/control.c", i32 464, i32 4}
!492 = !{ptr @.str.238, !493, !"<string literal>", i1 false, i1 false}
!493 = !{!"../sound/usb/caiaq/control.c", i32 465, i32 4}
!494 = !{ptr @.str.239, !495, !"<string literal>", i1 false, i1 false}
!495 = !{!"../sound/usb/caiaq/control.c", i32 466, i32 4}
!496 = !{ptr @.str.240, !497, !"<string literal>", i1 false, i1 false}
!497 = !{!"../sound/usb/caiaq/control.c", i32 467, i32 4}
!498 = !{ptr @.str.241, !499, !"<string literal>", i1 false, i1 false}
!499 = !{!"../sound/usb/caiaq/control.c", i32 468, i32 4}
!500 = !{ptr @.str.242, !501, !"<string literal>", i1 false, i1 false}
!501 = !{!"../sound/usb/caiaq/control.c", i32 469, i32 4}
!502 = !{ptr @.str.243, !503, !"<string literal>", i1 false, i1 false}
!503 = !{!"../sound/usb/caiaq/control.c", i32 470, i32 4}
!504 = !{ptr @.str.244, !505, !"<string literal>", i1 false, i1 false}
!505 = !{!"../sound/usb/caiaq/control.c", i32 471, i32 4}
!506 = !{ptr @.str.245, !507, !"<string literal>", i1 false, i1 false}
!507 = !{!"../sound/usb/caiaq/control.c", i32 472, i32 4}
!508 = !{ptr @.str.246, !509, !"<string literal>", i1 false, i1 false}
!509 = !{!"../sound/usb/caiaq/control.c", i32 473, i32 4}
!510 = !{ptr @.str.247, !511, !"<string literal>", i1 false, i1 false}
!511 = !{!"../sound/usb/caiaq/control.c", i32 474, i32 4}
!512 = !{ptr @.str.248, !513, !"<string literal>", i1 false, i1 false}
!513 = !{!"../sound/usb/caiaq/control.c", i32 475, i32 4}
!514 = !{ptr @.str.249, !515, !"<string literal>", i1 false, i1 false}
!515 = !{!"../sound/usb/caiaq/control.c", i32 476, i32 4}
!516 = !{ptr @.str.250, !517, !"<string literal>", i1 false, i1 false}
!517 = !{!"../sound/usb/caiaq/control.c", i32 477, i32 4}
!518 = !{ptr @.str.251, !519, !"<string literal>", i1 false, i1 false}
!519 = !{!"../sound/usb/caiaq/control.c", i32 478, i32 4}
!520 = !{ptr @.str.252, !521, !"<string literal>", i1 false, i1 false}
!521 = !{!"../sound/usb/caiaq/control.c", i32 479, i32 4}
!522 = !{ptr @.str.253, !523, !"<string literal>", i1 false, i1 false}
!523 = !{!"../sound/usb/caiaq/control.c", i32 480, i32 4}
!524 = !{ptr @.str.254, !525, !"<string literal>", i1 false, i1 false}
!525 = !{!"../sound/usb/caiaq/control.c", i32 481, i32 4}
!526 = !{ptr @.str.255, !527, !"<string literal>", i1 false, i1 false}
!527 = !{!"../sound/usb/caiaq/control.c", i32 482, i32 4}
!528 = !{ptr @.str.256, !529, !"<string literal>", i1 false, i1 false}
!529 = !{!"../sound/usb/caiaq/control.c", i32 483, i32 4}
!530 = !{ptr @.str.257, !531, !"<string literal>", i1 false, i1 false}
!531 = !{!"../sound/usb/caiaq/control.c", i32 484, i32 4}
!532 = !{ptr @.str.258, !533, !"<string literal>", i1 false, i1 false}
!533 = !{!"../sound/usb/caiaq/control.c", i32 485, i32 4}
!534 = !{ptr @.str.259, !535, !"<string literal>", i1 false, i1 false}
!535 = !{!"../sound/usb/caiaq/control.c", i32 486, i32 4}
!536 = !{ptr @.str.260, !537, !"<string literal>", i1 false, i1 false}
!537 = !{!"../sound/usb/caiaq/control.c", i32 487, i32 4}
!538 = !{ptr @.str.261, !539, !"<string literal>", i1 false, i1 false}
!539 = !{!"../sound/usb/caiaq/control.c", i32 488, i32 4}
!540 = !{ptr @.str.262, !541, !"<string literal>", i1 false, i1 false}
!541 = !{!"../sound/usb/caiaq/control.c", i32 489, i32 4}
!542 = !{ptr @.str.263, !543, !"<string literal>", i1 false, i1 false}
!543 = !{!"../sound/usb/caiaq/control.c", i32 491, i32 4}
!544 = !{ptr @.str.264, !545, !"<string literal>", i1 false, i1 false}
!545 = !{!"../sound/usb/caiaq/control.c", i32 492, i32 4}
!546 = !{ptr @.str.265, !547, !"<string literal>", i1 false, i1 false}
!547 = !{!"../sound/usb/caiaq/control.c", i32 493, i32 4}
!548 = !{ptr @.str.266, !549, !"<string literal>", i1 false, i1 false}
!549 = !{!"../sound/usb/caiaq/control.c", i32 494, i32 4}
!550 = !{ptr @.str.267, !551, !"<string literal>", i1 false, i1 false}
!551 = !{!"../sound/usb/caiaq/control.c", i32 495, i32 4}
!552 = !{ptr @.str.268, !553, !"<string literal>", i1 false, i1 false}
!553 = !{!"../sound/usb/caiaq/control.c", i32 496, i32 4}
!554 = !{ptr @.str.269, !555, !"<string literal>", i1 false, i1 false}
!555 = !{!"../sound/usb/caiaq/control.c", i32 497, i32 4}
!556 = !{ptr @.str.270, !557, !"<string literal>", i1 false, i1 false}
!557 = !{!"../sound/usb/caiaq/control.c", i32 498, i32 4}
!558 = !{ptr @.str.271, !559, !"<string literal>", i1 false, i1 false}
!559 = !{!"../sound/usb/caiaq/control.c", i32 499, i32 4}
!560 = !{ptr @.str.272, !561, !"<string literal>", i1 false, i1 false}
!561 = !{!"../sound/usb/caiaq/control.c", i32 500, i32 4}
!562 = !{ptr @kontrols4_controller, !563, !"kontrols4_controller", i1 false, i1 false}
!563 = !{!"../sound/usb/caiaq/control.c", i32 330, i32 38}
!564 = !{ptr @.str.273, !565, !"<string literal>", i1 false, i1 false}
!565 = !{!"../sound/usb/caiaq/control.c", i32 504, i32 4}
!566 = !{ptr @.str.274, !567, !"<string literal>", i1 false, i1 false}
!567 = !{!"../sound/usb/caiaq/control.c", i32 505, i32 4}
!568 = !{ptr @.str.275, !569, !"<string literal>", i1 false, i1 false}
!569 = !{!"../sound/usb/caiaq/control.c", i32 506, i32 4}
!570 = !{ptr @.str.276, !571, !"<string literal>", i1 false, i1 false}
!571 = !{!"../sound/usb/caiaq/control.c", i32 507, i32 4}
!572 = !{ptr @.str.277, !573, !"<string literal>", i1 false, i1 false}
!573 = !{!"../sound/usb/caiaq/control.c", i32 508, i32 4}
!574 = !{ptr @.str.278, !575, !"<string literal>", i1 false, i1 false}
!575 = !{!"../sound/usb/caiaq/control.c", i32 509, i32 4}
!576 = !{ptr @.str.279, !577, !"<string literal>", i1 false, i1 false}
!577 = !{!"../sound/usb/caiaq/control.c", i32 510, i32 4}
!578 = !{ptr @.str.280, !579, !"<string literal>", i1 false, i1 false}
!579 = !{!"../sound/usb/caiaq/control.c", i32 511, i32 4}
!580 = !{ptr @.str.281, !581, !"<string literal>", i1 false, i1 false}
!581 = !{!"../sound/usb/caiaq/control.c", i32 512, i32 4}
!582 = !{ptr @.str.282, !583, !"<string literal>", i1 false, i1 false}
!583 = !{!"../sound/usb/caiaq/control.c", i32 513, i32 4}
!584 = !{ptr @.str.283, !585, !"<string literal>", i1 false, i1 false}
!585 = !{!"../sound/usb/caiaq/control.c", i32 514, i32 4}
!586 = !{ptr @.str.284, !587, !"<string literal>", i1 false, i1 false}
!587 = !{!"../sound/usb/caiaq/control.c", i32 515, i32 4}
!588 = !{ptr @.str.285, !589, !"<string literal>", i1 false, i1 false}
!589 = !{!"../sound/usb/caiaq/control.c", i32 516, i32 4}
!590 = !{ptr @.str.286, !591, !"<string literal>", i1 false, i1 false}
!591 = !{!"../sound/usb/caiaq/control.c", i32 517, i32 4}
!592 = !{ptr @.str.287, !593, !"<string literal>", i1 false, i1 false}
!593 = !{!"../sound/usb/caiaq/control.c", i32 518, i32 4}
!594 = !{ptr @.str.288, !595, !"<string literal>", i1 false, i1 false}
!595 = !{!"../sound/usb/caiaq/control.c", i32 519, i32 4}
!596 = !{ptr @.str.289, !597, !"<string literal>", i1 false, i1 false}
!597 = !{!"../sound/usb/caiaq/control.c", i32 521, i32 4}
!598 = !{ptr @.str.290, !599, !"<string literal>", i1 false, i1 false}
!599 = !{!"../sound/usb/caiaq/control.c", i32 522, i32 4}
!600 = !{ptr @.str.291, !601, !"<string literal>", i1 false, i1 false}
!601 = !{!"../sound/usb/caiaq/control.c", i32 523, i32 4}
!602 = !{ptr @.str.292, !603, !"<string literal>", i1 false, i1 false}
!603 = !{!"../sound/usb/caiaq/control.c", i32 524, i32 4}
!604 = !{ptr @.str.293, !605, !"<string literal>", i1 false, i1 false}
!605 = !{!"../sound/usb/caiaq/control.c", i32 525, i32 4}
!606 = !{ptr @.str.294, !607, !"<string literal>", i1 false, i1 false}
!607 = !{!"../sound/usb/caiaq/control.c", i32 526, i32 4}
!608 = !{ptr @.str.295, !609, !"<string literal>", i1 false, i1 false}
!609 = !{!"../sound/usb/caiaq/control.c", i32 527, i32 4}
!610 = !{ptr @.str.296, !611, !"<string literal>", i1 false, i1 false}
!611 = !{!"../sound/usb/caiaq/control.c", i32 528, i32 4}
!612 = !{ptr @.str.297, !613, !"<string literal>", i1 false, i1 false}
!613 = !{!"../sound/usb/caiaq/control.c", i32 530, i32 4}
!614 = !{ptr @.str.298, !615, !"<string literal>", i1 false, i1 false}
!615 = !{!"../sound/usb/caiaq/control.c", i32 531, i32 4}
!616 = !{ptr @.str.299, !617, !"<string literal>", i1 false, i1 false}
!617 = !{!"../sound/usb/caiaq/control.c", i32 532, i32 4}
!618 = !{ptr @.str.300, !619, !"<string literal>", i1 false, i1 false}
!619 = !{!"../sound/usb/caiaq/control.c", i32 533, i32 4}
!620 = !{ptr @.str.301, !621, !"<string literal>", i1 false, i1 false}
!621 = !{!"../sound/usb/caiaq/control.c", i32 534, i32 4}
!622 = !{ptr @.str.302, !623, !"<string literal>", i1 false, i1 false}
!623 = !{!"../sound/usb/caiaq/control.c", i32 535, i32 4}
!624 = !{ptr @.str.303, !625, !"<string literal>", i1 false, i1 false}
!625 = !{!"../sound/usb/caiaq/control.c", i32 536, i32 4}
!626 = !{ptr @.str.304, !627, !"<string literal>", i1 false, i1 false}
!627 = !{!"../sound/usb/caiaq/control.c", i32 537, i32 4}
!628 = !{ptr @.str.305, !629, !"<string literal>", i1 false, i1 false}
!629 = !{!"../sound/usb/caiaq/control.c", i32 539, i32 4}
!630 = !{ptr @.str.306, !631, !"<string literal>", i1 false, i1 false}
!631 = !{!"../sound/usb/caiaq/control.c", i32 540, i32 4}
!632 = !{ptr @.str.307, !633, !"<string literal>", i1 false, i1 false}
!633 = !{!"../sound/usb/caiaq/control.c", i32 541, i32 4}
!634 = !{ptr @.str.308, !635, !"<string literal>", i1 false, i1 false}
!635 = !{!"../sound/usb/caiaq/control.c", i32 542, i32 4}
!636 = !{ptr @.str.309, !637, !"<string literal>", i1 false, i1 false}
!637 = !{!"../sound/usb/caiaq/control.c", i32 543, i32 4}
!638 = !{ptr @.str.310, !639, !"<string literal>", i1 false, i1 false}
!639 = !{!"../sound/usb/caiaq/control.c", i32 544, i32 4}
!640 = !{ptr @.str.311, !641, !"<string literal>", i1 false, i1 false}
!641 = !{!"../sound/usb/caiaq/control.c", i32 545, i32 4}
!642 = !{ptr @.str.312, !643, !"<string literal>", i1 false, i1 false}
!643 = !{!"../sound/usb/caiaq/control.c", i32 546, i32 4}
!644 = !{ptr @.str.313, !645, !"<string literal>", i1 false, i1 false}
!645 = !{!"../sound/usb/caiaq/control.c", i32 548, i32 4}
!646 = !{ptr @.str.314, !647, !"<string literal>", i1 false, i1 false}
!647 = !{!"../sound/usb/caiaq/control.c", i32 549, i32 4}
!648 = !{ptr @.str.315, !649, !"<string literal>", i1 false, i1 false}
!649 = !{!"../sound/usb/caiaq/control.c", i32 550, i32 4}
!650 = !{ptr @.str.316, !651, !"<string literal>", i1 false, i1 false}
!651 = !{!"../sound/usb/caiaq/control.c", i32 551, i32 4}
!652 = !{ptr @.str.317, !653, !"<string literal>", i1 false, i1 false}
!653 = !{!"../sound/usb/caiaq/control.c", i32 552, i32 4}
!654 = !{ptr @.str.318, !655, !"<string literal>", i1 false, i1 false}
!655 = !{!"../sound/usb/caiaq/control.c", i32 553, i32 4}
!656 = !{ptr @.str.319, !657, !"<string literal>", i1 false, i1 false}
!657 = !{!"../sound/usb/caiaq/control.c", i32 554, i32 4}
!658 = !{ptr @.str.320, !659, !"<string literal>", i1 false, i1 false}
!659 = !{!"../sound/usb/caiaq/control.c", i32 555, i32 4}
!660 = !{ptr @.str.321, !661, !"<string literal>", i1 false, i1 false}
!661 = !{!"../sound/usb/caiaq/control.c", i32 557, i32 4}
!662 = !{ptr @.str.322, !663, !"<string literal>", i1 false, i1 false}
!663 = !{!"../sound/usb/caiaq/control.c", i32 558, i32 4}
!664 = !{ptr @.str.323, !665, !"<string literal>", i1 false, i1 false}
!665 = !{!"../sound/usb/caiaq/control.c", i32 559, i32 4}
!666 = !{ptr @.str.324, !667, !"<string literal>", i1 false, i1 false}
!667 = !{!"../sound/usb/caiaq/control.c", i32 560, i32 4}
!668 = !{ptr @.str.325, !669, !"<string literal>", i1 false, i1 false}
!669 = !{!"../sound/usb/caiaq/control.c", i32 561, i32 4}
!670 = !{ptr @.str.326, !671, !"<string literal>", i1 false, i1 false}
!671 = !{!"../sound/usb/caiaq/control.c", i32 562, i32 4}
!672 = !{ptr @.str.327, !673, !"<string literal>", i1 false, i1 false}
!673 = !{!"../sound/usb/caiaq/control.c", i32 563, i32 4}
!674 = !{ptr @.str.328, !675, !"<string literal>", i1 false, i1 false}
!675 = !{!"../sound/usb/caiaq/control.c", i32 564, i32 4}
!676 = !{ptr @.str.329, !677, !"<string literal>", i1 false, i1 false}
!677 = !{!"../sound/usb/caiaq/control.c", i32 566, i32 4}
!678 = !{ptr @.str.330, !679, !"<string literal>", i1 false, i1 false}
!679 = !{!"../sound/usb/caiaq/control.c", i32 568, i32 4}
!680 = !{ptr @maschine_controller, !681, !"maschine_controller", i1 false, i1 false}
!681 = !{!"../sound/usb/caiaq/control.c", i32 503, i32 38}
!682 = !{i32 1, !"wchar_size", i32 2}
!683 = !{i32 1, !"min_enum_size", i32 4}
!684 = !{i32 8, !"branch-target-enforcement", i32 0}
!685 = !{i32 8, !"sign-return-address", i32 0}
!686 = !{i32 8, !"sign-return-address-all", i32 0}
!687 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!688 = !{i32 7, !"uwtable", i32 1}
!689 = !{i32 7, !"frame-pointer", i32 2}
!690 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!691 = !{!"auto-init"}
